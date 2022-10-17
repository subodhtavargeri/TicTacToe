import UIKit

protocol RouterProtocol {
    func routeToPlayerTimer()
}

class TicTacToeRouter: RouterProtocol {
    
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    
    func routeToPlayerTimer() {
        
    }
    
}
