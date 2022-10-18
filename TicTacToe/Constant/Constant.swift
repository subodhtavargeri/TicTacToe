struct Constant {
    
    struct Message {
        static let drawGame = "Game Ends in a Draw!!!"
    }
    
    struct Title {
        static let screenTitle = "Tic Tac Toe"
    }
    
    enum GameStatus {
        case running, finished, draw
    }
}
