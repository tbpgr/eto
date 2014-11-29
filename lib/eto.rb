# encoding: utf-8

# Eto
module Eto
  module_function

  # 十干
  TEN_CALENDAR_SIGNS = %w(庚 辛 壬 癸 甲 乙 丙 丁 戊 己).freeze
  # 十二支
  JAPANESE_ZODIAC_NAMES = %w(子 丑 寅 卯 辰 巳 午 未 申 酉 戌 亥).freeze
  # Eto Hash ( EtoName => EtoEmoji )
  HASH = {
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
  }.freeze

  # get eto names
  def names
    JAPANESE_ZODIAC_NAMES
  end

  # get eto eto_hash
  def eto_hash
    HASH
  end

  # get eto name from year
  def name(year, japanese_zodiac = true)
    int_year = validate_year(year)
    japanese_zodiac_text = JAPANESE_ZODIAC_NAMES[(int_year + 8) % 12]
    return japanese_zodiac_text if japanese_zodiac
    ten_calendar_signs_text = TEN_CALENDAR_SIGNS[(int_year) % 10]
    "#{ten_calendar_signs_text}#{japanese_zodiac_text}"
  end

  # get eto emoji from year
  def emoji(year)
    int_year = validate_year(year)
    HASH[name(int_year)]
  end

  private

  def self.validate_year(year)
    Integer(year)
  end
end
