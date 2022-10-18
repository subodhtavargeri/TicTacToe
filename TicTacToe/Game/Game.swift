protocol GameProtocol {
    func playerPlays(index: Int)-> (String?,Constant.GameStatus)
    func getCurrentPlayer()-> Player
    func isGameFinished()-> Constant.GameStatus
    func resetGame()
}
class Game: GameProtocol {
    
    private var playerX: Player
    private var playerO: Player
    private var currentPlayer: Player
    private (set) var boardArray = [String]()
    private var gameFinished: Constant.GameStatus = .running
    
    private let winningRules = [[0,1,2],[3,4,5],
                                [6,7,8],[0,3,6],
                                [1,4,7],[2,5,8],
                                [0,4,8],[2,4,6]]
    
    init() {
        playerX = Player(name: "X")
        playerO = Player(name: "O")
        currentPlayer = playerX
        setUpBoardArray()
    }
    
    private func setUpBoardArray() {
        for _ in 1...9 {
            boardArray.append("")
        }
    }
    
    func playerPlays(index: Int)-> (String?,Constant.GameStatus) {
        
        if boardArray[index].isEmpty && gameFinished == .running {
            boardArray[index] = currentPlayer.name
            
            if let value = checkPlayerWinStatus() {
                return (value,gameFinished)
            }
            
            currentPlayer = (currentPlayer == playerX) ? playerO : playerX
            return (boardArray[index],gameFinished)
        }
        return (nil,gameFinished)
    }
    
    private func checkPlayerWinStatus()-> String? {
        
        for rule in winningRules {
            let player0 = boardArray[rule[0]]
            let player1 = boardArray[rule[1]]
            let player2 = boardArray[rule[2]]
            
            if checkIfAnyPlayerMatchesAsPerRule(player0: player0, player1: player1, player2: player2) {
                gameFinished = .finished
                let message = String(format: Constant.Message.playerWins, arguments: [player0])
                return message
            }
        }
        
        if !boardArray.contains("") {
            gameFinished = .draw
            return Constant.Message.drawGame
        }
        return nil
    }
    
    private func checkIfAnyPlayerMatchesAsPerRule(player0: String,
                                                  player1: String,
                                                  player2: String)-> Bool {
        
        return player0 == player1 && player2 == player1 && !player0.isEmpty
    }
    
    func getCurrentPlayer()-> Player {
        return currentPlayer
    }
    
    func isGameFinished()-> Constant.GameStatus {
        return gameFinished
    }
    
    func resetGame() {
        boardArray.removeAll()
        gameFinished = .running
        currentPlayer = playerX
        setUpBoardArray()
    }
}
