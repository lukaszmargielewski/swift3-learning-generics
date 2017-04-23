//
//  SectionItem.swift
//  Generics
//
//  Created by Lukasz Marcin Margielewski on 23/04/2017.
//  Copyright © 2017 Unwire ApS. All rights reserved.
//

import Foundation


struct SpecificSectionItem: SectionItemType, Equatable {
    let text: String
    static func == (lhs: SpecificSectionItem, rhs: SpecificSectionItem) -> Bool {
        return lhs.text == rhs.text
    }
}
