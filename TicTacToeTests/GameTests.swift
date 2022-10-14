import XCTest
@testable import TicTacToe

class GameTests: XCTestCase {
    
    func test_PlayerXIsNameIsSet_WhenGameLoads() {
        
        let game = Game()
        
        let expected = "X"
        XCTAssertEqual(game.playerX.name,expected)
    }
    
    func test_PlayerOIsNameIsSet_WhenGameLoads() {
        
        let game = Game()
        
        let expected = "O"
        XCTAssertEqual(game.playerO.name,expected)
    }
    
}
