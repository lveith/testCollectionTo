// PM: "testCollectionTo".oBtnFilter (new LV 06.12.20, 09:51:11)
// Last change: LV 06.12.20, 09:51:11

C_TEXT:C284($queryStatement; $currErrMethode)

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		C_TEXT:C284($vtItems)
		C_LONGINT:C283($vlUserChoice)
		ARRAY TEXT:C222($arOptions; 3)
		$arOptions{1}:="fromCurrSel: collection.query(searchTerm)"
		$arOptions{2}:="fromALL-Sel: collection.query(searchTerm)"
		$arOptions{3}:="ALL (filters off)"
		
		For ($i; 1; Size of array:C274($arOptions))
			$vtItems:=$vtItems+Char:C90(1)+$arOptions{$i}+";"
		End for 
		$vlUserChoice:=Pop up menu:C542($vtItems)
		
		Case of 
			: (($vlUserChoice=1) | ($vlUserChoice=2))  // (1.|2.) "...: collection.query(searchTerm)"
				$queryStatement:=Request:C163("Search criteria"; "(column2 = '@method@' AND column2 # 'C_@' AND column2 # '_O_C_@') OR (column8 = '@method@' AND column8 # 'C_@' AND column8 # '_O_C_@')"; "Search"; "Cancel")
				If ($queryStatement="")
					BEEP:C151  // better do nothing, give beep-signal means "no query possible with empty searchTerm"
				Else 
					OK:=0
					Error:=0
					$currErrMethode:=Method called on error:C704
					ON ERR CALL:C155("yErrCallNum")
					If ($vlUserChoice=1)  // 1. "fromCurrSel: collection.query(searchTerm)"
						Form:C1466.myListbox:=Form:C1466.myListbox.query($queryStatement)
					Else   // 2. "fromALL-Sel: collection.query(searchTerm)"
						Form:C1466.myListbox:=Form:C1466.myListboxBackup.query($queryStatement)
					End if 
					ON ERR CALL:C155($currErrMethode)
					If (OK=(-1))
						BEEP:C151
						OK:=0
					End if 
				End if 
				
			: ($vlUserChoice=3)  // 3. "ALL (filters off)"
				Form:C1466.myListbox:=Form:C1466.myListboxBackup
				
		End case 
		
End case 

// - EOF -