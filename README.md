# clab-pyats-mcp

Containerlab、pyATS MCP Server、Codex を組み合わせて、Arista cEOS と Juniper cJunosEvolved を AI から操作するためのサンプル環境です。

本リポジトリでは以下を試すことができます。

- Containerlab によるネットワークラボ構築
- pyATS MCP Server のセットアップ
- Arista cEOS / Juniper cJunosEvolved への接続
- AI エージェントからの自然言語による機器操作
- show コマンドの実行結果取得、IP・OSPF などの設定操作

詳細な構築手順や動作例は以下の記事にまとめています。

## 関連記事

- [Codex + Containerlab + MCP で EOS/Junos を操作してみる](https://qiita.com/k-maki/items/54518a43609b03ef139c)

## 構成イメージ

```text
+---------+        MCP         +----------------+
|  Codex  | <---------------> | pyATS MCP      |
+---------+                   +----------------+
                                      |
                                      |
                           +----------+----------+
                           |                     |
                    +-------------+      +-------------+
                    | Arista cEOS |      | cJunosEVO   |
                    +-------------+      +-------------+
```
