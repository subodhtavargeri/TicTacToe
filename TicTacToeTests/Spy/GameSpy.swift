@testable import TicTacToe

class GameSpy: GameProtocol {
  
    func playerPlays(index: Int) -> String? {
        return  (index == 1) ? "O" : "X"
    }
    
    func getCurrentPlayer() -> Player {
        return Player(name: "X")
    }
    
    func isGameFinished() -> Bool {
        return false
    }
    
}
