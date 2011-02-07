package visifoos

class Match {

    Player blackDefense
    Player blackOffense
    Player whiteDefense
    Player whiteOffense
    String winningTeam
    boolean doubleVictory
    static belongsTo = [series:Series]
    
    static constraints = {
        winningTeam blank:false
    }
}
