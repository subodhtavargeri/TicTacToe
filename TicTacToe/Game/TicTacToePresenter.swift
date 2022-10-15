protocol TicTacToePresenterProtocol {
    func loadPresenter()
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
    }
    
    private func displayTitle() {
        view?.displayTitle(_title: "Tic Tac Toe")
    }
    
}
