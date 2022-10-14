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
    
    func test_PlayerXWins_WhenAnyPlayerMatchesRules_2_4_6() {
        
        var original = ""
        
        for index in 0..<game.boardArray.count {
            original = game.playerPlays(index: index) ?? ""
        }
        
        let expecation = "Player X Wins"
        XCTAssertEqual(original, expecation)
    }
    
    func test_PlayerXWins_WhenPlayerXPositionMatchesRules_0_1_2() {
        
        var original = ""
        
        let playIndex = [0,4,1,5,2]
        for index in 0..<playIndex.count {
            original = game.playerPlays(index: playIndex[index]) ?? ""
        }
        
        let expecation = "Player X Wins"
        XCTAssertEqual(original, expecation)
    }
    
    func test_PlayerOWins_WhenPlayerOMatchesRules_3_4_5() {
        
        var original = ""
        
        let playIndex = [0,3,1,4,8,5]
        for index in 0..<playIndex.count {
            original = game.playerPlays(index: playIndex[index]) ?? ""
        }
        
        let expecation = "Player O Wins"
        XCTAssertEqual(original, expecation)
    }
    
    func test_PlayerOWins_WhenPlayerOMatchesRules_6_7_8() {
        
        var original = ""
        
        let playIndex = [0,6,1,7,3,8]
        for index in 0..<playIndex.count {
            original = game.playerPlays(index: playIndex[index]) ?? ""
        }
        
        let expecation = "Player O Wins"
        XCTAssertEqual(original, expecation)
    }
    
    func test_PlayerXWins_WhenPlayerXMatchesRules_0_3_6() {
        
        var original = ""
        
        let playIndex = [0,1,3,7,6]
        for index in 0..<playIndex.count {
            original = game.playerPlays(index: playIndex[index]) ?? ""
        }
        
        let expecation = "Player X Wins"
        XCTAssertEqual(original, expecation)
    }
    
    func test_PlayerXWins_WhenPlayerXMatchesRules_1_4_7() {
        
        var original = ""
        
        let playIndex = [1,8,4,2,7]
        for index in 0..<playIndex.count {
            original = game.playerPlays(index: playIndex[index]) ?? ""
        }
        
        let expecation = "Player X Wins"
        XCTAssertEqual(original, expecation)
    }
    
    func test_PlayerOWins_WhenPlayerOMatchesRules_2_5_8() {
        
        var original = ""
        
        let playIndex = [1,2,4,5,0,3,6,8]
        for index in 0..<playIndex.count {
            original = game.playerPlays(index: playIndex[index]) ?? ""
        }
        
        let expecation = "Player O Wins"
        XCTAssertEqual(original, expecation)
    }
    
    func test_PlayerXWins_WhenPlayerXMatchesRules_0_4_8() {
        
        var original = ""
        
        let playIndex = [1,2,0,5,4,3,8]
        for index in 0..<playIndex.count {
            original = game.playerPlays(index: playIndex[index]) ?? ""
        }
        
        let expecation = "Player O Wins"
        XCTAssertEqual(original, expecation)
    }
}
