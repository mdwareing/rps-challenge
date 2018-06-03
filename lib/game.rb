class Game

    OUTCOMES = {
        :rock     => { :rock => :tie,   :paper => :lose,  :scissors => :win},
        :paper    => { :rock => :win,   :paper => :tie,   :scissors => :lose},
        :scissors => { :rock => :lose,  :paper => :win,   :scissors => :tie },
    }

    attr_reader :player_1, :player_2
    
    def initialize(args)
        @player_1 = args[:player_1]
        @player_2 = args[:player_2]
    end
    
    def result
        OUTCOMES[@player_1][@player_2]
    end
end