# Nix flake templates

プロジェクト用の開発環境をすぐに作れる Nix flake テンプレートです。

## 使い方

このリポジトリをクローンします。

```console
git clone https://github.com/kurosiko/flakes.git ~/src/flakes
```

新しいプロジェクトのディレクトリで、クローンしたリポジトリを指定して初期化します。

```console
mkdir my-project
cd my-project
nix flake init -t path:$HOME/src/flakes
nix develop
```

クローンせずに GitHub から直接利用することもできます。

```console
nix flake init -t github:kurosiko/flakes
```

## ツールを追加する

生成されたプロジェクトの `tools.nix` を編集します。

```nix
{ pkgs }:

[
  pkgs.git
  pkgs.jq
  pkgs.nodejs
]
```

保存後に開発環境へ入り直すと、追加したツールが利用できます。

```console
nix develop
```

すでに `nix develop` 内にいる場合は、いったん `exit` して入り直してください。

## テンプレート一覧

```console
nix flake show path:$HOME/src/flakes
```

現在は汎用的な開発シェル `dev-shell` を提供しており、これがデフォルトのテンプレートです。

```console
nix flake init -t path:$HOME/src/flakes#dev-shell
```
