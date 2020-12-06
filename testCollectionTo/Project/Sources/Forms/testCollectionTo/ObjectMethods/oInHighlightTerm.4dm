// PM: "testCollectionTo".oInHighlightTerm (new LV 06.12.20, 11:28:10)
// Last change: LV 06.12.20, 11:28:10

C_TEXT:C284($liveText; $liveTextUpper; $liveTextLower; $liveTextUL)
C_TEXT:C284($newText; $newTextUpper; $newTextLower; $newTextUL)
C_TEXT:C284($keyName)
C_LONGINT:C283($i)

Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.highlightTerm:=""
		
	: (Form event code:C388=On Getting Focus:K2:7)
		Form:C1466.highlightTerm:=""
		Form:C1466.myListboxOrg:=Form:C1466.myListbox
		
	: (Form event code:C388=On Losing Focus:K2:8)
		Form:C1466.highlightTerm:=""
		Form:C1466.myListbox:=Form:C1466.myListboxOrg.copy()
		
	: (Form event code:C388=On After Keystroke:K2:26)
		$liveText:=Get edited text:C655
		Form:C1466.myListbox:=Form:C1466.myListboxOrg.copy()
		If ($liveText#"")
			$liveTextUpper:=Uppercase:C13($liveText)
			$liveTextLower:=Lowercase:C14($liveText)
			$liveTextUL:=Uppercase:C13($liveText[[1]])+Lowercase:C14(Substring:C12($liveText; 2))
			
			$newText:="<span style=\"color: red; background-color: yellow;\">"+$liveText+"</span>"
			$newTextUpper:="<span style=\"color: red; background-color: yellow;\">"+$liveTextUpper+"</span>"
			$newTextLower:="<span style=\"color: red; background-color: yellow;\">"+$liveTextLower+"</span>"
			$newTextUL:="<span style=\"color: red; background-color: yellow;\">"+$liveTextUL+"</span>"
			
			For each ($objItem; Form:C1466.myListbox)
				For ($i; 1; 9)
					$keyName:="column"+String:C10($i)
					If (Value type:C1509($objItem[$keyName])=Is text:K8:3)
						$objItem[$keyName]:=Replace string:C233($objItem[$keyName]; $liveText; $newText; *)
						$objItem[$keyName]:=Replace string:C233($objItem[$keyName]; $liveTextUpper; $newTextUpper; *)
						$objItem[$keyName]:=Replace string:C233($objItem[$keyName]; $liveTextLower; $newTextLower; *)
						$objItem[$keyName]:=Replace string:C233($objItem[$keyName]; $liveTextUL; $newTextUL; *)
					End if 
				End for 
			End for each 
		End if 
		
End case 


// - EOF -
