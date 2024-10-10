require 'faraday'
require 'json'
require 'zeitwerk'

loader = Zeitwerk::Loader.for_gem
loader.setup

require_relative 'fun_translations/request'

module FunTranslations
    def self.client(token = nil)
        FunTranslations::Client.new token
    end
end