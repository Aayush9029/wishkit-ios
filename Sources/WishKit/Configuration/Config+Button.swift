//
//  Config+Button.swift
//  wishkit-ios
//
//  Created by Martin Lasek on 4/25/23.
//  Copyright © 2023 Martin Lasek. All rights reserved.
//

extension Configuration {
    public struct Button {
        public var addButton: AddButton

        init(addButton: AddButton = AddButton()) {
            self.addButton = addButton
        }
    }
}
