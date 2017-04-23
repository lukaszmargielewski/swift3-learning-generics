//
//  SectionInfo.swift
//  Generics
//
//  Created by Lukasz Marcin Margielewski on 23/04/2017.
//  Copyright © 2017 Unwire ApS. All rights reserved.
//

import Foundation


struct SpecificSectionInfo: SectionInfoType, Equatable {
    let title: String
    static func == (lhs: SpecificSectionInfo, rhs: SpecificSectionInfo) -> Bool {
        return lhs.title == rhs.title
    }
}
