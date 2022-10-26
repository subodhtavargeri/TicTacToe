protocol GameProtocol {
    func playerPlays(index: Int)-> (title: String?,gameState: Constant.GameStatus)
    func getCurrentPlayer()-> Player
    func getGameStatus()-> Constant.GameStatus
    func resetGame()
}
class Game: GameProtocol {
    
    private var playerX: Player
    private var playerO: Player
    private var currentPlayer: Player
    private var boardArray = [String]()
    private var gameStatus: Constant.GameStatus = .running
    
    private enum Postions: Int {
        case topLeft = 0, topCentre = 1, topRight = 2, middleLeft = 3, middleCentre = 4, middleRight = 5,
             bottomLeft = 6, bottomCentre = 7, bottomRight = 8
    }
    
    private let winningRules = [[Postions.topLeft.rawValue,Postions.topCentre.rawValue,Postions.topRight.rawValue],[Postions.middleLeft.rawValue,Postions.middleCentre.rawValue,Postions.middleRight.rawValue],
        [Postions.bottomLeft.rawValue,Postions.bottomCentre.rawValue,Postions.bottomRight.rawValue],[Postions.topLeft.rawValue,Postions.middleLeft.rawValue,Postions.bottomLeft.rawValue],
         [Postions.topCentre.rawValue,Postions.middleCentre.rawValue,Postions.bottomCentre.rawValue],[Postions.topRight.rawValue,Postions.middleRight.rawValue,Postions.bottomRight.rawValue],
        [Postions.topLeft.rawValue,Postions.middleCentre.rawValue,Postions.bottomRight.rawValue],[Postions.topRight.rawValue,Postions.middleCentre.rawValue,Postions.bottomLeft.rawValue]]
    
    
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
    
    func playerPlays(index: Int)-> (title: String?,gameState: Constant.GameStatus) {
        
        if boardArray[index].isEmpty && gameStatus == .running {
            boardArray[index] = currentPlayer.name
            
            if let value = checkPlayerWinStatus() {
                return (value,gameStatus)
            }
            
            currentPlayer = (currentPlayer == playerX) ? playerO : playerX
            return (boardArray[index],gameStatus)
        }
        return (nil,gameStatus)
    }
    
    private func checkPlayerWinStatus()-> String? {
        
        for rule in winningRules {
            let player0 = boardArray[rule[0]]
            let player1 = boardArray[rule[1]]
            let player2 = boardArray[rule[2]]
            
            if checkIfAnyPlayerMatchesAsPerRule(player0: player0, player1: player1, player2: player2) {
                gameStatus = .finished
                let message = String(format: Constant.Message.playerWins, arguments: [player0])
                return message
            }
        }
        
        if !boardArray.contains("") {
            gameStatus = .draw
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
    
    func getGameStatus()-> Constant.GameStatus {
        return gameStatus
    }
    
    func resetGame() {
        boardArray.removeAll()
        gameStatus = .running
        currentPlayer = playerX
        setUpBoardArray()
    }
}
