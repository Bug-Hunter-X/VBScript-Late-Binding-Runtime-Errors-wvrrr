Early binding avoids the runtime errors of late binding.  Here's how to rewrite the previous example using early binding (requires adding a reference to the relevant object library):

```vbscript
Dim obj As Object
On Error GoTo ErrorHandler
Set obj = CreateObject("Some.Existing.Object")
' ... code that uses obj ...
Exit Sub

ErrorHandler:
MsgBox "Error creating object: " & Err.Description
End Sub
```

This version explicitly declares the object type and includes error handling.  The `On Error GoTo` statement catches potential errors and handles them gracefully. Note that using early binding will require proper references to be setup.