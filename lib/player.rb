class Player
    attr_reader :name, :option
    attr_accessor :choice
    def initialize name
        @name = name
        @option = option
    end

    def choice option
        @option = option.to_sym
    end
end