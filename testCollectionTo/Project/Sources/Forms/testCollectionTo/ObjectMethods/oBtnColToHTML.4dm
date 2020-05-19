  // OM: "testCollectionTo".oBtnColToHTML

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		C_COLLECTION:C1488($colToAttr)
		C_OBJECT:C1216($item)
		$colToAttr:=yColToAttrCreate (Form:C1466.myListbox)
		For each ($item;$colToAttr)
			Case of 
				: ($item.key="column1")
					$item.title:="No."
			End case 
		End for each 
		
		collectionToHtml (Form:C1466.myListbox;Form:C1466.listname;"";$colToAttr)
		
End case 

  // - EOF -