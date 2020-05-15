# testCollectionTo (4Dv18R3)
Only a test example for collection convert to HTML, CSV, MD, TXT and more with col.map("colMapJoin")

### collections of values (one not named column)
```
$col.map("colMapJoin";$rowPrefix;$rowSuffix;$cellPrefix;$cellSuffix;$cellSeparator)
```

### collections of objects (multi columns with nameKey)
```
$col.map("colMapJoin";$rowPrefix;$rowSuffix;$cellPrefix;$cellSuffix;$cellSeparator;$colKeys)
```

### Examples in test-dialog
- Collection to HTML
- Collection to CSV
- Collection to MD
- Collection to TXT

(...more use-case examples comming soon...)

![github-small](https://user-images.githubusercontent.com/65073460/82057765-1f3bf180-96c4-11ea-9236-91c385a08e2c.png)
