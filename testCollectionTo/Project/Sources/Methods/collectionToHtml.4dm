//%attributes = {}
  // PM: "collectionToHtml"

C_COLLECTION:C1488($col;$1)
C_TEXT:C284($nameInfo;$2)
C_TEXT:C284($timeInfo;$3)

C_LONGINT:C283($i)
C_TIME:C306($docRef)
C_TEXT:C284($srcTxt)
C_TEXT:C284($srcTxtStart;$srcTxtEnd)
C_COLLECTION:C1488($colHeadRow;$colBodyRow;$colKeys;$colKeysHead)
C_TEXT:C284($headRowTxt;$bodyRowsTxt;$rowPrefix;$rowSuffix;$cellPrefix;$cellSuffix;$cellSeparator;$rowSeparator)

If (Count parameters:C259>0)
	$col:=$1.copy()
Else   // ok, than use any test data
	$col:=New collection:C1472
	If (True:C214)
		For ($i;1;1000)
			$col.push(New object:C1471("column1";$col.length+1;"column2";String:C10(Random:C100);"column3";String:C10(Random:C100);"column4";String:C10(Random:C100);"column5";String:C10(Random:C100)))
		End for 
	Else 
		For ($i;1;1000)
			$col.push($i)
		End for 
	End if 
End if 

If (Count parameters:C259>1)
	$nameInfo:=$2
Else   // ok, than use any test name
	$nameInfo:="myCollectionA"
End if 

If (Count parameters:C259>2)  // $3 or automatic standard timeInfo
	$timeInfo:=$3
End if 
$timeInfo:=yGetTimeline ($timeInfo)

$srcTxtStart:=""
$srcTxtStart:=$srcTxtStart+"<!DOCTYPE html>"
$srcTxtStart:=$srcTxtStart+"<html>"
$srcTxtStart:=$srcTxtStart+"<head>"
$srcTxtStart:=$srcTxtStart+"<meta charset=\"UTF-8\">"
$srcTxtStart:=$srcTxtStart+"<title>Collection: "+$nameInfo+"</title>"
$srcTxtStart:=$srcTxtStart+"<style type=\"text/css\">"
$srcTxtStart:=$srcTxtStart+"html,body,table {width: auto !important; margin: 0; padding: 0; color: #000; font-family: Tahoma, Verdana, Helvetica, Arial, sans-serif; font-size: 12px;}"
$srcTxtStart:=$srcTxtStart+"body.collectionToHTML {background-color: #f6f6f6;}"
$srcTxtStart:=$srcTxtStart+"body.collectionToHTML > .header {position: fixed; width: 100%; box-shadow: 1px 0px 5px rgb(0, 0, 20); top: 0; left: 0; border: 0px; background: rgba(0, 0, 139, 0.7); color: white; padding: 10px; font-size: 16px; font-weight: bold;}"
$srcTxtStart:=$srcTxtStart+"body.collectionToHTML > .header .timeLine {font-size: 10px; color: lightgrey;}"
$srcTxtStart:=$srcTxtStart+"body.collectionToHTML > .content {width: auto !important; overflow: overlay; padding: 10px; margin-top: 60px;}"
$srcTxtStart:=$srcTxtStart+".collectionHeadLine > th {background-color: rgb(51, 151, 129); color: white; font-weight: bold;}"
$srcTxtStart:=$srcTxtStart+".collectionLine {background-color: #dfdfdf;}"
$srcTxtStart:=$srcTxtStart+".collectionLine:nth-child(even){background-color: #f2f2f2}"
$srcTxtStart:=$srcTxtStart+".collectionTable > tbody > tr > th {padding-top: 8px; padding-right: 8px; padding-bottom: 8px; padding-left: 8px;}"
$srcTxtStart:=$srcTxtStart+".collectionTable > tbody > tr > td {padding-top: 8px; padding-right: 8px; padding-bottom: 8px; padding-left: 8px;}"
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

C_COLLECTION:C1488($colReplace)
$colReplace:=New collection:C1472
$colReplace.push(New object:C1471("from";"&";"to";"&amp;"))  // "&" must be first one in collection !!!
$colReplace.push(New object:C1471("from";"<";"to";"&lt;"))
$colReplace.push(New object:C1471("from";">";"to";"&gt;"))
$colReplace.push(New object:C1471("from";"\"";"to";"&quot;"))
$colReplace.push(New object:C1471("from";" ";"to";"&nbsp;"))
$colReplace.push(New object:C1471("from";"\t";"to";"&nbsp;"))
$colReplace.push(New object:C1471("from";"\r\n";"to";"<br>"))
$colReplace.push(New object:C1471("from";"\r";"to";"<br>"))
$colReplace.push(New object:C1471("from";"\n";"to";"<br>"))

$headRowTxt:=""
$colKeysHead:=yColKeysCollectionTo (Form:C1466.colKeys;True:C214)  // Get active items titles
If ($colKeysHead.length>0)
	$rowPrefix:="<tr class=\"collectionHeadLine\">"
	$rowSuffix:="</tr>"
	$cellPrefix:="<th>"
	$cellSuffix:="</th>"
	$cellSeparator:=""
	$rowSeparator:=""
	$headRowTxt:=$rowPrefix+$cellPrefix+$colKeysHead.join($cellSuffix+$cellSeparator+$cellPrefix)+$cellSuffix+$rowSuffix+$rowSeparator
End if 

$bodyRowsTxt:=""
$colKeys:=yColKeysCollectionTo (Form:C1466.colKeys;False:C215)  // Get active items keys
$rowPrefix:="<tr class=\"collectionLine\">"
$rowSuffix:="</tr>"
$cellPrefix:="<td>"
$cellSuffix:="</td>"
$cellSeparator:=""
$rowSeparator:=""
If ($colKeys.length>0)
	$colBodyRow:=$col.map("colMapJoin";$rowPrefix;$rowSuffix;$cellPrefix;$cellSuffix;$cellSeparator;$colReplace;$colKeys)
Else 
	$colBodyRow:=$col.map("colMapJoin";$rowPrefix;$rowSuffix;$cellPrefix;$cellSuffix;$cellSeparator;$colReplace)
End if 
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