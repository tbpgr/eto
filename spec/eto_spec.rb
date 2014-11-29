# encoding: utf-8
require 'spec_helper'
require 'eto'

# rubocop: disable LineLength
describe Eto do
  context :names do
    cases = [
      {
        case_no: 1,
        case_title: 'eto names',
        expected: Eto::JAPANESE_ZODIAC_NAMES
      }
    ]

    cases.each do |c|
      it "|case_no=#{c[:case_no]}|case_title=#{c[:case_title]}" do
        begin
          case_before c

          # -- given --
          # nothing

          # -- when --
          actual = Eto.names

          # -- then --
          expect(actual).to eq(c[:expected])
        ensure
          case_after c
        end
      end

      def case_before(_c)
        # implement each case before
      end

      def case_after(_c)
        # implement each case after
      end
    end
  end

  context :eto_hash do
    cases = [
      {
        case_no: 1,
        case_title: 'eto hash',
        expected: Eto::HASH
      }
    ]

    cases.each do |c|
      it "|case_no=#{c[:case_no]}|case_title=#{c[:case_title]}" do
        begin
          case_before c

          # -- given --
          # nothing

          # -- when --
          actual = Eto.eto_hash

          # -- then --
          expect(actual).to eq(c[:expected])
        ensure
          case_after c
        end
      end

      def case_before(_c)
        # implement each case before
      end

      def case_after(_c)
        # implement each case after
      end
    end
  end

  context :name do
    cases = [
      {
        case_no: 1,
        case_title: 'eto name from year',
        year: 1977,
        japanese_zodiac: true,
        expected: '巳'
      },
      {
        case_no: 2,
        case_title: 'eto name from year',
        year: 1978,
        japanese_zodiac: true,
        expected: '午'
      },
      {
        case_no: 3,
        case_title: 'not integer year',
        year: 'abc',
        japanese_zodiac: true,
        expect_error: true
      },
      {
        case_no: 4,
        case_title: 'eto name from year (japanese_zodiac = false)',
        year: 1965,
        japanese_zodiac: false,
        expected: '乙巳'
      },
      {
        case_no: 5,
        case_title: 'eto name from year (japanese_zodiac = false)',
        year: 1977,
        japanese_zodiac: false,
        expected: '丁巳'
      }
    ]

    cases.each do |c|
      it "|case_no=#{c[:case_no]}|case_title=#{c[:case_title]}" do
        begin
          case_before c

          # -- given --
          # nothing

          # -- when --
          if c[:expect_error]
            expect  { Eto.name(c[:year], c[:japanese_zodiac]) }.to raise_error(ArgumentError)
            next
          end
          actual = Eto.name(c[:year], c[:japanese_zodiac])

          # -- then --
          expect(actual).to eq(c[:expected])
        ensure
          case_after c
        end
      end

      def case_before(_c)
        # implement each case before
      end

      def case_after(_c)
        # implement each case after
      end
    end
  end

  context :emoji do
    cases = [
      {
        case_no: 1,
        case_title: 'eto emoji from year',
        year: 1977,
        expected: ':snake:'
      },
      {
        case_no: 2,
        case_title: 'eto emoji from year',
        year: 1978,
        expected: ':horse:'
      },
      {
        case_no: 3,
        case_title: 'not integer year',
        year: 'abc',
        expect_error: true
      }
    ]

    cases.each do |c|
      it "|case_no=#{c[:case_no]}|case_title=#{c[:case_title]}" do
        begin
          case_before c

          # -- given --
          # nothing

          # -- when --
          if c[:expect_error]
            expect  { Eto.emoji(c[:year]) }.to raise_error(ArgumentError)
            next
          end
          actual = Eto.emoji(c[:year])

          # -- then --
          expect(actual).to eq(c[:expected])
        ensure
          case_after c
        end
      end

      def case_before(_c)
        # implement each case before
      end

      def case_after(_c)
        # implement each case after
      end
    end
  end
end
# rubocop: enable LineLength
