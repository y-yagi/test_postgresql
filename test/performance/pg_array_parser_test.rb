require 'benchmark'
require 'benchmark/ips'
require 'ruby-prof'
require 'pg_array_parser'
require 'active_record/connection_adapters/postgresql/array_parser'

class MyPgArrayParser
  include PgArrayParser
end

class RailsPgArrayParser
  include ActiveRecord::ConnectionAdapters::PostgreSQL::ArrayParser
end

test_string = '{some,strings that,"May have some ,\'s"}'

Benchmark.ips do |x|
  x.report('pg_array_parser') do
    parser = MyPgArrayParser.new
    parser.parse_pg_array test_string
  end
  x.report('rails_pg_array_parser') do
    parser = RailsPgArrayParser.new
    parser.parse_pg_array test_string
  end
  x.compare!
end
