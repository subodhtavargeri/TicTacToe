import XCTest
@testable import TicTacToe

class TicTacToePresenterTests: XCTestCase {
    
    func test_ViewTitleIsSet_WhenPresenterLoads() {
        let view = TicTacToeViewControllerSpy()
        let game = GameSpy()
        let presenter = TicTacToePresenter(view: view, game: game)
        
        presenter.loadPresenter()
        
        let expectation = "Tic Tac Toe"
        XCTAssertEqual(view.title, expectation)
    }
}
