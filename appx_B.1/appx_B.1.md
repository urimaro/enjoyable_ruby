# B.1 RubyGems

- `gem list` : インストールされているgemを一覧で表示する
- `gem search name` : 名前が `name` のgemを検索する  
    オプション `-l` を指定するとインストール済みのgemから検索する
    - `name` : gemの名前
- `gem install name` : 名前が `name` のgemをインストールする
    - `name` : gemの名前、またはダウンロードしたファイルの名前
- `gem fetch name` : 名前が `name` のgemをダウンロードする
    - `name` : gemの名前
- `gem update name` : 名前が `name` のgemを最新のバージョンに更新する  
    `name` を指定しない場合、すべてのgemが対象になる  
    `--system` を指定するとRubyGems自体を更新する
    - `name` : gemの名前

