//%attributes = {}
  // PM: "colMapJoin"
  // colResult:=col.map("colMapJoin";rowPrefix;rowSuffix;cellPrefix;cellSuffix;cellSeparator;colKeys)

C_OBJECT:C1216($1)  // col-item itself
C_TEXT:C284($2)  // rowPrefix
C_TEXT:C284($3)  // rowSuffix
C_TEXT:C284($4)  // cellPrefix
C_TEXT:C284($5)  // cellSuffix
C_TEXT:C284($6)  // cellSeparator
C_COLLECTION:C1488($7)  // collection of roperty names (keys)
C_LONGINT:C283($i;$length)

$1.result:=$2

If (Count parameters:C259>6)
	$length:=$7.length-1
	For ($i;0;$length)
		If ($i<$length)
			$1.result:=$1.result+$4+String:C10($1.value[$7[$i]])+$5+$6
		Else 
			$1.result:=$1.result+$4+String:C10($1.value[$7[$i]])+$5
		End if 
	End for 
	
Else 
	$1.result:=$1.result+$4+String:C10($1.value)+$5+$6
	
End if 

$1.result:=$1.result+$3

  // - EOF -