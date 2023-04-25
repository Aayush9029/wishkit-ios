//
//  Configuration.swift
//  wishkit-ios
//
//  Created by Martin Lasek on 4/25/23.
//  Copyright © 2023 Martin Lasek. All rights reserved.
//

import SwiftUI

#if canImport(UIKit)
import UIKit
#endif

extension Configuration {
    public struct TabBar {
        #if os(macOS)
        public var image = Image(systemName: "lightbulb")

        public var selectedImage = Image(systemName: "lightbulb.fill")

        #elseif canImport(UIKit)
        public var image = UIImage(systemName: "lightbulb")

        public var selectedImage = UIImage(systemName: "lightbulb.fill")
        #endif
    }
}
