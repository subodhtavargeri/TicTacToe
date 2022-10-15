import UIKit

protocol TicTacToeViewProtocol: AnyObject {
    func displayTitle(_title: String)
    func displayCurrentPlayerName(playerName: String)
}

class TicTacToeViewController: UIViewController {
    
}

extension TicTacToeViewController: TicTacToeViewProtocol {
    
    func displayTitle(_title: String) {
        self.title = _title
    }
    
    func displayCurrentPlayerName(playerName: String) {
        
    }
    
}
