import XCTest
@testable import TicTacToe

class GameTests: XCTestCase {
    
    func test_PlayerXNameIsSet_WhenGameLoads() {
        
        let game = Game()
        
        let expected = "X"
        XCTAssertEqual(game.playerX.name,expected)
    }
    
    func test_PlayerONameIsSet_WhenGameLoads() {
        
        let game = Game()
        
        let expected = "O"
        XCTAssertEqual(game.playerO.name,expected)
    }
    
    func test_CurrentPlayerIsSetToPlayerX_WhenGameLoads() {
        
        let game = Game()
        
        let expected = "X"
        XCTAssertEqual(game.currentPlayer.name, expected)
    }
    
}
