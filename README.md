# :mouse: Eto

Get Eto (Japanese Zodiac :mouse::cow::tiger::rabbit::dragon::snake::horse::sheep::monkey::chicken::dog::boar: ) name or emoji.

[![Gem Version](https://badge.fury.io/rb/eto.svg)](http://badge.fury.io/rb/eto)
[![Build Status](https://travis-ci.org/tbpgr/eto.png?branch=master)](https://travis-ci.org/tbpgr/eto)
[![Coverage Status](https://coveralls.io/repos/tbpgr/eto/badge.png)](https://coveralls.io/r/tbpgr/eto)

## :arrow_down: Installation

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

## :cl: Commands (Command Line)
|name|args|memo|
|:--|:--|:--|
|names|--|全ての十二支を配列で返却|
|name|year, japanese_zodiac|year の 十干十二支 or 十二支名を取得|
|emoji|year|year に対応する十二支の emoji を取得|

## :cl::scroll: Usage ( Command Line Interface)
### names
~~~bash
$ eto names
子丑寅卯辰巳午未申酉戌亥
~~~

### name year
~~~bash
$ eto name 1977
巳
$ eto name 1978
午
$ eto name 1965 --not-japanese_zodiac
丁巳
$ eto name 1977 --not-japanese_zodiac
乙巳
~~~

### emoji year
~~~bash
$ eto emoji 1977
:snake:
$ eto emoji 1978
:horse:
~~~

## :scroll: Usage ( require gem )

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
Eto.name(1965, true) #=> '巳'
Eto.name(1977, true) #=> '巳'
Eto.name(1978, true) #=> '午'
Eto.name(1965, false) #=> '乙巳'
Eto.name(1977, false) #=> '丁巳'
Eto.name(1978, false) #=> '戊午'
~~~

### Eto.emoji(year)
~~~ruby
require 'eto'
Eto.emoji(1977) #=> ':snake:'
Eto.emoji(1978) #=> ':horse:'
~~~

## :two_men_holding_hands: Contributing :two_women_holding_hands:

1. Fork it ( https://github.com/tbpgr/eto/fork )
1. Create your feature branch (git checkout -b my-new-feature)
1. Commit your changes (git commit -am 'Add some feature')
1. Push to the branch (git push origin my-new-feature)
1. Create a new Pull Reques