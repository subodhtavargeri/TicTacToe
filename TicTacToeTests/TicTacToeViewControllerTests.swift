import XCTest
@testable import TicTacToe

class TicTacToeViewControllerTests: XCTestCase {
    
    func test_ViewTitleIsSet_WhenViewLoads() {
        
        let view = TicTacToeViewController()
        
        view.displayTitle(_title: Constant.Title.screenTitle)
        
        let expectation = Constant.Title.screenTitle
        XCTAssertEqual(view.title, expectation)
    }
    
    func test_CurrentPlayerLabelIsDisplayed_WhenCurrentPlayerIsVisible() {
        
        let view = TicTacToeViewController()
        
        view.displayCurrentPlayerName(playerName: "X")
        
        let expectation = "X"
        XCTAssertEqual(view.labelCurrentPlayer.text, expectation)
    }
    
    func test_PlayerButtonTitleIsSet_WhenPlayerClicksOnButton() {
        
        let view = TicTacToeViewController()
        view.buttonAction(UIButton())
        
        view.setButtonTitle(title: "X")
        let orginal = view.senderButton?.title(for: .normal)
        
        let expectation = "X"
        XCTAssertEqual(orginal, expectation)
    }
}
