Late Binding in VBScript can lead to runtime errors if an object or method doesn't exist.  Consider this example:

```vbscript
Dim obj
Set obj = CreateObject("Some.NonExistent.Object")
' ... code that uses obj ...
```

If "Some.NonExistent.Object" isn't registered or available, this will cause a runtime error. Early binding (explicitly declaring object types) helps avoid this but can be less flexible.