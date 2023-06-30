# デバッグ
- VSCodeでF5押す

## エラー色々
### fvm localで指定したバージョンが認識されない
- 異なるFlutterバージョンのプロジェクトをVSCodeの別窓で開いていると認識されないことがあるらしい
  - 開きたいものだけ残して他を閉じればok
- それでもうまくいかないことがあった↓
#### fvm globalで別のバージョンを指定しているとき、うまくいかないことがある
.vscode/settings.jsonに以下を追記

```json
  "dart.flutterSdkPath": "mobile/.fvm/flutter_sdk", // flutter_sdkのパス
  "dart.flutterSdkPaths": ["/Users/${env:USER}/fvm/versions"],
```

`"dart.flutterSdkPath"`を設定することを推奨する記事は多くあったが、`"dart.flutterSdkPaths"`についてはほぼ見当たらなかったので苦労した...
