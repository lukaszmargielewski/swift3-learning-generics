//
//  SectionItemType.swift
//  Generics
//
//  Created by Lukasz Marcin Margielewski on 23/04/2017.
//  Copyright © 2017 Unwire ApS. All rights reserved.
//

import Foundation


protocol SectionItemType {
    var text: String { get }
}

/// BTW: This is just Swift's stragne way of implementing Equatable protocol for your type:
func == (lhs: SectionItemType, rhs: SectionItemType) -> Bool {
    return lhs.text == rhs.text
}
