# testCollectionTo (4Dv18R3)
Only a test example for collection convert to HTML, CSV, MD, TXT and more with **collection.map("colMapJoin")**

### collections of values (one not named column)
```4d
$col.map("colMapJoin";$rowPrefix;$rowSuffix;$cellPrefix;$cellSuffix;$cellSeparator;$colReplace)
```
```4d
$col.map("colMapJoin";$rowPrefix;$rowSuffix;$cellPrefix;$cellSuffix;$cellSeparator)
```

### collections of objects (multi columns with nameKey)
```4d
$col.map("colMapJoin";$rowPrefix;$rowSuffix;$cellPrefix;$cellSuffix;$cellSeparator;$colReplace;$colKeys)
```

### Examples in test-dialog
- Collection to HTML
- Collection to CSV
- Collection to MD
- Collection to TXT
- Collection to TSV
- Collection to XML
- Collection to JSON

### Call Example
```4d
C_COLLECTION($myCollectionToDumpOut)
C_TEXT($docType)
C_TEXT($myListName)
C_TEXT($myTimelineMiddle)
C_TEXT($myTimelineBefore)
C_TEXT($myTimelineAfter)

  // Any collection what you want to dump out with collectionTo
  // ...creating here any test-data for testing collectionTo...
$myCollectionToDumpOut:=New collection
$myCollectionToDumpOut.push(New object("a";"a1";"b";"b1";"c";"c1"))
$myCollectionToDumpOut.push(New object("a";"a2";"b";"b2";"c";"c2"))
$myCollectionToDumpOut.push(New object("a";"a3";"b";"b3";"c";"c3"))

$docType:=".html"
$myListName:="Place here any name for the list"
$myTimelineMiddle:=""  // if not filled, than created automatically
$myTimelineBefore:=""  // optional
$myTimelineAfter:=""  // optional

C_COLLECTION($colToAttr)
C_OBJECT($itemColumn)

  // create a new default colKeysAttr
$colToAttr:=yColToAttrCreate ($myCollectionToDumpOut)

If (True)  // only a example for change default attributes like title, sort (or hide column with active=False)
  For each ($itemColumn;$colToAttr)
    Case of 
      : ($itemColumn.key="a")
        $itemColumn.title:="# A #"  // change default title to individual title
      : ($itemColumn.key="b")
        $itemColumn.title:="# B #"  // change default title to individual title
    End case 
  End for each 
Else 
    // use default attributes like title, sort (or hide column with active=False)
    // when its wished to dump out all existing keys from your collection
    // in phySortOrder and with title=keyname
    // ...than take standard you get by $colToAttr:=yColToAttrCreate($myCollectionToDumpOut)
    // ...nothing more to do when no different customs needed
End if 

Case of 
  : (True)  // $docType (like before is set to ".html"
    collectionTo ($myCollectionToDumpOut;$docType;$myListName;$myTimelineMiddle;$myTimelineBefore;$myTimelineAfter;$colToAttr)
    
  : (True)  // alternativ ".csv"
    collectionTo ($myCollectionToDumpOut;".csv";$myListName;$myTimelineMiddle;$myTimelineBefore;$myTimelineAfter;$colToAttr)
    
  : (True)  // alternativ ".md"
    collectionTo ($myCollectionToDumpOut;".md";$myListName;$myTimelineMiddle;$myTimelineBefore;$myTimelineAfter;$colToAttr)
    
  : (True)  // alternativ ".txt"
    collectionTo ($myCollectionToDumpOut;".txt";$myListName;$myTimelineMiddle;$myTimelineBefore;$myTimelineAfter;$colToAttr)
    
  : (True)  // alternativ ".tsv"
    collectionTo ($myCollectionToDumpOut;".tsv";$myListName;$myTimelineMiddle;$myTimelineBefore;$myTimelineAfter;$colToAttr)
    
  : (True)  // alternativ ".xml"
    collectionTo ($myCollectionToDumpOut;".xml";$myListName;$myTimelineMiddle;$myTimelineBefore;$myTimelineAfter;$colToAttr)
    
  : (True)  // alternativ ".json"
    collectionTo ($myCollectionToDumpOut;".json";$myListName;$myTimelineMiddle;$myTimelineBefore;$myTimelineAfter;$colToAttr)
    
End case
```

![github-small](https://user-images.githubusercontent.com/65073460/82457013-39efdb00-9ab5-11ea-8e59-b179a933102b.png)
