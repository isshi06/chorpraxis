# About this repository

- Mobile App Portfolio
  - Flutter
- Front-End Portfolio
  - Next.js
- Back-End Portfolio
  - NestJS
  - (or Ruby on Rails)

## TODO

- create mobile directory
  - (create flutter app named mobile ?)

# release→master PR作成 actions
## 手動部分
1. developにマージコミットを作る(厳密にはreleaseブランチにpushで発火するためdevelopである必要はないが、developから開発ブランチ切る運用にしたいため)
   1. featureブランチなど
2. developブランチからreleaseブランチを切ってpush

## 自動部分
3. release→master PRが作成される
4. yarn version_upが実行されコミット, プッシュされる

あとは普段通りマージするだけ
ここでマージした際、delete branchしないように注意する必要がある

# release→developの戻しPR作成 actions
## 手動部分
1. release→masterをマージ
   1. 厳密にはmaster宛PRをマージが発火条件

## 自動部分
1. release→developのPRが作成される
   1. 主な差分としては`yarn version_up`の変更点になるはず
