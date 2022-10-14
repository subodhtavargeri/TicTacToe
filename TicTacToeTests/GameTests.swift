import XCTest
@testable import TicTacToe

class GameTests: XCTestCase {
    
    func test_PlayerXIsNameIsSet_WhenGameLoads() {
        
        let game = Game()
        
        let expected = "X"
        XCTAssertEqual(game.playerX.name,expected)
    }
    
}
