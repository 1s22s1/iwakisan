## terminal.integrated.enableMultiLinePasteWarning is setted to false

<!-- ⚠️⚠️ Do Not Delete This! bug_report_template ⚠️⚠️ -->
<!-- Please read our Rules of Conduct: https://opensource.microsoft.com/codeofconduct/ -->
<!-- 🕮 Read our guide about submitting issues: https://github.com/microsoft/vscode/wiki/Submitting-Bugs-and-Suggestions -->
<!-- 🔎 Search existing issues to avoid creating duplicates. -->
<!-- 🧪 Test using the latest Insiders build to see if your issue has already been fixed: https://code.visualstudio.com/insiders/ -->
<!-- 💡 Instead of creating your report here, use 'Report Issue' from the 'Help' menu in VS Code to pre-fill useful information. -->
<!-- 🔧 Launch with `code --disable-extensions` to check. -->
Does this issue occur when all extensions are disabled?: Yes

<!-- 🪓 If you answered No above, use 'Help: Start Extension Bisect' from Command Palette to try to identify the cause. -->
<!-- 📣 Issues caused by an extension need to be reported directly to the extension publisher. The 'Help > Report Issue' dialog can assist with this. -->
- VS Code Version: 1.94.2
- OS Version: Linux x64 6.6.46-04024-g9e7e147b4900

Steps to Reproduce:

1. Do not set `terminal.integrated.enableMultiLinePasteWarning`.
2. Paste multiple lines in VSCode terminal.
3. Enable the checkbox for "Do not ask me again" and press the "Paste" button. [note1](https://github.com/user-attachments/assets/f940775c-f0a4-4367-a508-528609b8fe6c)
4. Check setting and `terminal.integrated.enableMultiLinePasteWarning` is setted false.[note2](https://github.com/user-attachments/assets/1670cf2f-4a8a-4399-b858-bd3cdf07ae88)
