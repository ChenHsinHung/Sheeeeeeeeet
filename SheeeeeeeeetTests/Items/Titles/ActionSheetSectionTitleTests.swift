//
//  ActionSheetSectionTitleTests.swift
//  Sheeeeeeeeet
//
//  Created by Daniel Saidi on 2017-11-26.
//  Copyright © 2017 Daniel Saidi. All rights reserved.
//

import Quick
import Nimble
import Sheeeeeeeeet

class ActionSheetSectionTitleTests: QuickSpec {
    
    override func spec() {
        
        let item = ActionSheetSectionTitle(title: "foo", subtitle: "bar")
        
        describe("when created") {
            
            it("applies provided values") {
                expect(item.title).to(equal("foo"))
                expect(item.subtitle).to(equal("bar"))
                expect(item.value).to(beNil())
                expect(item.image).to(beNil())
            }
        }
        
        describe("cell style") {
            
            it("is value1") {
                expect(item.cellStyle).to(equal(UITableViewCellStyle.value1))
            }
        }
        
        describe("tap behavior") {
            
            it("is none") {
                expect(item.tapBehavior).to(equal(ActionSheetItem.TapBehavior.none))
            }
        }
    }
}
