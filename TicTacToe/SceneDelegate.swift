import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        self.window = UIWindow(windowScene: windowScene)
        
        let navigationController = UINavigationController()
        self.window?.rootViewController = navigationController
        
        let router = TicTacToeRouter.init(navigationController: navigationController)
        router.routeToTicTacToeController()
        window?.makeKeyAndVisible()
    }
    
}

