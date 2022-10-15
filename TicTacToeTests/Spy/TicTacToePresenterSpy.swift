@testable import TicTacToe

class TicTacToePresenterSpy: TicTacToePresenterProtocol {
    
    func loadPresenter() {
        
    }
    
    func playerClickEvent(index: Int) -> String? {
        return "O"
    }
    
}
