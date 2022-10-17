import XCTest
@testable import TicTacToe

class TicTacToePresenterTests: XCTestCase {
    
    let view = TicTacToeViewControllerSpy()
    let game = GameSpy()
    var presenter:TicTacToePresenter?
    
    override func setUp()  {
        presenter = TicTacToePresenter(view: view, game: game)
    }
    
    func test_ViewTitleIsSet_WhenPresenterLoads() {
        
        presenter?.loadPresenter()
        
        let expectation = Constant.Title.screenTitle
        XCTAssertEqual(view.title, expectation)
    }
    
    func test_CurrentPlayerNameIsSetToX_WhenGameLoads() {
        
        presenter?.loadPresenter()
        
        let expecation = "X"
        XCTAssertEqual(view.playerName, expecation)
    }
    
    func test_CurrentPlayerNameIsSetToO_WhenPlayerXFinishesPlaying() {
        
        presenter?.playerClickEvent(index: 1)
        
        let expecation = "O"
        XCTAssertEqual(view.playerName, expecation)
    }
    
}
