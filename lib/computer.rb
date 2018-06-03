class Computer
    attr_reader :choice
    MOVES = [:rock, :paper, :scissors]

    def choice
        MOVES.sample
    end
end