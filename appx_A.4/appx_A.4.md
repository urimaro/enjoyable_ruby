# A.4 Unixでのインストール

Vagrantでubuntu環境を用意して試した  

1. Vagrantでubuntu環境を用意する  
    以下のboxを使用した
    - ubuntu/bionic64(virtualbox, v20200124.0.0)
2. `rbenv` で `Ruby 2.6.5` をインストールする
3. 最新のソースを使ってビルドする

## Vagrant

1. `brew cask upgrade`
1. `vagrant plugin expunge --reinstall`
1. `vagrant box update --box ubuntu/bionic64`
1. `vagrant init`
1. edit Vagrantfile  
    config.vm.box = "ubuntu/bionic64"
1. `vagrant up`
1. `vagrant ssh`

## ubuntu
### apt

1. `sudo apt update`
1. `sudo apt list --upgradable`
1. `sudo apt upgrade`
1. `reboot`

### rbenv

rbenv
https://github.com/rbenv/rbenv

Installation > Basic GitHub Checkout

1. `git clone https://github.com/rbenv/rbenv.git ~/.rbenv`
1. `echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc`
1. `~/.rbenv/bin/rbenv init`
1. `echo 'eval "$(rbenv init -)"' >> ~/.bashrc`
1. `exec $SHELL -l`
1. `curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash`
    ```
    Checking for `rbenv' in PATH: /home/vagrant/.rbenv/bin/rbenv
    Checking for rbenv shims in PATH: OK
    Checking `rbenv install' support: not found
    Unless you plan to add Ruby versions manually, you should install ruby-build.
    Please refer to https://github.com/rbenv/ruby-build#installation

    Counting installed Ruby versions: none
      There aren't any Ruby versions installed under `/home/vagrant/.rbenv/versions'.
      You can install Ruby versions like so: rbenv install 2.2.4
    Checking RubyGems settings: OK
    Auditing installed plugins: OK
    ```

### ruby-build

ruby-build
https://github.com/rbenv/ruby-build

Installation

1. `mkdir -p "$(rbenv root)"/plugins`
1. `git clone https://github.com/rbenv/ruby-build.git $(rbenv root)/plugins/ruby-build`
1. `curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash`

    ```
    Checking for `rbenv' in PATH: /home/vagrant/.rbenv/bin/rbenv
    Checking for rbenv shims in PATH: OK
    Checking `rbenv install' support: /home/vagrant/.rbenv/plugins/ruby-build/bin/rbenv-install (ruby-build 20200115-8-g73b926b)
    Counting installed Ruby versions: none
      There aren't any Ruby versions installed under `/home/vagrant/.rbenv/versions'.
      You can install Ruby versions like so: rbenv install 2.2.4
    Checking RubyGems settings: OK
    Auditing installed plugins: OK
    ```
1. `sudo apt update`
1. `sudo apt install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev`

### 2.7.0

1. `rbenv install -l`
1. `rbenv install 2.7.0`
1. `rbenv versions`

### master

`~/.rbenv/versions` に `master` としてインストールする

1. `git clone https://github.com/ruby/ruby.git`
1. `cd ruby`
1. `autoconf`
1. `./configure --prefix="$(rbenv root)/versions/master"`

    ```
    checking for ruby... /home/vagrant/.rbenv/shims/ruby
    configure: error: cannot run /bin/bash tool/config.sub
    ```
1. `rbenv global 2.7.0`  
    Rubyがインストールされていないとbuildできない？
1. `./configure --prefix="$(rbenv root)/versions/master"`

    ```
    :
    ---
    Configuration summary for ruby version 2.8.0

       * Installation prefix: /home/vagrant/.rbenv/versions/master
       * exec prefix:         ${prefix}
       * arch:                x86_64-linux
       * site arch:           ${arch}
       * RUBY_BASE_NAME:      ruby
       * ruby lib prefix:     ${libdir}/${RUBY_BASE_NAME}
       * site libraries path: ${rubylibprefix}/${sitearch}
       * vendor path:         ${rubylibprefix}/vendor_ruby
       * target OS:           linux
       * compiler:            gcc
       * with pthread:        yes
       * with coroutine:      amd64
       * enable shared libs:  no
       * dynamic library ext: so
       * CFLAGS:              ${optflags} ${debugflags} ${warnflags}
       * LDFLAGS:             -L. -fstack-protector-strong -rdynamic \
                              -Wl,-export-dynamic
       * DLDFLAGS:            -Wl,--compress-debug-sections=zlib
       * optflags:            -O3
       * debugflags:          -ggdb3
       * warnflags:           -Wall -Wextra -Werror=deprecated-declarations \
                              -Werror=duplicated-cond \
                              -Werror=implicit-function-declaration \
                              -Werror=implicit-int \
                              -Werror=misleading-indentation \
                              -Werror=pointer-arith -Werror=write-strings \
                              -Wimplicit-fallthrough=0 -Wmissing-noreturn \
                              -Wno-cast-function-type \
                              -Wno-constant-logical-operand -Wno-long-long \
                              -Wno-missing-field-initializers \
                              -Wno-overlength-strings \
                              -Wno-packed-bitfield-compat \
                              -Wno-parentheses-equality -Wno-self-assign \
                              -Wno-tautological-compare -Wno-unused-parameter \
                              -Wno-unused-value -Wsuggest-attribute=format \
                              -Wsuggest-attribute=noreturn -Wunused-variable
       * strip command:       strip -S -x
       * install doc:         rdoc
       * JIT support:         yes
       * man page type:       doc
       * BASERUBY -v:         ruby 2.7.0p0 (2019-12-25 revision 647ee6f091) \
                              [x86_64-linux]
    ```

1. `make && make install`

## RubyをbuildするのにRubyが必要なのか？

`ruby-jp` の `#newbie` で質問してみた

---

> ソースを使ってRubyをbuildする場合の質問です。
> Ubuntu Bionicにて、ソースを使って以下の手順でRubyをbuildしようとしました。
> ```
> sudo apt update
> sudo apt install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev
> git clone https://github.com/ruby/ruby.git
> cd ruby
> autoconf
> ./configure --prefix="$(rbenv root)/versions/master"
> make && make install
> ```
> ところが、`./configure` で以下のエラーが発生しました。
> ```
> checking for ruby... /home/vagrant/.rbenv/shims/ruby
> configure: error: cannot run /bin/bash tool/config.sub
> ```
> rbenv(ruby-build)でインストールしたRubyをglobalに指定したところ、`./configure` は正常に処理されました。
> ソースからRubyをbuildするにはRubyが必要なのでしょうか？
> また、rbenv(ruby-build)でRubyをインストールする際、Rubyがなくてもエラーは発生しなかったのですが、ソースからRubyをbuildする場合と、どのような違いがあるのでしょうか？

### RubyをbuildするのにRubyが必要なのか？

必要  
具体的には `autoconf` でRubyが必要になる

### rbenv(ruby-build)でRubyをインストールする場合と、ソースからRubyをbuildする場合では、どのような違いがあるのか？

rbenv(ruby-build)で `2.7.0` などバージョンニングされているものをインストールする際はtarballをダウンロードしている  
tarballを使う場合は、Rubyは不要  
tarballには `autoconf` が生成した `./configure` などのファイルが含まれている

