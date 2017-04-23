//
//  Array+SectionType.swift
//  Generics
//
//  Created by Lukasz Marcin Margielewski on 23/04/2017.
//  Copyright © 2017 Unwire ApS. All rights reserved.
//

import Foundation


/// Offers additional method(s) to process SectionType list.
extension Array where Element: SectionType {
    /// Dummy comparision method. Implementation is not that relevant but just to employ Equatable.
    /// - Parameter to: Another array of sections.
    /// - Returns: True if first info and first elemements in both arrays exist and both are equal.
    func dummyCompare(with otherArray: [Element]) -> Bool {
        guard
            let first = self.first,
            let firstOther = otherArray.first,
            let firstElement = first.items.first,
            let firstOtherElement = firstOther.items.first,
            let firstInfo = first.info, let firstOtherInfo = firstOther.info
            else { return false }
        return firstInfo == firstOtherInfo && firstElement == firstOtherElement
    }
}
