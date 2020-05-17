  // OM: "testCollectionTo".oBtnGenData

C_LONGINT:C283($i)

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		C_TEXT:C284($vtItems)
		C_LONGINT:C283($vlUserChoice)
		ARRAY TEXT:C222($arOptions;5)
		$arOptions{1}:="Generate a list of 4D commands and constants"
		$arOptions{2}:="Generate a list of only 4D commands"
		$arOptions{3}:="Generate a list of only 4D constants"
		$arOptions{4}:="Generate a list of randomNums column1-5"
		$arOptions{5}:="Generate a list of randomNums column1-7"
		
		For ($i;1;Size of array:C274($arOptions))
			$vtItems:=$vtItems+Char:C90(1)+$arOptions{$i}+";"
		End for 
		$vlUserChoice:=Pop up menu:C542($vtItems)
		
		Case of 
			: ($vlUserChoice=1)  // "Generate a list of 4D commands and constants"
				Form:C1466.myListbox:=y4DCmdAndConst 
				
			: ($vlUserChoice=2)  // "Generate a list of only 4D commands"
				Form:C1466.myListbox:=y4DCmdAndConst (True:C214;False:C215)
				
			: ($vlUserChoice=3)  // "Generate a list of only 4D constants"
				Form:C1466.myListbox:=y4DCmdAndConst (False:C215;True:C214)
				
			: ($vlUserChoice=4)  // "Generate a list of randomNums column1-5"
				Form:C1466.myListbox:=New collection:C1472
				For ($i;1;1000)
					Form:C1466.myListbox.push(New object:C1471("column1";Form:C1466.myListbox.length+1;"column2";String:C10(Random:C100);"column3";String:C10(Random:C100);"column4";String:C10(Random:C100);"column5";String:C10(Random:C100)))
				End for 
				
			: ($vlUserChoice=5)  // "Generate a list of randomNums column1-7"
				Form:C1466.myListbox:=New collection:C1472
				For ($i;1;1000)
					Form:C1466.myListbox.push(New object:C1471("column1";Form:C1466.myListbox.length+1;"column2";String:C10(Random:C100);"column3";String:C10(Random:C100);"column4";String:C10(Random:C100);"column5";String:C10(Random:C100);"column6";String:C10(Random:C100);"column7";String:C10(Random:C100)))
				End for 
				
		End case 
		
End case 

  // - EOF -