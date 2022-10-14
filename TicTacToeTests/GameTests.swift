import XCTest
@testable import TicTacToe

class GameTests: XCTestCase {
    
    let game = Game()
    
    func test_PlayerXNameIsSet_WhenGameLoads() {
        
        let expected = "X"
        XCTAssertEqual(game.playerX.name,expected)
    }
    
    func test_PlayerONameIsSet_WhenGameLoads() {
        
        let expected = "O"
        XCTAssertEqual(game.playerO.name,expected)
    }
    
    func test_CurrentPlayerIsSetToPlayerX_WhenGameLoads() {
        
        let expected = "X"
        XCTAssertEqual(game.currentPlayer.name, expected)
    }
    
    func test_BoardArrayIsEmpty_WhenGameLoads() {
        
        let expected = 0
        XCTAssertEqual(game.boardArray.count, expected)
    }
    
    func test_CurrentPlayerIsChangedToPlayerO_WhenPlayerXTurnIsDone() {
        
        game.playerPlays()
        let expected = "O"
        
        XCTAssertEqual(game.currentPlayer.name, expected)
    }
    
    func test_CurrentPlayerIsChangedToPlayerX_WhenPlayerOTurnIsDone() {
        
        game.playerPlays()
        game.playerPlays()
        
        let expected = "X"
        XCTAssertEqual(game.currentPlayer.name, expected)
    }
    
}
