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
- Collection to TSV

![github-small](https://user-images.githubusercontent.com/65073460/82457013-39efdb00-9ab5-11ea-8e59-b179a933102b.png)
