protocol TicTacToePresenterProtocol {
    func loadPresenter()
}

class TicTacToePresenter: TicTacToePresenterProtocol {
    
    private weak var view: TicTacToeViewProtocol?
    
    init(view: TicTacToeViewProtocol) {
        self.view = view
    }
    
    func loadPresenter() {
        displayTitle()
    }
    
    private func displayTitle() {
        view?.displayTitle(_title: "Tic Tac Toe")
    }
    
}
