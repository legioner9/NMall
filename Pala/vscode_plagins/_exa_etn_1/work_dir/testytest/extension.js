'use strict';

const vscode = require('vscode');
const fs = require('fs');
const path = require('path');

/**
 * @param {vscode.ExtensionContext} context
 */
function activate(context) {
  console.log('Congratulations, your extension "testytest" is now active!');

  const disposable = vscode.commands.registerCommand(
    'extension.createBoilerplate',
    async function () {
      if (!vscode.workspace) {
        return vscode.window.showErrorMessage(
          'Please open a project folder first',
        );
      }

      const folderPath = vscode.workspace.workspaceFolders[0].uri
        .toString()
        .split(':')[1];

      const htmlContent = `<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>Document</title>
  <link rel="stylesheet" href="app.css" />
</head>
<body>
  <script src="app.js"></script>
</body>
</html>`;

      fs.writeFile(path.join(folderPath, 'index.html'), htmlContent, (err) => {
        if (err) {
          return vscode.window.showErrorMessage(
            'Failed to create boilerplate file!',
          );
        }
        vscode.window.showInformationMessage('Created boilerplate files');
      });

      vscode.window.showInformationMessage('Created boilerplate files');
    },
  );

  context.subscriptions.push(disposable);
}

// This method is called when your extension is deactivated
function deactivate() { }

module.exports = {
  activate,
  deactivate,
};
