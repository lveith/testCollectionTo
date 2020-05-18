  // OM: "testCollectionTo".oBtnGenData

C_LONGINT:C283($i)

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		C_TEXT:C284($vtItems)
		C_LONGINT:C283($vlUserChoice)
		ARRAY TEXT:C222($arOptions;6)
		$arOptions{1}:="Generate a list of 4D commands and constants"
		$arOptions{2}:="Generate a list of only 4D commands"
		$arOptions{3}:="Generate a list of only 4D constants"
		$arOptions{4}:="Generate a list of randomNums column1-5"
		$arOptions{5}:="Generate a list of randomNums column1-7"
		$arOptions{6}:="Generate a list of randomNums column1-9"
		
		For ($i;1;Size of array:C274($arOptions))
			$vtItems:=$vtItems+Char:C90(1)+$arOptions{$i}+";"
		End for 
		$vlUserChoice:=Pop up menu:C542($vtItems)
		
		If (($vlUserChoice>0) & ($vlUserChoice<=Size of array:C274($arOptions)))
			
			Case of 
				: ($vlUserChoice=1)  // "Generate a list of 4D commands and constants"
					Form:C1466.myListbox:=y4DCmdAndConst 
					Form:C1466.listname:=yGet4DVersionShortname +" Commands and Constants"
					OBJECT SET TITLE:C194(*;"oColumnHead1";"Serial no")
					OBJECT SET TITLE:C194(*;"oColumnHead2";"Name")
					OBJECT SET TITLE:C194(*;"oColumnHead3";"Token id")
					OBJECT SET TITLE:C194(*;"oColumnHead4";"Type")
					OBJECT SET TITLE:C194(*;"oColumnHead5";"Theme")
					OBJECT SET TITLE:C194(*;"oColumnHead6";"name:token")
					OBJECT SET TITLE:C194(*;"oColumnHead7";"cmdThreadsafe/constValInfo")
					OBJECT SET TITLE:C194(*;"oColumnHead8";"cmdSyntax")
					OBJECT SET TITLE:C194(*;"oColumnHead9";"cmdDesc")
					
				: ($vlUserChoice=2)  // "Generate a list of only 4D commands"
					Form:C1466.myListbox:=y4DCmdAndConst (True:C214;False:C215)
					Form:C1466.listname:=yGet4DVersionShortname +" Commands"
					OBJECT SET TITLE:C194(*;"oColumnHead1";"Serial no")
					OBJECT SET TITLE:C194(*;"oColumnHead2";"Name")
					OBJECT SET TITLE:C194(*;"oColumnHead3";"Token id")
					OBJECT SET TITLE:C194(*;"oColumnHead4";"Type")
					OBJECT SET TITLE:C194(*;"oColumnHead5";"Theme")
					OBJECT SET TITLE:C194(*;"oColumnHead6";"name:token")
					OBJECT SET TITLE:C194(*;"oColumnHead7";"threadsafe")
					OBJECT SET TITLE:C194(*;"oColumnHead8";"cmdSyntax")
					OBJECT SET TITLE:C194(*;"oColumnHead9";"cmdDesc")
					
				: ($vlUserChoice=3)  // "Generate a list of only 4D constants"
					Form:C1466.myListbox:=y4DCmdAndConst (False:C215;True:C214)
					Form:C1466.listname:=yGet4DVersionShortname +" Constants"
					OBJECT SET TITLE:C194(*;"oColumnHead1";"Serial no")
					OBJECT SET TITLE:C194(*;"oColumnHead2";"Name")
					OBJECT SET TITLE:C194(*;"oColumnHead3";"Token id")
					OBJECT SET TITLE:C194(*;"oColumnHead4";"Type")
					OBJECT SET TITLE:C194(*;"oColumnHead5";"Theme")
					OBJECT SET TITLE:C194(*;"oColumnHead6";"name:token")
					OBJECT SET TITLE:C194(*;"oColumnHead7";"constValInfo")
					OBJECT SET TITLE:C194(*;"oColumnHead8";"---")
					OBJECT SET TITLE:C194(*;"oColumnHead9";"---")
					
				: ($vlUserChoice=4)  // "Generate a list of randomNums column1-5"
					Form:C1466.myListbox:=yNewRandomCollection (Form:C1466.rowsToCreate)
					Form:C1466.listname:="Random list"
					OBJECT SET TITLE:C194(*;"oColumnHead1";"column1")
					OBJECT SET TITLE:C194(*;"oColumnHead2";"column2")
					OBJECT SET TITLE:C194(*;"oColumnHead3";"column3")
					OBJECT SET TITLE:C194(*;"oColumnHead4";"column4")
					OBJECT SET TITLE:C194(*;"oColumnHead5";"column5")
					OBJECT SET TITLE:C194(*;"oColumnHead6";"column6")
					OBJECT SET TITLE:C194(*;"oColumnHead7";"column7")
					OBJECT SET TITLE:C194(*;"oColumnHead8";"column8")
					OBJECT SET TITLE:C194(*;"oColumnHead9";"column9")
					
				: ($vlUserChoice=5)  // "Generate a list of randomNums column1-7"
					Form:C1466.myListbox:=yNewRandomCollection (Form:C1466.rowsToCreate;New collection:C1472("column1";"column2";"column3";"column4";"column5";"column6";"column7");"column1")
					Form:C1466.listname:="Random list"
					OBJECT SET TITLE:C194(*;"oColumnHead1";"column1")
					OBJECT SET TITLE:C194(*;"oColumnHead2";"column2")
					OBJECT SET TITLE:C194(*;"oColumnHead3";"column3")
					OBJECT SET TITLE:C194(*;"oColumnHead4";"column4")
					OBJECT SET TITLE:C194(*;"oColumnHead5";"column5")
					OBJECT SET TITLE:C194(*;"oColumnHead6";"column6")
					OBJECT SET TITLE:C194(*;"oColumnHead7";"column7")
					OBJECT SET TITLE:C194(*;"oColumnHead8";"column8")
					OBJECT SET TITLE:C194(*;"oColumnHead9";"column9")
					
				: ($vlUserChoice=6)  // "Generate a list of randomNums column1-9"
					Form:C1466.myListbox:=yNewRandomCollection (Form:C1466.rowsToCreate;New collection:C1472("column1";"column2";"column3";"column4";"column5";"column6";"column7";"column8";"column9");"column1")
					Form:C1466.listname:="Random list"
					OBJECT SET TITLE:C194(*;"oColumnHead1";"column1")
					OBJECT SET TITLE:C194(*;"oColumnHead2";"column2")
					OBJECT SET TITLE:C194(*;"oColumnHead3";"column3")
					OBJECT SET TITLE:C194(*;"oColumnHead4";"column4")
					OBJECT SET TITLE:C194(*;"oColumnHead5";"column5")
					OBJECT SET TITLE:C194(*;"oColumnHead6";"column6")
					OBJECT SET TITLE:C194(*;"oColumnHead7";"column7")
					OBJECT SET TITLE:C194(*;"oColumnHead8";"column8")
					OBJECT SET TITLE:C194(*;"oColumnHead9";"column9")
					
			End case 
			
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
			
		End if 
		
End case 

  // - EOF -