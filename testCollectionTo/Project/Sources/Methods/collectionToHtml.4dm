//%attributes = {}
  // PM: "collectionToHtml"

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
		$col.push(New object:C1471("column1";Random:C100;"column2";Random:C100;"column3";Random:C100;"column4";Random:C100;"column5";Random:C100))
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
$srcTxtStart:=$srcTxtStart+"<!DOCTYPE html>"
$srcTxtStart:=$srcTxtStart+"<html>"
$srcTxtStart:=$srcTxtStart+"<head>"
$srcTxtStart:=$srcTxtStart+"<meta charset=\"UTF-8\">"
$srcTxtStart:=$srcTxtStart+"<title>Collection: "+$nameInfo+"</title>"
$srcTxtStart:=$srcTxtStart+"<style type=\"text/css\">"
$srcTxtStart:=$srcTxtStart+"body,table {margin: 0;padding: 0;color: #000;font-family: Tahoma, Verdana, Helvetica, Arial, sans-serif;font-size: 12px;}"
$srcTxtStart:=$srcTxtStart+"body.collectionToHTML {background-color: #f6f6f6;}"
$srcTxtStart:=$srcTxtStart+"body.collectionToHTML > .header {width: auto;border: 0px;background: darkblue;color: white;padding: 10px;font-size: 16px;font-weight: bold;}"
$srcTxtStart:=$srcTxtStart+"body.collectionToHTML > .header .timeLine {font-size: 10px;color: lightgrey;}"
$srcTxtStart:=$srcTxtStart+"body.collectionToHTML > .content {padding: 10px;}"
$srcTxtStart:=$srcTxtStart+".collectionHeadLine > th {background-color: lightgrey;font-weight: bold;}"
$srcTxtStart:=$srcTxtStart+".collectionLine {background-color: #dfdfdf;}"
$srcTxtStart:=$srcTxtStart+".collectionTable > tbody > tr > td,.collectionTable > tbody > tr > th {padding-top: 1px;padding-right: 6px;padding-bottom: 1px;padding-left: 6px;}"
$srcTxtStart:=$srcTxtStart+"</style>"
$srcTxtStart:=$srcTxtStart+"</head>"
$srcTxtStart:=$srcTxtStart+"<body class=\"collectionToHTML\">"
$srcTxtStart:=$srcTxtStart+"<div class=\"header\">Collection: "+$nameInfo+"<br><i class=\"timeLine\">"+$timeInfo+"</i><br></div>"
$srcTxtStart:=$srcTxtStart+"<div class=\"content\">"
$srcTxtStart:=$srcTxtStart+"<table class=\"collectionTable\">"
$srcTxtStart:=$srcTxtStart+"<tbody>"

$srcTxtEnd:=""
$srcTxtEnd:=$srcTxtEnd+"</tbody>"
$srcTxtEnd:=$srcTxtEnd+"</table>"
$srcTxtEnd:=$srcTxtEnd+"</div>"
$srcTxtEnd:=$srcTxtEnd+"</body>"
$srcTxtEnd:=$srcTxtEnd+"</html>"

$txtResult:=""

If ($col.length>0)
	If (Value type:C1509($col[0])=Is object:K8:27)
		$colKeys:=OB Keys:C1719($col[0])
	Else 
	End if 
Else 
	$colKeys:=New collection:C1472
End if 
$rowPrefix:="<tr class=\"collectionHeadLine\">"
$rowSuffix:="</tr>"
$cellPrefix:="<th>"
$cellSuffix:="</th>"
$cellSeparator:=""
$rowSeparator:=""
$headRowTxt:=$rowPrefix+$cellPrefix+$colKeys.join($cellSuffix+$cellPrefix)+$cellSuffix+$rowSuffix+$rowSeparator

$rowPrefix:="<tr class=\"collectionLine\">"
$rowSuffix:="</tr>"
$cellPrefix:="<td>"
$cellSuffix:="</td>"
$cellSeparator:=""
$rowSeparator:=""
$colBodyRow:=$col.map("colMapJoin";$rowPrefix;$rowSuffix;$cellPrefix;$cellSuffix;$cellSeparator;$colKeys)
$bodyRowsTxt:=$colBodyRow.join($rowSeparator)

$srcTxt:=$srcTxtStart+$headRowTxt+$bodyRowsTxt+$srcTxtEnd

ON ERR CALL:C155("onErrDocument")
$docRef:=Create document:C266($nameInfo+".html")
If (OK=1)  // If document has been created successfully
	CLOSE DOCUMENT:C267($docRef)
	TEXT TO DOCUMENT:C1237(Document;$srcTxt)
	OPEN URL:C673(Document)
Else 
	ALERT:C41("Error: Any problem by Create document!")
End if 

  // - EOF -