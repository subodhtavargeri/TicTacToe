
@testable import TicTacToe

class TicTacToeViewControllerSpy: TicTacToeViewProtocol {
    var title: String?
    
    func displayTitle(_title: String) {
        self.title = _title
    }
    
}
