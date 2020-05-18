//%attributes = {}
  // PM: "yGetTimeline"

C_TEXT:C284($txtResult;$0)
C_TEXT:C284($timeInfo;$1)

$txtResult:=""

If (Count parameters:C259>0)
	$timeInfo:=$1
Else 
	$timeInfo:=""
End if 

If ($timeInfo="")
	$timeInfo:=String:C10(Current date:C33;System date long:K1:3)+" "+Lowercase:C14(String:C10(Current time:C178;HH MM AM PM:K7:5))
End if 

Case of 
	: ((Form:C1466.beforeTimeline=Null:C1517) | (Form:C1466.afterTimeline=Null:C1517))
		$txtResult:=$timeInfo
		
	: ((Form:C1466.beforeTimeline#"") & (Form:C1466.afterTimeline#""))
		$txtResult:=Form:C1466.beforeTimeline+" "+$timeInfo+" "+Form:C1466.afterTimeline
		
	: (Form:C1466.beforeTimeline#"")
		$txtResult:=Form:C1466.beforeTimeline+" "+$timeInfo
		
	: (Form:C1466.afterTimeline#"")
		$txtResult:=$timeInfo+" "+Form:C1466.afterTimeline
		
	Else 
		$txtResult:=$timeInfo
		
End case 

$0:=$txtResult

  // - EOF -