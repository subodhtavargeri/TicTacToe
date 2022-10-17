protocol TicTacToePresenterProtocol {
    func loadPresenter()
    func playerClickEvent(index: Int)-> String?
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
    
    func playerClickEvent(index: Int)-> String? {
        return game.playerPlays(index: index)
    }
}
