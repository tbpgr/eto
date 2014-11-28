# encoding: utf-8
require 'eto/eto_core'
require 'date'

# Date
class Date
  def eto
    Eto.name(year)
  end

  def eto_emoji
    Eto.emoji(year)
  end
end
