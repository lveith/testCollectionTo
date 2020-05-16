//%attributes = {}
  // PM: "colMapJoin"
  // colResult:=col.map("colMapJoin";rowPrefix;rowSuffix;cellPrefix;cellSuffix;cellSeparator;colReplace;colKeys)
  // Debug-Note: To do stop col.map() loop set $1.stop:=True

C_OBJECT:C1216($1)  // col-item itself
C_TEXT:C284($2)  // rowPrefix
C_TEXT:C284($3)  // rowSuffix
C_TEXT:C284($4)  // cellPrefix
C_TEXT:C284($5)  // cellSuffix
C_TEXT:C284($6)  // cellSeparator
C_COLLECTION:C1488($7)  // collection of txtFragments to replace [{"from","<","to","&lt;"},{"from",">","to","&gt;"}] 
C_COLLECTION:C1488($8)  // collection of roperty names (keys)
C_LONGINT:C283($i;$length)
C_OBJECT:C1216($obj)
C_TEXT:C284($txt)
C_BOOLEAN:C305($doReplace)

Case of 
	: (Count parameters:C259<7)
		$doReplace:=False:C215
	: ($7.length<1)
		$doReplace:=False:C215
	Else 
		$doReplace:=True:C214
End case 

$1.result:=$2

If (Count parameters:C259>7)
	$length:=$8.length-1
	For ($i;0;$length)
		$txt:=String:C10($1.value[$8[$i]])
		If ($doReplace)
			For each ($obj;$7)
				$txt:=Replace string:C233($txt;$obj.from;$obj.to)
			End for each 
		End if 
		If ($i<$length)
			$1.result:=$1.result+$4+$txt+$5+$6
		Else 
			$1.result:=$1.result+$4+$txt+$5
		End if 
	End for 
	
Else 
	$txt:=String:C10($1.value)
	If ($doReplace)
		For each ($obj;$7)
			$txt:=Replace string:C233($txt;$obj.from;$obj.to)
		End for each 
	End if 
	$1.result:=$1.result+$4+$txt+$5+$6
	
End if 

$1.result:=$1.result+$3

  // - EOF -