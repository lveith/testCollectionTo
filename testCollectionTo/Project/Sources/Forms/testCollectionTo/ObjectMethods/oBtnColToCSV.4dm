  // OM: "testCollectionTo".oBtnColToCSV

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		C_TEXT:C284($listName)
		$listName:="myTestListbox"
		$listName:=Request:C163("Please enter list name:";$listName)
		If (Replace string:C233(Replace string:C233($listName;Char:C90(Space:K15:42);"");Char:C90(Tab:K15:37);"")="")
			$listName:="myTestListbox"
		End if 
		collectionToCSV (Form:C1466.myListbox;$listName)
		
End case 

  // - EOF -
