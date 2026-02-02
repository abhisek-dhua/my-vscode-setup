# VS Code Settings

A minimal reference for my custom VS Code configuration.

## Settings Summary

- Prettier without semicolons
- Word wrap enabled
- Format on save
- Font ligatures and linked editing
- Bracket pair colorization
- Custom fonts and theme
- Git sync without confirmation
- GitLens minimal
- PowerShell as terminal
- Live Server quiet mode
- Spell check custom words
- Token styling with italics
- Auto update imports for JS/TS

## settings.json

```json
{
  // editor customization
  "editor.wordWrap": "on",
  "git.confirmSync": false,
  "editor.formatOnSave": true,
  "editor.fontLigatures": true,
  "editor.linkedEditing": true,
  "database-client.autoSync": true,
  "gitlens.codeLens.enabled": false,
  "editor.cursorBlinking": "expand",
  "editor.guides.bracketPairs": "active",
  "cSpell.userWords": ["Abhisek", "Dhua"],
  "workbench.colorTheme": "Default Dark+",
  "workbench.iconTheme": "material-icon-theme",
  "liveServer.settings.donotShowInfoMsg": true,
  "editor.bracketPairColorization.enabled": true,
  "terminal.integrated.sendKeybindingsToShell": true,
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "javascript.updateImportsOnFileMove.enabled": "always",
  "typescript.updateImportsOnFileMove.enabled": "always",
  "terminal.integrated.defaultProfile.windows": "PowerShell",
  "editor.bracketPairColorization.independentColorPoolPerBracketType": true,
  "editor.fontFamily": "'fira code', 'Cascadia Code', Consolas, 'Courier New', Monospace",
  // prettier customization
  "prettier.semi": true,
  "prettier.tabWidth": 2,
  "prettier.useTabs": false,
  "prettier.endOfLine": "lf",
  "prettier.printWidth": 100,
  "prettier.singleQuote": true,
  "prettier.trailingComma": "all",
  "prettier.bracketSpacing": true,
  "prettier.arrowParens": "always",
  "prettier.bracketSameLine": true,
  "prettier.quoteProps": "as-needed",
  "prettier.embeddedLanguageFormatting": "auto",
  "prettier.htmlWhitespaceSensitivity": "ignore",
  // vscode workbench customization
  "workbench.colorCustomizations": {
    "statusBar.background": "#2d2d2d",
    "statusBar.noFolderBackground": "#2d2d2d",
    "statusBar.debuggingBackground": "#c74e39",
    "statusBar.foreground": "#cccccc",
  },
  "editor.tokenColorCustomizations": {
    "textMateRules": [
      {
        "scope": [
          // the following elements will be in italic
          "comment",
          "storage.modifier", // static keyword
          "storage.type.php", // typehints in methods keyword
          "keyword.other.new.php", // new
          "entity.other.attribute-name", // html attributes
          "fenced_code.block.language.markdown", // markdown language modifier
          "keyword", //import, export, return…
          "storage.type", //class keyword
          "storage.modifier", //static keyword
          "keyword.control",
          "constant.language",
          "entity.name.method",
          "entity.name.function",
          "entity.other.attribute-name",
          "keyword.control.import.ts",
          "keyword.control.import.tsx",
          "keyword.control.import.js",
          "keyword.control.flow.js",
          "keyword.control.from.js",
          "keyword.control.from.ts",
          "keyword.control.from.tsx",
        ],
        "settings": {
          "fontStyle": "italic",
          // "foreground": "#82AAFF"
        },
      },
      {
        "scope": [
          // the following elements will be displayed in bold
          "entity.name.type.class", // class names
        ],
        "settings": {
          "fontStyle": "",
        },
      },
      {
        "scope": [
          // the following elements will be displayed in bold and italic
          "entity.name.section.markdown", // markdown headlines
        ],
        "settings": {
          "fontStyle": "italic",
        },
      },
      {
        "scope": [
          // the following elements will be excluded from italics
          //   (VSCode has some defaults for italics)
          "invalid",
          "comment.block",
          "keyword.operator",
          "constant.numeric.css",
          "constant.numeric.json",
          "keyword.other.unit.px.css",
          "constant.numeric.decimal.js",
          "entity.other.attribute-name.class.css",
        ],
        "settings": {
          "fontStyle": "",
        },
      },
    ],
  },
}


