@testable import TicTacToe

class GameSpy: GameProtocol {
  
    var gameStatus: Constant.GameStatus = .finished
    
    func playerPlays(index: Int) -> (String?, Constant.GameStatus) {
        return (index == 1) ? ("Player O Wins!!!",.finished) : (Constant.Message.drawGame,.draw)
    }
    
    func getGameStatus() -> Constant.GameStatus {
        return .finished
    }
    
    func getCurrentPlayer() -> Player {
        return Player(name: "X")
    }
    
    func resetGame() {
        gameStatus = .running
    }
}
