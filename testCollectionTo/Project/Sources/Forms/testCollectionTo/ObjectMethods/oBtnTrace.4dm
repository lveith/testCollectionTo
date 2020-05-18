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
				
			: (False:C215)
				C_TEXT:C284($head1;$head2;$head3;$head4;$head5;$head6;$head7;$head8;$head9)
				$head1:=OBJECT Get title:C1068(*;"oColumnHead1")
				$head2:=OBJECT Get title:C1068(*;"oColumnHead2")
				$head3:=OBJECT Get title:C1068(*;"oColumnHead3")
				$head4:=OBJECT Get title:C1068(*;"oColumnHead4")
				$head5:=OBJECT Get title:C1068(*;"oColumnHead5")
				$head6:=OBJECT Get title:C1068(*;"oColumnHead6")
				$head7:=OBJECT Get title:C1068(*;"oColumnHead7")
				$head8:=OBJECT Get title:C1068(*;"oColumnHead8")
				$head9:=OBJECT Get title:C1068(*;"oColumnHead9")
				
				OBJECT SET TITLE:C194(*;"oColumnHead1";"Serial no")
				OBJECT SET TITLE:C194(*;"oColumnHead2";"Name")
				OBJECT SET TITLE:C194(*;"oColumnHead3";"Token id")
				OBJECT SET TITLE:C194(*;"oColumnHead4";"Type")
				OBJECT SET TITLE:C194(*;"oColumnHead5";"Theme")
				OBJECT SET TITLE:C194(*;"oColumnHead6";"name:token")
				OBJECT SET TITLE:C194(*;"oColumnHead7";"threadsafe")
				OBJECT SET TITLE:C194(*;"oColumnHead8";"cmdSyntax")
				OBJECT SET TITLE:C194(*;"oColumnHead9";"cmdDesc")
				
				OBJECT SET TITLE:C194(*;"oColumnHead1";"column1")
				OBJECT SET TITLE:C194(*;"oColumnHead2";"column2")
				OBJECT SET TITLE:C194(*;"oColumnHead3";"column3")
				OBJECT SET TITLE:C194(*;"oColumnHead4";"column4")
				OBJECT SET TITLE:C194(*;"oColumnHead5";"column5")
				OBJECT SET TITLE:C194(*;"oColumnHead6";"column6")
				OBJECT SET TITLE:C194(*;"oColumnHead7";"column7")
				
			: (False:C215)
				$exprColumn1:=LISTBOX Get column formula:C1202(*;"Spalte1")
				
			: (False:C215)
				  // ------------------------------------------------------------
				  // ---------------------- JS Example --------------------------
				  // ------------------------------------------------------------
				  // function resolve(path, obj=self, separator='.') {
				  //   var properties = Array.isArray(path) ? path : path.split(separator);
				  //   return properties.reduce((prev, curr) => prev && prev[curr], obj);
				  // }
				  // /* --- use example 1 --- */
				  // var docBodyWidth = resolve("document.body.offsetWidth");
				  // /* --- use example 2 --- */
				  // var myObj = {a: {a1: "A1", a2: "A2"}, b: {b1: "B1", b2: "B2"}}
				  // var item2 = resolve("myObj.a.a2");
				  // /* --- explain --- */
				  // Array.isArray("myObj.a.a2") ? "myObj.a.a2" : "myObj.a.a2".split(".");  /* -> ["myObj", "a", "a2"] */
				  // ["myObj", "a", "a2"].reduce((prev, curr) => prev && prev[curr], self)  /* -> "A2" */
				  // ------------------------------------------------------------
				  // const resolvePath=(object, path, defaultValue) => path.split('.').reduce((o, p) => o ? o[p] : defaultValue, object)
				  // resolvePath(myObj,'a.a2')  /* -> "A2" */
				  // ------------------------------------------------------------
				
				C_OBJECT:C1216($obj)
				$obj:=New object:C1471
				$obj.itemA:=New object:C1471
				$obj.itemA.itemA1:="A1"
				$obj.itemA.itemA2:="A2"
				$obj.itemB:=New object:C1471
				$obj.itemB.itemB1:="B1"
				$obj.itemB.itemB2:="B2"
				C_TEXT:C284($itemA2)
				$itemA2:=$obj["itemA"]["itemA2"]
				  // Catch by any path from string "itemA.itemA2",
				  // string must split with "." as separator
				
			: (False:C215)
				C_OBJECT:C1216($objInfo;$objSelf)
				$objInfo:=JSON Parse:C1218("{\"alpha\": 4552,\"beta\": [{\"echo\": 45,\"delta\": \"text1\"},{\"echo\": 52,\"golf\": \"text2\"}]}";Is object:K8:27;*)  //* to get the __symbols property
				  //in the returned $obInfo object
				$objSelf:=JSON Parse:C1218("{\"alpha\": 4552,\"beta\": [{\"echo\": 45,\"delta\": \"text1\"},{\"echo\": 52,\"golf\": \"text2\"}]}";Is object:K8:27)
				
			: (False:C215)  // step in here if you like
				  // ...insert your own debug examples
				
		End case 
		
	: (Form event code:C388=On Long Click:K2:37)
		  // ...maybe a "Pop up menu" or other stuffs
		
End case 

  // - EOF -
