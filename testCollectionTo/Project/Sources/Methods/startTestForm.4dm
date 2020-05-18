//%attributes = {}
  // PM: "startTestForm"
  // $1 - C_TEXT - calledBy methodName (only for internal use)
  // StartMethode using (selfLauched new Process)

C_TEXT:C284($calledBy;$1)
C_LONGINT:C283($winRef)
C_LONGINT:C283($processId)

If (Count parameters:C259>0)
	$calledBy:=$1
Else 
	$calledBy:=""
End if 

If ($calledBy#Current method name:C684)  // isSelfLauched
	  // Start the process (if it does not exist) or bring it to the front (if it is already running)
	$processId:=New process:C317(Current method name:C684;0;"testCollectionTo";Current method name:C684;*)
	If ($processId#0)
		SHOW PROCESS:C325($processId)
		BRING TO FRONT:C326($processId)
	End if 
	
Else 
	$winRef:=Open form window:C675("testCollectionTo")
	
	$info4D:=yGet4DVersionShortname 
	If (Version type:C495 ?? 64 bit version:K5:25)
		$info4D:=$info4D+"(64bit)"
	Else 
		$info4D:=$info4D+"(32bit)"
	End if 
	If (Is compiled mode:C492)
		$info4D:=$info4D+" compiled"
	Else 
		$info4D:=$info4D+" interpreted"
	End if 
	
	SET WINDOW TITLE:C213("test CollectionTo | "+$info4D)
	DIALOG:C40("testCollectionTo")
	CLOSE WINDOW:C154($winRef)
End if 

  // - EOF -