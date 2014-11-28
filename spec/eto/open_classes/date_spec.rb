# encoding: utf-8
require 'spec_helper'
require 'eto/open_classes/date'

describe Date do
  context :eto do
    cases = [
      {
        case_no: 1,
        case_title: 'eto name from date',
        date: Date.new(1977, 1, 1),
        expected: '巳'
      },
      {
        case_no: 2,
        case_title: 'eto name from date',
        date: Date.new(1978, 1, 1),
        expected: '午'
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
            expect  { c[:date].eto }.to raise_error(NoMethodError)
            next
          end
          actual = c[:date].eto

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

  context :eto_emoji do
    cases = [
      {
        case_no: 1,
        case_title: 'eto name from year',
        date: Date.new(1977, 1, 1),
        expected: ':snake:'
      },
      {
        case_no: 2,
        case_title: 'eto name from year',
        date: Date.new(1978, 1, 1),
        expected: ':horse:'
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
            expect  { c[:date].eto_emoji }.to raise_error(NoMethodError)
            next
          end
          actual = c[:date].eto_emoji

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
