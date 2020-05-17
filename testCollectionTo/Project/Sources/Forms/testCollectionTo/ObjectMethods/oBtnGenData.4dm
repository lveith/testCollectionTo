  // OM: "testCollectionTo".oBtnGenData

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		C_TEXT:C284($vtItems)
		C_LONGINT:C283($vlUserChoice)
		ARRAY TEXT:C222($arOptions;3)
		$arOptions{1}:="Generate a list of 4D commands and constants"
		$arOptions{2}:="Generate a list of only 4D commands"
		$arOptions{3}:="Generate a list of only 4D constants"
		
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
				
		End case 
		
End case 

  // - EOF -