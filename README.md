# testCollectionTo (4Dv18R3)
Only a test example for collection convert to HTML, CSV, MD, TXT and more with **collection.map("colMapJoin")**

### collections of values (one not named column)
```
$col.map("colMapJoin";$rowPrefix;$rowSuffix;$cellPrefix;$cellSuffix;$cellSeparator;$colReplace)
```
```
$col.map("colMapJoin";$rowPrefix;$rowSuffix;$cellPrefix;$cellSuffix;$cellSeparator)
```

### collections of objects (multi columns with nameKey)
```
$col.map("colMapJoin";$rowPrefix;$rowSuffix;$cellPrefix;$cellSuffix;$cellSeparator;$colReplace;$colKeys)
```

### Examples in test-dialog
- Collection to HTML
- Collection to CSV
- Collection to MD
- Collection to TXT

(...more use-case examples comming soon...)

![github-small](https://user-images.githubusercontent.com/65073460/82241289-2b31e880-993c-11ea-88c7-1d04a1fa10f8.png)
