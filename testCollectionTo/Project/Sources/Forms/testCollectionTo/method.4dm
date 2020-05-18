  // FM: "testCollectionTo"

Case of 
	: (Form event code:C388=On Load:K2:1)
		
		  // ...fill any test-data in Listbox
		Form:C1466.myListbox:=yNewRandomCollection (1000;New collection:C1472("column1";"column2";"column3";"column4";"column5";"column6";"column7";"column8";"column9");"column1")
		
		Form:C1466.rowsToCreate:=1000
		Form:C1466.listname:="Random list"
		Form:C1466.beforeTimeline:=""
		Form:C1466.afterTimeline:=""
		
		Form:C1466.colKeys:=New collection:C1472
		
		C_COLLECTION:C1488($colKeys)
		C_TEXT:C284($colKeysItem)
		$colKeys:=New collection:C1472
		If (Form:C1466.myListbox.length>0)
			If (Value type:C1509(Form:C1466.myListbox[0])=Is object:K8:27)
				$colKeys:=OB Keys:C1719(Form:C1466.myListbox[0])
				For each ($colKeysItem;$colKeys)
					Form:C1466.colKeys.push(New object:C1471("active";True:C214;"key";$colKeysItem;"sort";Form:C1466.colKeys.length+1;"title";OBJECT Get title:C1068(*;"oColumnHead"+$colKeysItem[[Length:C16($colKeysItem)]])))
				End for each 
			End if 
		End if 
		
		
	: (Form event code:C388=On Data Change:K2:15)
		
	: (Form event code:C388=On Clicked:K2:4)
		
End case 

  // - EOF -