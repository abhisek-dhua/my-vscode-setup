{
  "prettier.semi": false,
  "editor.wordWrap": "on",
  "editor.formatOnSave": true,
  "editor.fontLigatures": true,
  "editor.linkedEditing": true,
  "database-client.autoSync": true,
  "gitlens.codeLens.enabled": false,
  "editor.guides.bracketPairs": "active",
  "cSpell.userWords": ["Abhisek", "Dhua"],
  "workbench.iconTheme": "material-icon-theme",
  "editor.bracketPairColorization.enabled": true,
  "terminal.integrated.sendKeybindingsToShell": true,
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "javascript.updateImportsOnFileMove.enabled": "always",
  "typescript.updateImportsOnFileMove.enabled": "always",
  // "terminal.integrated.defaultProfile.windows": "PowerShell",
  "editor.bracketPairColorization.independentColorPoolPerBracketType": true,
  "editor.fontFamily": "fira code, 'Cascadia Code', Consolas, 'Courier New', Monospace",
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
          "storage.modifier", //static keyword
          "storage.type", //class keyword
          "keyword.control",
          "constant.language",
          "entity.other.attribute-name",
          "entity.name.method",
          "keyword.control.import.ts",
          "keyword.control.import.tsx",
          "keyword.control.import.js",
          "keyword.control.flow.js",
          "keyword.control.from.js",
          "keyword.control.from.ts",
          "keyword.control.from.tsx"
        ],
        "settings": {
          "fontStyle": "italic"
        }
      },
      {
        "scope": [
          // the following elements will be displayed in bold
          "entity.name.type.class" // class names
        ],
        "settings": {
          "fontStyle": ""
        }
      },
      {
        "scope": [
          // the following elements will be displayed in bold and italic
          "entity.name.section.markdown" // markdown headlines
        ],
        "settings": {
          "fontStyle": "italic"
        }
      },
      {
        "scope": [
          // the following elements will be excluded from italics
          //   (VSCode has some defaults for italics)
          "invalid",
          "keyword.operator",
          "constant.numeric.css",
          "keyword.other.unit.px.css",
          "constant.numeric.decimal.js",
          "constant.numeric.json",
          "comment.block",
          "entity.other.attribute-name.class.css"
        ],
        "settings": {
          "fontStyle": ""
        }
      }
    ]
  }
}
