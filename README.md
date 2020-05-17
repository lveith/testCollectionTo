# testCollectionTo (4Dv18R3)
Only a test example for collection convert to HTML, CSV, MD, TXT and more with col.map("colMapJoin")

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

![github-small](https://user-images.githubusercontent.com/65073460/82151271-f8fc8a00-985a-11ea-9029-28c73f09ffc5.png)
