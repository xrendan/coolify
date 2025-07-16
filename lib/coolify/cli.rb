# frozen_string_literal: true

require "thor"

module Coolify
  class CLI < Thor
    extend ThorExt::Start

    map %w[-v --version] => "version"

    desc "version", "Display coolify version", hide: true
    def version
      say "coolify/#{VERSION} #{RUBY_DESCRIPTION}"
    end
  end
end
