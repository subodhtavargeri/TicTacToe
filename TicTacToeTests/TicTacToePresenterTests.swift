import XCTest
@testable import TicTacToe

class TicTacToePresenterTests: XCTestCase {
    
    func test_ViewTitleIsSet_WhenPresenterLoads() {
        let view = TicTacToeViewControllerSpy()
        let presenter = TicTacToePresenter(view: view)
        
        presenter.loadPresenter()
        
        let expectation = "Tic Tac Toe"
        XCTAssertEqual(view.title, expectation)
    }
}
