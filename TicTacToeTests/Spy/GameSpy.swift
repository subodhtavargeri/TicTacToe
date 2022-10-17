@testable import TicTacToe

class GameSpy: GameProtocol {
    
    func playerPlays(index: Int) -> (String?, Bool) {
        return  (index == 1) ? ("O",true) : ("X",false)
    }
    
    func getCurrentPlayer() -> Player {
        return Player(name: "X")
    }
    
    func isGameFinished() -> Bool {
        return false
    }
    
}
