class Game

    HANDLER = {
        :rock     => { :rock => :tie,   :paper => :lose,  :scissors => :win},
        :paper    => { :rock => :win,   :paper => :tie,   :scissors => :lose},
        :scissors => { :rock => :lose,  :paper => :win,   :scissors => :tie },
    }
    attr_reader :player_1
    def initialize(player_1, player_2)
        @player_1 = player_1
        @player_2 = player_2
    end
    
    def result
        HANDLER[@player_1][@player_2]
    end
end