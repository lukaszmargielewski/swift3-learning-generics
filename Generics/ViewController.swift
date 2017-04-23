//
//  ViewController.swift
//  Generics
//
//  Created by Lukasz Marcin Margielewski on 23/04/2017.
//  Copyright © 2017 Unwire ApS. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func loadView() {
        self.view = UIView()
        self.view.backgroundColor = .yellow
        self.title = Bundle.main.infoDictionary?["CFBundleName"] as! String?
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        testSpecificImplementations()
    }


    // MARK: - Private

    private func testSpecificImplementations() {

        // No problem while using concrete implementations:

        // Example 1 - specific implementation with build-in String type:

        let stringSection1 = StringSection(info: "Info 1", items: ["Item 1", "Item 2"])
        let stringSection2 = StringSection(info: "Info 2", items: ["Item 3", "Item 4"])
        let stringSections1 = [stringSection1, stringSection2]
        let stringSections2 = [stringSection2, stringSection1]

        var areEqual = stringSections1.dummyCompare(with: stringSections2)
        print("String section 1 equals 2?: \(areEqual)")

        // Example 2 - specific implementation with custom types:

        let specInfo1 = SpecificSectionInfo(title: "Info 1")
        let specItem1 = SpecificSectionItem(text: "Specific item 1")
        let specItem2 = SpecificSectionItem(text: "Specific item 2")
        let specInfo2 = SpecificSectionInfo(title: "Info 2")
        let specItem3 = SpecificSectionItem(text: "Specific item 3")
        let specItem4 = SpecificSectionItem(text: "Specific item 4")

        let specSection1 = SpecificSection(info: specInfo1, items: [specItem1, specItem2])
        let specSection2 = SpecificSection(info: specInfo2, items: [specItem3, specItem4])

        let specSections1 = [specSection1, specSection2]
        let specSections2 = [specSection2, specSection1]

        areEqual = specSections1.dummyCompare(with: specSections2)
        print("Specific section 1 equals 2?: \(areEqual)")

        // So far, so good, everything works and compiles.
        // But ... I have at least 2 problems with this approach:

        // - Problem 1:

        // Just from 2 examples above, one can see that this approach needs 'specific' implementation of a SectionType protocol for every combination of info and item type. This seems not so efficient nor generic.

        // What I need is a more generalized and protocol oriented approach where associated types for info and items need to be protoocols (provided from external APIs as protocols).

        // See Section.swift file for example (does not compile).


        // - Problem 2:

        // I need to be able to pass it over to other protocol oriented API, f.ex.: as an argument to function like:

        //func consume(section: SectionType<SectionInfoType, SectionItemType>) {}

        // But above function declaration produces: Cannot specialize non-generic type 'SectionType'
        // with Xcode proposing a fix: 'Delete <SectionInfoType, SectionItemType>':

        // func consume(section: SectionType) {}

        // Which does not compile neither and I can not find a way to make this work.
        // Is it possible to do or is that Swift 3 limitation (I am using Swift 3.1)?
        
    }

    private func testProtocolOriented() {

        // How to implement more generalized section type and construct section object out of the obtained protocol types?:

        let info1 = exampleInfo(1)   // Infers SectionInfoType protocol type.
        let item11 = exampleItem(11) // Infers SectionItemType protocol type.
        let item12 = exampleItem(12)

        let info2 = exampleInfo(2)
        let item21 = exampleItem(21)
        let item22 = exampleItem(22)

        let items1 = [item11, item12] // Infers [SectionItemType] array.
        let items2 = [item21, item22] // Infers [SectionItemType] array.

        /*
         // F.ex.:
         let section3 = Section(info: info1, items: items1)
         let section4 = Section(info: info2, items: items2)
         */
    }


    // MARK: - Simulating protocol oriented API:

    func exampleInfo(_ paramenter: Int) -> SectionInfoType {
        let item = SpecificSectionInfo(title: "Info \(paramenter)")
        return item
    }

    func exampleItem(_ parameter: Int) -> SectionItemType {
        let item = SpecificSectionItem(text: "Specific item \(parameter)")
        return item
    }
}

