# Eto

Get Eto (Japanese Zodiac) name or emoji.

## Installation

Add this line to your application's Gemfile:

~~~bash
gem 'eto'
~~~

And then execute:

~~~
$ bundle
~~~

Or install it yourself as:

~~~bash
$ gem install ruboty-articlegen
~~~

### Commands (Command Line)
|name|args|memo|
|:--|:--|:--|
|names|--|全ての干支を配列で返却|
|name|year|year の干支名を取得|
|emoji|year|year に対応する干支の emoji を取得|

## Usage ( Command Line Interface)
### names
~~~bash
$ eto names
子丑寅卯辰巳午未申酉戌亥
~~~

### name year
~~~bash
$ eto name 1977
巳
$ eto name 1977
午
~~~

### emoji year
~~~bash
$ eto emoji 1977
:snake:
$ eto emoji 1977
:horse:
~~~

## Usage ( require gem )

### Eto.names
~~~ruby
require 'eto'
Eto.names #=> ['子', '丑', '寅', '卯', '辰', '巳', '午', '未', '申', '酉', '戌', '亥']
~~~

### Eto.eto_hash
~~~ruby
require 'eto'
Eto.eto_hash
__END__
output
{
  '子' => ':mouse:', 
  '丑' => ':cow:', 
  '寅' => ':tiger:', 
  '卯' => ':rabbit:', 
  '辰' => ':dragon:', 
  '巳' => ':snake:', 
  '午' => ':horse:', 
  '未' => ':sheep:', 
  '申' => ':monkey:', 
  '酉' => ':chicken:', 
  '戌' => ':dog:', 
  '亥' => ':boar:'
}
~~~

### Eto.name(year)
~~~ruby
require 'eto'
Eto.name(1977) #=> '巳'
Eto.name(1978) #=> '午'
~~~

### Eto.emoji(year)
~~~ruby
require 'eto'
Eto.emoji(1977) #=> ':snake:'
Eto.emoji(1978) #=> ':horse:'
~~~

## Contributing

1. Fork it ( https://github.com/tbpgr/eto/fork )
1. Create your feature branch (git checkout -b my-new-feature)
1. Commit your changes (git commit -am 'Add some feature')
1. Push to the branch (git push origin my-new-feature)
1. Create a new Pull Reques