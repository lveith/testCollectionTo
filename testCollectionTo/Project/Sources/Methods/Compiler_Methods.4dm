//%attributes = {"invisible":true}
  // PM: "Compiler_Methods" (new LV 18.05.20, 22:06:23)
  // Deactivate this warnings:
  //%W-518.1 "Pointer in COPY ARRAY"
  //%W-518.2 "Pointer in SELECTION TO ARRAY"
  //%W-518.3 "Pointer in LIST TO ARRAY"
  //%W-518.5 "Pointer in an array declaration"
  //%W-518.6 "Pointer in ARRAY TO SELECTION"
  //%W-518.7 "Undefined not suggested"
  //%W-518.10 "Pointer in DISTINCT VALUES"
  //%W-533.4 "Plugin-Parameter missing"
  //%W-533.1 "Pointer alphanum"
  //%W-533.3 "Index on table numeric"  | for example: $ptr->{$ptr}
  // Last change: LV 19.05.20, 11:30:09

  //collectionToCSV
C_COLLECTION:C1488(collectionToCSV ;$1)
C_TEXT:C284(collectionToCSV ;$2)
C_TEXT:C284(collectionToCSV ;$3)
C_COLLECTION:C1488(collectionToCSV ;$4)

  // collectionToHtml
C_COLLECTION:C1488(collectionToHtml ;$1)
C_TEXT:C284(collectionToHtml ;$2)
C_TEXT:C284(collectionToHtml ;$3)
C_COLLECTION:C1488(collectionToHtml ;$4)

  //collectionToMd
C_COLLECTION:C1488(collectionToMd ;$1)
C_TEXT:C284(collectionToMd ;$2)
C_TEXT:C284(collectionToMd ;$3)
C_COLLECTION:C1488(collectionToMd ;$4)

  //collectionToTxt
C_COLLECTION:C1488(collectionToTxt ;$1)
C_TEXT:C284(collectionToTxt ;$2)
C_TEXT:C284(collectionToTxt ;$3)
C_COLLECTION:C1488(collectionToTxt ;$4)

  // startTestForm
C_TEXT:C284(startTestForm ;$1)

  // colMapJoin
C_OBJECT:C1216(colMapJoin ;$1)
C_TEXT:C284(colMapJoin ;$2)
C_TEXT:C284(colMapJoin ;$3)
C_TEXT:C284(colMapJoin ;$4)
C_TEXT:C284(colMapJoin ;$5)
C_TEXT:C284(colMapJoin ;$6)
C_COLLECTION:C1488(colMapJoin ;$7)
C_COLLECTION:C1488(colMapJoin ;$8)

  //y4DCmdAndConst
C_COLLECTION:C1488(y4DCmdAndConst ;$0)
C_BOOLEAN:C305(y4DCmdAndConst ;$1)
C_BOOLEAN:C305(y4DCmdAndConst ;$2)

  //yGet4DVersionShortname
C_TEXT:C284(yGet4DVersionShortname ;$0)

  //yNewRandomCollection
C_COLLECTION:C1488(yNewRandomCollection ;$0)
C_LONGINT:C283(yNewRandomCollection ;$1)
C_COLLECTION:C1488(yNewRandomCollection ;$2)
C_TEXT:C284(yNewRandomCollection ;$3)

  //yGetTimeline
C_TEXT:C284(yGetTimeline ;$0)
C_TEXT:C284(yGetTimeline ;$1)

  //yColKeysCollectionTo
C_COLLECTION:C1488(yColKeysCollectionTo ;$0)
C_COLLECTION:C1488(yColKeysCollectionTo ;$1)
C_BOOLEAN:C305(yColKeysCollectionTo ;$2)

  //yColToAttrCreate
C_COLLECTION:C1488(yColToAttrCreate ;$0)
C_COLLECTION:C1488(yColToAttrCreate ;$1)

  // - EOF -