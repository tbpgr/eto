# encoding: utf-8
require 'eto/eto_core'

# Integer
class Integer
  def eto
    Eto.name(self)
  end

  def eto_emoji
    Eto.emoji(self)
  end
end
