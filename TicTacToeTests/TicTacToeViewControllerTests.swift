import XCTest
@testable import TicTacToe

class TicTacToeViewControllerTests: XCTestCase {
    
    func test_ViewTitleIsSet_WhenViewLoads() {
        let view = TicTacToeViewController()
        
        view.displayTitle(_title: Constant.Title.screenTitle)
        
        let expectation = Constant.Title.screenTitle
        XCTAssertEqual(view.title, expectation)
    }
}
