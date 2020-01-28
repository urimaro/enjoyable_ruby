# A.2 

「Windows 10 Pro 1909」にRubyInstallerを使って、Ruby 2.6.5をインストールした

## インストール
### Environment

OS: Windows 10 Pro 1909
RubyInstaller: Ruby+DevKit 2.6.5-1(x64)

### 手順

#### Download installer

RubyInstaller download page  
https://rubyinstaller.org/downloads/

#### RubyInstaller

1. Ruby 2.6.5-1-x64 with MSYS2 License Agreement  
    以下のとおり入力し、[Next]をクリックする

    - I accept the License: ON
2. Installation Destination and Optional Tasks  
    以下のとおり入力し、[Install]をクリックする

    - folder name: C:¥Ruby26-x64(default)
    - Add Ruby executables to your PATH: OFF
    - Associate .rb and .rbw files with this Ruby Installation: OFF
    - Use UTF-8 as default external encoding: OFF(default)
3. Select Components  
    以下のとおり入力し、[Next]をクリックする
    - MSYS2 development toolchain 2019-10-01: ON(default)
4. Completing the Ruby 2.6.5-1-x64 with MSYS2 Setup Wizard  
    以下のとおり入力し、[Finish]をクリックする
    - run 'ridk install' to setup MSYS2 and development toolchain.  
        MSYS2 is required to install gems with C extensions.: ON(default)

#### MSYS2

1. RubyInstaller2 for Windows  
    以下のとおり入力し、[Enter]を押下る  
    1 - MSYS2 base installation  
    2 - MSYS2 system update (optional)  
    3 - MSYS2 and MINGW development toolchain

    - Which components shall be installed? If unsure press ENTER [1,2,3]: 1[Enter]

2. MSYS2 seems to be properly installed
    以下のとおり入力し、[Enter]を押下る  
    1 - MSYS2 base installation  
    2 - MSYS2 system update (optional)  
    3 - MSYS2 and MINGW development toolchain

    - Which components shall be installed? If unsure press ENTER [1,2,3]: [Enter]

## インストールされていることの確認

1. コマンドプロンプトを起動する  
    [Start] > [Start Command Prompt with Ruby]
2. コマンドを実行する
    ```
    C:\Users\goh>ruby -v
    ruby 2.6.5p114 (2019-10-01 revision 67812) [x64-mingw32]
    ```

## gem `sqlite3` のインストール

1. コマンドプロンプトを起動する  
    [Start] > [Start Command Prompt with Ruby]
2. コマンドを実行する

    ```
    C:\Users\goh\enjoyable_ruby>gem install sqlite3
    Fetching sqlite3-1.4.2.gem
    Temporarily enhancing PATH for MSYS/MINGW...
    Installing required msys2 packages: mingw-w64-x86_64-sqlite3
    Building native extensions. This could take a while...
    Successfully installed sqlite3-1.4.2
    Parsing documentation for sqlite3-1.4.2
    Installing ri documentation for sqlite3-1.4.2
    Done installing documentation for sqlite3 after 3 seconds
    1 gem installed
    ```

## `sqlite3` がインストールされたことの確認

```
C:\Users\goh\enjoyable_ruby>gem list

*** LOCAL GEMS ***

bigdecimal (default: 1.4.1)
bundler (default: 1.17.2)
cmath (default: 1.0.0)
csv (default: 3.0.9)
date (default: 2.0.0)
dbm (default: 1.0.0)
did_you_mean (1.3.0)
e2mmap (default: 0.1.0)
etc (default: 1.0.1)
fcntl (default: 1.0.0)
fiddle (default: 1.0.0)
fileutils (default: 1.1.0)
forwardable (default: 1.2.0)
gdbm (default: 2.0.0)
io-console (default: 0.4.7)
ipaddr (default: 1.2.2)
irb (default: 1.0.0)
json (default: 2.1.0)
logger (default: 1.3.0)
matrix (default: 0.1.0)
minitest (5.11.3)
mutex_m (default: 0.1.0)
net-telnet (0.2.0)
openssl (default: 2.1.2)
ostruct (default: 0.1.0)
power_assert (1.1.3)
prime (default: 0.1.0)
psych (default: 3.1.0)
rake (12.3.2)
rdoc (default: 6.1.2)
rexml (default: 3.1.9)
rss (default: 0.2.7)
scanf (default: 1.0.0)
sdbm (default: 1.0.0)
shell (default: 0.7)
sqlite3 (1.4.2)
stringio (default: 0.0.2)
strscan (default: 1.0.0)
sync (default: 0.5.0)
test-unit (3.2.9)
thwait (default: 0.1.0)
tracer (default: 0.1.0)
webrick (default: 1.4.2)
xmlrpc (0.3.0)
zlib (default: 1.0.0)
```

## 「23.5 データの検索」の `postal.rb` の実行

```
C:\Users\goh\enjoyable_ruby>ruby postal.rb 1060031
1060031 東京都港区西麻布

4.8049099秒

C:\Users\goh\enjoyable_ruby>ruby postal.rb 1060031
1060031 東京都港区西麻布

0.0360901秒
```

**ビルドする必要はなかった**

## その他

- MSYS2: Windows向けのソフトウェア配布、構築環境  
    https://www.msys2.org/
- Pacman: Arch系Linuxに採用されているパッケージマネージャー
    - Official site: archlinux.org/pacman/
    - Arch LinuxのWiki
        - 英語: https://wiki.archlinux.org/index.php/Pacman
        - 日本語: https://wiki.archlinux.jp/index.php/Pacman

