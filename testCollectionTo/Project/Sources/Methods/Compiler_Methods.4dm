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
// Last change: LV 21.05.20, 09:18:11

// startTestForm
C_TEXT:C284(startTestForm; $1)

//collectionTo
C_COLLECTION:C1488(collectionTo; $1)
C_TEXT:C284(collectionTo; $2)
C_TEXT:C284(collectionTo; $3)
C_TEXT:C284(collectionTo; $4)
C_TEXT:C284(collectionTo; $5)
C_TEXT:C284(collectionTo; $6)
C_COLLECTION:C1488(collectionTo; $7)

// collectionToHtml
C_TEXT:C284(collectionToHtml; $0)
C_COLLECTION:C1488(collectionToHtml; $1)
C_TEXT:C284(collectionToHtml; $2)
C_TEXT:C284(collectionToHtml; $3)
C_COLLECTION:C1488(collectionToHtml; $4)
C_BOOLEAN:C305(collectionToHtml; $5)

//collectionToCSV
C_TEXT:C284(collectionToCsv; $0)
C_COLLECTION:C1488(collectionToCsv; $1)
C_TEXT:C284(collectionToCsv; $2)
C_TEXT:C284(collectionToCsv; $3)
C_COLLECTION:C1488(collectionToCsv; $4)
C_BOOLEAN:C305(collectionToCsv; $5)

//collectionToMd
C_TEXT:C284(collectionToMd; $0)
C_COLLECTION:C1488(collectionToMd; $1)
C_TEXT:C284(collectionToMd; $2)
C_TEXT:C284(collectionToMd; $3)
C_COLLECTION:C1488(collectionToMd; $4)
C_BOOLEAN:C305(collectionToMd; $5)

//collectionToTxt
C_TEXT:C284(collectionToTxt; $0)
C_COLLECTION:C1488(collectionToTxt; $1)
C_TEXT:C284(collectionToTxt; $2)
C_TEXT:C284(collectionToTxt; $3)
C_COLLECTION:C1488(collectionToTxt; $4)
C_BOOLEAN:C305(collectionToTxt; $5)

//collectionToTsv
C_TEXT:C284(collectionToTsv; $0)
C_COLLECTION:C1488(collectionToTsv; $1)
C_TEXT:C284(collectionToTsv; $2)
C_TEXT:C284(collectionToTsv; $3)
C_COLLECTION:C1488(collectionToTsv; $4)
C_BOOLEAN:C305(collectionToTsv; $5)

//collectionToXml
C_TEXT:C284(collectionToXml; $0)
C_COLLECTION:C1488(collectionToXml; $1)
C_TEXT:C284(collectionToXml; $2)
C_TEXT:C284(collectionToXml; $3)
C_COLLECTION:C1488(collectionToXml; $4)
C_BOOLEAN:C305(collectionToXml; $5)

//collectionToJson
C_TEXT:C284(collectionToJson; $0)
C_COLLECTION:C1488(collectionToJson; $1)
C_TEXT:C284(collectionToJson; $2)
C_TEXT:C284(collectionToJson; $3)
C_COLLECTION:C1488(collectionToJson; $4)
C_BOOLEAN:C305(collectionToJson; $5)

// colMapJoin
C_OBJECT:C1216(colMapJoin; $1)
C_TEXT:C284(colMapJoin; $2)
C_TEXT:C284(colMapJoin; $3)
C_TEXT:C284(colMapJoin; $4)
C_TEXT:C284(colMapJoin; $5)
C_TEXT:C284(colMapJoin; $6)
C_COLLECTION:C1488(colMapJoin; $7)
C_COLLECTION:C1488(colMapJoin; $8)
C_COLLECTION:C1488(colMapJoin; $9)

//yColKeysCollectionTo
C_COLLECTION:C1488(yColKeysCollectionTo; $0)
C_COLLECTION:C1488(yColKeysCollectionTo; $1)
C_BOOLEAN:C305(yColKeysCollectionTo; $2)

//yColToAttrCreate
C_COLLECTION:C1488(yColToAttrCreate; $0)
C_COLLECTION:C1488(yColToAttrCreate; $1)

//collectionToGetDocType
C_TEXT:C284(collectionToGetDocType; $0)
C_TEXT:C284(collectionToGetDocType; $1)

//yColExtract
C_COLLECTION:C1488(yColExtract; $0)
C_COLLECTION:C1488(yColExtract; $1)
C_COLLECTION:C1488(yColExtract; $2)
C_COLLECTION:C1488(yColExtract; $3)

//yGetTimeline
C_TEXT:C284(yGetTimeline; $0)
C_TEXT:C284(yGetTimeline; $1)
C_TEXT:C284(yGetTimeline; $2)
C_TEXT:C284(yGetTimeline; $3)

//yNewRandomCollection
C_COLLECTION:C1488(yNewRandomCollection; $0)
C_LONGINT:C283(yNewRandomCollection; $1)
C_COLLECTION:C1488(yNewRandomCollection; $2)
C_TEXT:C284(yNewRandomCollection; $3)

//y4DCmdAndConst
C_COLLECTION:C1488(y4DCmdAndConst; $0)
C_BOOLEAN:C305(y4DCmdAndConst; $1)
C_BOOLEAN:C305(y4DCmdAndConst; $2)

//yGet4DVersionShortname
C_TEXT:C284(yGet4DVersionShortname; $0)

//yMatchRegexG
C_COLLECTION:C1488(yMatchRegexG; $0)
C_TEXT:C284(yMatchRegexG; $1)
C_TEXT:C284(yMatchRegexG; $2)
C_LONGINT:C283(yMatchRegexG; $3)
C_BOOLEAN:C305(yMatchRegexG; $4)

//yCreateOpenTxtDoc
C_BOOLEAN:C305(yCreateOpenTxtDoc; $0)
C_TEXT:C284(yCreateOpenTxtDoc; $1)
C_TEXT:C284(yCreateOpenTxtDoc; $2)
C_TEXT:C284(yCreateOpenTxtDoc; $3)

//yRgxReplaceInCol
C_COLLECTION:C1488(yRgxReplaceInCol; $0)
C_COLLECTION:C1488(yRgxReplaceInCol; $1)
C_TEXT:C284(yRgxReplaceInCol; $2)
C_TEXT:C284(yRgxReplaceInCol; $3)

//yReplaceRegexG
C_TEXT:C284(yReplaceRegexG; $0)
C_TEXT:C284(yReplaceRegexG; $1)
C_TEXT:C284(yReplaceRegexG; $2)
C_TEXT:C284(yReplaceRegexG; $3)
C_LONGINT:C283(yReplaceRegexG; $4)
C_LONGINT:C283(yReplaceRegexG; $5)

//colFiMatchRegex
C_OBJECT:C1216(colFiMatchRegex; $1)
C_TEXT:C284(colFiMatchRegex; $2)
C_TEXT:C284(colFiMatchRegex; $3)

// - EOF -