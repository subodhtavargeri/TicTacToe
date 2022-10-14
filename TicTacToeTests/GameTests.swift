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
    
    func test_BoardArrayCountIsNine_WhenGameLoads() {
        
        let expected = 9
        XCTAssertEqual(game.boardArray.count, expected)
    }
    
    func test_CurrentPlayerIsChangedToPlayerO_WhenPlayerXTurnIsDone() {
        
        let _ = game.playerPlays(index: 0)
        let expected = "O"
        
        XCTAssertEqual(game.currentPlayer.name, expected)
    }
    
    func test_CurrentPlayerIsChangedToPlayerX_WhenPlayerOTurnIsDone() {
        
        let _ = game.playerPlays(index: 0)
        let _ = game.playerPlays(index: 1)
        
        let expected = "X"
        XCTAssertEqual(game.currentPlayer.name, expected)
    }
    
    func test_NewValueIsInsertedIntoBoardArrayAtIndex_IfIndexIsEmptyAtBoardValue() {
        
        let index = 0
        let _ = game.playerPlays(index: index)
        
        let expected = "X"
        XCTAssertEqual(game.boardArray[index], expected)
    }
    
    func test_NewValueIsNotInsertedIntoBoardArrayAtIndex_IfIndexIsNotEmptyAtBoardValue() {
        
        let index = 1
        let _ = game.playerPlays(index: index)
        
        let _ = game.playerPlays(index: index)
        
        let expected = "X"
        XCTAssertEqual(game.boardArray[index], expected)
    }
    
    func test_CurrentPlayerIsUpdated_WhenBoardArrayValueIsUpdated() {
        
        let index = 2
        let _ = game.playerPlays(index: index)
        
        let expected = "O"
        XCTAssertEqual(game.currentPlayer.name, expected)
    }
    
    func test_CurrentPlayerNameIsReturned_WhenBoardArrayIndexIsEmpty() {
        
        let index = 2
        let originalName = game.playerPlays(index: index)
        
        let expected = "X"
        XCTAssertEqual(originalName, expected)
    }
    
    func test_CurrentPlayerNameIsReturnedAsO_WhenBoardArrayIndexIsEmpty() {
        
        let index = 4
        let _ = game.playerPlays(index: 2)
        
        let originalName = game.playerPlays(index: index)
        
        let expected = "O"
        XCTAssertEqual(originalName, expected)
    }
    
    func test_CurrentPlayerNameIsReturnedAsNil_WhenBoardArrayIndexHasValue() {
        
        let index = 2
        let _ = game.playerPlays(index: 2)
        
        let originalName = game.playerPlays(index: index)
        
        XCTAssertNil(originalName)
    }
}
