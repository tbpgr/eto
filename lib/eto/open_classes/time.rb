# encoding: utf-8
require 'eto/eto_core'
require 'time'

# Time
class Time
  def eto
    Eto.name(year)
  end

  def eto_emoji
    Eto.emoji(year)
  end
end
