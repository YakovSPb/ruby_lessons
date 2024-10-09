require 'faraday'
require 'zeitwerk'

loader = Zeitwerk::Loader.for_gem
loader.setup

require_relative 'fun_translations/request'

module FunTranslations

end