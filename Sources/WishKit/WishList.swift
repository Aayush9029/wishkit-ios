//
//  Wishlist.swift
//  wishkit-ios
//
//  Created by Martin Lasek on 2/9/23.
//  Copyright © 2023 Martin Lasek. All rights reserved.
//

import UIKit
import SwiftUI

public struct WishList {

    static var apiKey = "my-fancy-api-key"

    public static var viewController: UIViewController {
        return WishListVC()
    }

    public static var view: some View {
        if #available(iOS 14.0, *) {
            return WishListView()
                .ignoresSafeArea(.container)
        } else {
            return WishListView()
        }
    }

    public static func configure(with apiKey: String) {
        WishList.apiKey = apiKey
    }
}

