//
//  SectionInfoType.swift
//  Generics
//
//  Created by Lukasz Marcin Margielewski on 23/04/2017.
//  Copyright © 2017 Unwire ApS. All rights reserved.
//

import Foundation


protocol SectionInfoType {
    var title: String { get }
}

/// BTW: This is just Swift's stragne way of implementing Equatable protocol for your type:
func == (lhs: SectionInfoType, rhs: SectionInfoType) -> Bool {
    return lhs.title == rhs.title
}
