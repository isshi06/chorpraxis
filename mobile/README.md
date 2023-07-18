# デバッグ

- VSCode で F5 押す

## エラー色々

### fvm local で指定したバージョンが認識されない

- 異なる Flutter バージョンのプロジェクトを VSCode の別窓で開いていると認識されないことがあるらしい
  - 開きたいものだけ残して他を閉じれば ok
- それでもうまくいかないことがあった ↓

#### fvm global で別のバージョンを指定しているとき、うまくいかないことがある

.vscode/settings.json に以下を追記

```json
  "dart.flutterSdkPath": "mobile/.fvm/flutter_sdk", // flutter_sdkのパス
  "dart.flutterSdkPaths": ["/Users/${env:USER}/fvm/versions"],
```

`"dart.flutterSdkPath"`を設定することを推奨する記事は多くあったが、`"dart.flutterSdkPaths"`についてはほぼ見当たらなかったので苦労した...

- 一度実行に成功した後、再度実行する際は`dart.flutterSdkPaths`がなくても動いたので発生条件・解決方法ともに正確には不明

## ディレクトリ構造の参考

https://zenn.dev/web_tips/articles/530d02aaf90400
