@testable import TicTacToe

class GameSpy: GameProtocol {
    
    func playerPlays(index: Int) -> String? {
        return ""
    }
    
    func getCurrentPlayer() -> Player {
        return Player(name: "X")
    }
    
}
