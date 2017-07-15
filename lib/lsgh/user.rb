module Lsgh
  class User
    attr_reader :name

    def initialize(name)
      @name = name
      @public = []
      @private = []
    end

    def add(repo)
      case repo.type
      when :public
        @public << repo
      when :private
        @private << repo
      end
    end

    def to_paths
      [
        ['public', @public],
        ['private', @private]
      ].map do |type, value|
        value.map do |repo|
          repo.to_paths.map do |path|
            "#{@name}/#{type}/#{path}"
          end
        end.inject(:+).to_a
      end.inject(:+)
    end
  end
end
