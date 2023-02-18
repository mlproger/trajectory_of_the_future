//
//  TFTests.swift
//  TFTests
//
//  Created by Максим on 18/2/2023.
//

import XCTest
@testable import TF

final class TFTests: XCTestCase {
    
    var sut: String!
    var sut2: ViewModel!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = ""
        sut2 = ViewModel()
    }

    override func tearDownWithError() throws {
        sut = nil
        sut2 = nil
        try super.tearDownWithError()
    }

    func testExample1() throws {
        sut = "https://hello"
        sut.loadImg{img in
            print(img.description)
        }
    }
    
    func testExample2() throws {
        sut = "https://klike.net/uploads/posts/2020-04/1587719791_1.jpg"
        sut.loadImg{img in
            print(img.description)
        }
    }
    func testExample3() throws {
        sut2.getData()
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {}
        }
    }

}
