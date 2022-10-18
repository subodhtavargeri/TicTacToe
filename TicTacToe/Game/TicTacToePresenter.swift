protocol TicTacToePresenterProtocol {
    func loadPresenter()
    func playerClickEvent(index: Int)
}

class TicTacToePresenter: TicTacToePresenterProtocol {
    
    private weak var view: TicTacToeViewProtocol?
    private let game: GameProtocol
    
    init(view: TicTacToeViewProtocol,
         game: GameProtocol) {
        self.view = view
        self.game = game
    }
    
    func loadPresenter() {
        displayTitle()
        displayCurrentPlayer()
    }
    
    private func displayTitle() {
        view?.displayTitle(_title: Constant.Title.screenTitle)
    }
    
    private func displayCurrentPlayer() {
        let playerName = game.getCurrentPlayer().name
        view?.displayCurrentPlayerName(playerName: playerName)
    }
    
    func playerClickEvent(index: Int) {
        
        let clickData = game.playerPlays(index: index)
        
        if let message = clickData.0 {
            
            let gameStatus = clickData.1
            
            if gameStatus == .finished || gameStatus == .draw {
                view?.setButtonTitle(title: game.getCurrentPlayer().name)
                view?.displayCurrentPlayerName(playerName: message)
                return
            }
            
            view?.setButtonTitle(title: message)
            displayCurrentPlayer()
        }
    }
}
