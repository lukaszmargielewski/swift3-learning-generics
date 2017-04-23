//
//  Section.swift
//  Generics
//
//  Created by Lukasz Marcin Margielewski on 23/04/2017.
//  Copyright © 2017 Unwire ApS. All rights reserved.
//

import Foundation


struct Section: SectionType {
    typealias I = SectionInfoType
    typealias T = SectionItemType
    let info: I?
    let items: [T]
}
