struct TicTacToeFactory {
    static func create(router: RouterProtocol) -> TicTacToeViewController {
        let game = Game()
        let view = TicTacToeViewController()
        let presenter = TicTacToePresenter(view: view, game: game)
        view.setupPresenter(_presenter: presenter)
        return view
    }
}

