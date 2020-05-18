//%attributes = {}
  // PM: "yColKeysCollectionTo"

C_COLLECTION:C1488($resultCol;$0)
C_COLLECTION:C1488($1)  // [{"active", True, "sort", 1, "title", "No.", "key", "column1"}, {"active", False, "sort", 2, "title", "---", "key", "column2"}]
C_BOOLEAN:C305($isGetTitles;$2)  // True=ReturnsTitles | False=ReturnsKeys

If (Count parameters:C259>0)
	
	If (Count parameters:C259>1)
		$isGetTitles:=$2
	Else 
		$isGetTitles:=False:C215
	End if 
	
	$resultCol:=$1.query("active = true AND key # ''")
	$resultCol:=$resultCol.orderBy("sort asc")
	
	If ($isGetTitles)
		$resultCol:=$resultCol.extract("title")
	Else 
		$resultCol:=$resultCol.extract("key")
	End if 
	
Else 
	$resultCol:=New collection:C1472
	
End if 


$0:=$resultCol

  // - EOF -