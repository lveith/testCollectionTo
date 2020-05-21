  // FM: "testCollectionTo"

Case of 
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.myLbCurrSel:=New collection:C1472
		
		  // ...fill any test-data in Listbox
		Form:C1466.myListbox:=yNewRandomCollection (1000;New collection:C1472("column1";"column2";"column3";"column4";"column5";"column6";"column7";"column8";"column9");"column1")
		
		Form:C1466.rowsToCreate:=1000
		Form:C1466.listname:="Random list"
		Form:C1466.beforeTimeline:=""
		Form:C1466.afterTimeline:=""
		
		Form:C1466.colKeys:=yColToAttrCreate (Form:C1466.myListbox)
		
	: (Form event code:C388=On Data Change:K2:15)
		
	: (Form event code:C388=On Clicked:K2:4)
		
End case 

  // - EOF -