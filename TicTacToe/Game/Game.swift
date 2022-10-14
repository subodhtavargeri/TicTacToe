class Game {
    
    private (set) var playerX: Player
    private (set) var playerO: Player
    private (set) var currentPlayer: Player
    private (set) var boardArray = [Int]()
    
    init() {
        playerX = Player(name: "X")
        playerO = Player(name: "O")
        currentPlayer = playerX
    }
    
    func playerPlays() {
        currentPlayer = (currentPlayer == playerX) ? playerO : playerX
    }
}
