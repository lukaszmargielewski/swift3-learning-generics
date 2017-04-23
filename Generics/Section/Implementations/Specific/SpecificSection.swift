//
//  Section.swift
//  Generics
//
//  Created by Lukasz Marcin Margielewski on 23/04/2017.
//  Copyright © 2017 Unwire ApS. All rights reserved.
//

import Foundation


struct SpecificSection: SectionType {
    let info: SpecificSectionInfo?
    let items: [SpecificSectionItem]
}
