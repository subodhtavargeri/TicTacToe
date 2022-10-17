import UIKit

protocol TicTacToeViewProtocol: AnyObject {
    func displayTitle(_title: String)
    func displayCurrentPlayerName(playerName: String)
    func setButtonTitle(title: String)
}

class TicTacToeViewController: UIViewController {
    
    let labelCurrentPlayer = UILabel()
    var presenter: TicTacToePresenterProtocol?
    
    func setupPresenter(_presenter: TicTacToePresenterProtocol) {
        self.presenter = _presenter
    }
    
}

extension TicTacToeViewController: TicTacToeViewProtocol {
    
    func displayTitle(_title: String) {
        self.title = _title
    }
    
    func displayCurrentPlayerName(playerName: String) {
        labelCurrentPlayer.text = playerName
    }
    
    func setButtonTitle(title: String) {
        
    }
    
}
