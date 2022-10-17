import UIKit

protocol RouterProtocol {
    func routeToTicTacToeController()
}

class TicTacToeRouter: RouterProtocol {
    
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    
    func routeToTicTacToeController() {
        let view = TicTacToeFactory.create(router: self)
        navigationController.setViewControllers([view], animated: true)
    }
    
}
