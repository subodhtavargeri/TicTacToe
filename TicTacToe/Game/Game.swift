class Game {
    
    private (set) var playerX: Player
    private (set) var playerO: Player
    
    init() {
        playerX = Player(name: "X")
        playerO = Player(name: "O")
    }
}
