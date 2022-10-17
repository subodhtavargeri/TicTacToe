@testable import TicTacToe

class GameSpy: GameProtocol {
  
    func playerPlays(index: Int) -> String? {
        return "O"
    }
    
    func getCurrentPlayer() -> Player {
        return Player(name: "X")
    }
    
    func isGameFinished() -> Bool {
        return true
    }
    
}
