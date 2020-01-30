# B.2 コマンドラインオプション

詳細はP506の一覧や以下のサイトを参照

- [Ruby 2.6.0 リファレンスマニュアル > Rubyの起動](https://docs.ruby-lang.org/ja/2.6.0/doc/spec=2frubycmd.html#ruby)

以下のオプションは使うことがありそう

- `-c` : スクリプトの文法チェックを行う
- `-d` : デバッグモードを有効にする
- `-e 'command'` : `command` で1行のプログラムを指定する  
    複数指定できる

    ```
    goh@goh ~/s/g/u/enjoyable_ruby> ruby -e "5.times do |i|" -e "puts i" -e "end"
    0
    1
    2
    3
    4
    ```

    ```
    goh@goh ~/s/g/u/enjoyable_ruby> ruby -e "5.times do |i|; puts i; end"
    0
    1
    2
    3
    4
    ```

- `-Eex:in` : デフォルト外部エンコーディング `ex` とデフォルト内部エンコーディング `in` を指定する  
    `in` は省略可能
- `-v` : バージョン番号を表示し、冗長モードを有効にする
- `--verbose` : 冗長モードを有効にする
- `--version` : バージョン番号を表示して終了する

