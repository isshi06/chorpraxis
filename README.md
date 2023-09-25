# About this repository

## WIP
- Mobile App Portfolio
  - Flutter

## TODO
- Front-End Portfolio
  - Next.js
- Back-End Portfolio
  - NestJS
  - (or Ruby on Rails)

## TODO

- create mobile directory
  - (create flutter app named mobile ?)

# release→master PR 作成 actions

## 手動部分

1. develop にマージコミットを作る(厳密には release ブランチに push で発火するため develop である必要はないが、develop から開発ブランチ切る運用にしたいため)
   1. feature ブランチなど
2. develop ブランチから release ブランチを切って push

## 自動部分

3. release→master PR が作成される
4. yarn version_up が実行されコミット, プッシュされる

あとは普段通りマージするだけ
ここでマージした際、delete branch しないように注意する必要がある

# release→develop の戻し PR 作成 actions

## 手動部分

1. release→master をマージ
   1. 厳密には master 宛 PR をマージが発火条件

## 自動部分

1. master→develop の PR が作成される
   1. 主な差分としては`yarn version_up`の変更点になるはず
