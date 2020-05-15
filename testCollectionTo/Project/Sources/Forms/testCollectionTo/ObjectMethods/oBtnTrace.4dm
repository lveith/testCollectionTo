  // OM: "testCollectionTo".oBtnTrace
  // Only Trace and later here may be some code-examples to debug

Case of 
	: (Form event code:C388=On Clicked:K2:4)
		If (Is compiled mode:C492)
			BEEP:C151
			  // display the Runtime Explorer
			If (Is macOS:C1572)
				  // POST KEY(F9 key;Command key mask+Shift key mask)  // Command+Shift+F9 (Mac OS)
			Else 
				  // POST KEY(F9 key;Control key mask+Shift key mask)  // Ctrl+Shift+F9 (Windows)
			End if 
		Else 
			TRACE:C157
		End if 
		
		Case of 
			: (False:C215)  // step in here if you like
				C_PICTURE:C286($pict)
				FORM SCREENSHOT:C940($pict)
				SET PICTURE TO PASTEBOARD:C521($pict)
				
			: (False:C215)  // step in here if you like
				  // ...insert your own debug examples
				
		End case 
		
	: (Form event code:C388=On Long Click:K2:37)
		  // ...maybe a "Pop up menu" or other stuffs
		
End case 

  // - EOF -
