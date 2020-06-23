require 'fluent/plugin/parser'

module Fluent::Plugin
  class TimeKeyValueParser < Parser
    # Register this parser as "time_key_value"
    Fluent::Plugin.register_parser("time_key_value", self)

    config_param :delimiter, :string, default: " "   # delimiter is configurable with " " as default
    config_param :time_format, :string, default: nil # time_format is configurable

    def configure(conf)
      super

      if @delimiter.length != 1
        raise ConfigError, "delimiter must be a single character. #{@delimiter} is not."
      end

      # TimeParser class is already given. It takes a single argument as the time format
      # to parse the time string with.
      @time_parser = Fluent::TimeParser.new(@time_format)
    end

    def parse(text)
      time, key_values = text.split(" ", 2)
      time = @time_parser.parse(time)
      record = {}
      key_values.split(@delimiter).each { |kv|
        k, v = kv.split("=", 2)
        record[k] = v
      }
      yield time, record
    end
  end
end