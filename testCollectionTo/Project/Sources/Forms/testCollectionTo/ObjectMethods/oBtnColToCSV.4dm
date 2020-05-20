  // OM: "testCollectionTo".oBtnColToCSV (new LV 19.05.20, 11:12:00)
  // Last change: LV 20.05.20, 15:14:16

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		If (True:C214)
			
			C_COLLECTION:C1488($colToAttr)
			C_OBJECT:C1216($itemColumn)
			
			If (False:C215)  // create a new default colKeysAttr
				$colToAttr:=yColToAttrCreate (Form:C1466.myListbox)
			Else   // else use colKeysAttr definitions from a formVar
				$colToAttr:=Form:C1466.colKeys
			End if 
			
			If (True:C214)  // only a example for change default attributes like title, sort (or hide column with active=False)
				For each ($itemColumn;$colToAttr)
					Case of 
						: ($itemColumn.key="column1")
							$itemColumn.title:="No."  // change default title to individual title
					End case 
				End for each 
			End if 
			
			collectionTo (Form:C1466.myListbox;".csv";Form:C1466.listname;"";Form:C1466.beforeTimeline;Form:C1466.afterTimeline;$colToAttr)
			
		Else 
			collectionToCsv (Form:C1466.myListbox;Form:C1466.listname)
		End if 
		
End case 

  // - EOF -