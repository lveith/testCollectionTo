  // FM: "testCollectionTo"

C_LONGINT:C283($i)

Case of 
	: (Form event code:C388=On Load:K2:1)
		
		  // ...fill any test-data in Listbox
		Form:C1466.myListbox:=New collection:C1472
		For ($i;1;1000)
			Form:C1466.myListbox.push(New object:C1471("column1";Form:C1466.myListbox.length+1;"column2";String:C10(Random:C100);"column3";String:C10(Random:C100);"column4";String:C10(Random:C100);"column5";String:C10(Random:C100)))
		End for 
		
	: (Form event code:C388=On Data Change:K2:15)
		
	: (Form event code:C388=On Clicked:K2:4)
		
End case 

  // - EOF -