@testable import TicTacToe

class GameSpy: GameProtocol {
    
    func playerPlays(index: Int) -> (String?, Constant.GameStatus) {
        return (index == 1) ? ("O",.finished) : ("X",.draw)
    }
    
    func isGameFinished() -> Constant.GameStatus {
        return .finished
    }
    
    func getCurrentPlayer() -> Player {
        return Player(name: "X")
    }
    
}
