//%attributes = {}
  // PM: "collectionToMd"

C_COLLECTION:C1488($col;$1)
C_TEXT:C284($nameInfo;$2)
C_TEXT:C284($timeInfo;$3)

C_LONGINT:C283($i)
C_TIME:C306($docRef)
C_TEXT:C284($srcTxt)
C_TEXT:C284($srcTxtStart;$srcTxtEnd)
C_COLLECTION:C1488($colHeadRow;$colBodyRow;$colKeys)
C_TEXT:C284($headRowTxt;$bodyRowsTxt;$rowPrefix;$rowSuffix;$cellPrefix;$cellSuffix;$cellSeparator;$rowSeparator)

If (Count parameters:C259>0)
	$col:=$1.copy()
Else   // ok, than use any test data
	$col:=New collection:C1472
	For ($i;1;1000)
		$col.push(New object:C1471("column1";$col.length+1;"column2";String:C10(Random:C100);"column3";String:C10(Random:C100);"column4";String:C10(Random:C100);"column5";String:C10(Random:C100)))
	End for 
End if 

If (Count parameters:C259>1)
	$nameInfo:=$2
Else   // ok, than use any test name
	$nameInfo:="myCollectionA"
End if 

If (Count parameters:C259>2)  // $3 or automatic standard timeInfo
	$timeInfo:=$3
Else 
	$timeInfo:=String:C10(Current date:C33;System date long:K1:3)+" "+Lowercase:C14(String:C10(Current time:C178;HH MM AM PM:K7:5))
End if 

$srcTxtStart:=""
$srcTxtStart:=$srcTxtStart+Char:C90(Line feed:K15:40)
$srcTxtStart:=$srcTxtStart+"# "+$nameInfo+Char:C90(Line feed:K15:40)
$srcTxtStart:=$srcTxtStart+"*"+$timeInfo+"*"+Char:C90(Line feed:K15:40)
$srcTxtStart:=$srcTxtStart+Char:C90(Line feed:K15:40)

$srcTxtEnd:=""

$txtResult:=""

C_COLLECTION:C1488($colReplace)
$colReplace:=New collection:C1472
$colReplace.push(New object:C1471("from";"&";"to";"&amp;"))  // "&" must be first one in collection !!!
$colReplace.push(New object:C1471("from";"<";"to";"&lt;"))
$colReplace.push(New object:C1471("from";">";"to";"&gt;"))
$colReplace.push(New object:C1471("from";"#";"to";" "))
$colReplace.push(New object:C1471("from";"*";"to";" "))
$colReplace.push(New object:C1471("from";"|";"to";"/"))
$colReplace.push(New object:C1471("from";"\r\n";"to";"<br>"))
$colReplace.push(New object:C1471("from";"\r";"to";"<br>"))
$colReplace.push(New object:C1471("from";"\n";"to";"<br>"))

If ($col.length>0)
	If (Value type:C1509($col[0])=Is object:K8:27)
		$colKeys:=OB Keys:C1719($col[0])
	Else 
	End if 
Else 
	$colKeys:=New collection:C1472
End if 
$rowPrefix:=""
$rowSuffix:="|"
$cellPrefix:="| "
$cellSuffix:=" "
$cellSeparator:=""
$rowSeparator:=Char:C90(Line feed:K15:40)
$headRowTxt:=$rowPrefix+$cellPrefix+$colKeys.join($cellSuffix+$cellSeparator+$cellPrefix)+$cellSuffix+$rowSuffix+$rowSeparator+("| :---: "*$colKeys.length)+"|"+$rowSeparator

$rowPrefix:=""
$rowSuffix:="|"
$cellPrefix:="| "
$cellSuffix:=" "
$cellSeparator:=""
$rowSeparator:=Char:C90(Line feed:K15:40)
$colBodyRow:=$col.map("colMapJoin";$rowPrefix;$rowSuffix;$cellPrefix;$cellSuffix;$cellSeparator;$colReplace;$colKeys)
$bodyRowsTxt:=$colBodyRow.join($rowSeparator)

$srcTxt:=$srcTxtStart+$headRowTxt+$bodyRowsTxt+$srcTxtEnd

ON ERR CALL:C155("onErrDocument")
$docRef:=Create document:C266($nameInfo+".md")
If (OK=1)  // If document has been created successfully
	CLOSE DOCUMENT:C267($docRef)
	TEXT TO DOCUMENT:C1237(Document;$srcTxt;"UTF-8";Document with LF:K24:22)
	OPEN URL:C673(Document)
Else 
	ALERT:C41("Error: Any problem by Create document!")
End if 

  // - EOF -