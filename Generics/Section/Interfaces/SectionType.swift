//
//  SectionType.swift
//  Generics
//
//  Created by Lukasz Marcin Margielewski on 23/04/2017.
//  Copyright © 2017 Unwire ApS. All rights reserved.
//

import Foundation


protocol SectionType {
    associatedtype I: Equatable
    associatedtype T: Equatable
    var info: I? { get }
    var items: [T] { get }
}
