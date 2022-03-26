# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "ipgeobase"

require "simplecov"
SimpleCov.start

require "webmock/minitest"
require "minitest/autorun"
