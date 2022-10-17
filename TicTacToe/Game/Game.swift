protocol GameProtocol {
    func playerPlays(index: Int)-> String?
    func getCurrentPlayer()-> Player
}
class Game {
    
    private var playerX: Player
    private var playerO: Player
    private var currentPlayer: Player
    private (set) var boardArray = [String]()
    private (set) var gameFinished = false
    
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
    
    func playerPlays(index: Int)-> String? {
        if boardArray[index].isEmpty {
            boardArray[index] = currentPlayer.name
            currentPlayer = (currentPlayer == playerX) ? playerO : playerX
            
            if let value = checkPlayerWinStatus() {
                gameFinished = true
                return value
            }
            
            return boardArray[index]
        }
        return nil
    }
    
    private func checkPlayerWinStatus()-> String? {
        
        for rule in winningRules {
            let player0 = boardArray[rule[0]]
            let player1 = boardArray[rule[1]]
            let player2 = boardArray[rule[2]]
            
            if player0 == player1 && player2 == player1 && !player0.isEmpty {
                return player0
            }
        }
        
        if !boardArray.contains("") {
            return Constant.Message.drawGame
        }
        return nil
    }
    
    func getCurrentPlayer()-> Player {
        return currentPlayer
    }
}
