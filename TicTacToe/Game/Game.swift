class Game {
    
    private (set) var playerX: Player
    private (set) var playerO: Player
    private (set) var currentPlayer: Player
    private (set) var boardArray = [String]()
    
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
    
    func playerPlays(index: Int) {
        currentPlayer = (currentPlayer == playerX) ? playerO : playerX
    }
}
