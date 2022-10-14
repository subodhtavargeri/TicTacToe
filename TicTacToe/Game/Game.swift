class Game {
    
    private (set) var playerX: Player
    private (set) var playerO: Player
    private (set) var currentPlayer: Player
    
    init() {
        playerX = Player(name: "X")
        playerO = Player(name: "O")
        currentPlayer = playerX
    }
}
