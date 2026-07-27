# Project development environment

このプロジェクトの開発環境は Nix flake で管理されています。

## 開発環境を使う

```console
nix develop
```

`direnv` を利用している場合は、初回のみ許可します。

```console
direnv allow
```

## ツールを追加する

`tools.nix` のリストへ必要なパッケージを追加します。

```nix
{ pkgs }:

[
  pkgs.git
  pkgs.jq
  pkgs.nodejs
]
```

パッケージ名は [NixOS Search](https://search.nixos.org/packages) で検索できます。

変更後は開発環境へ入り直してください。

## Nix ファイルを整形する

```console
nix fmt
```
