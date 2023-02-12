//
//  Wishlist.swift
//  wishkit-ios
//
//  Created by Martin Lasek on 2/9/23.
//  Copyright © 2023 Martin Lasek. All rights reserved.
//

import UIKit

public struct WishList {

    static var apiKey = "my-fancy-api-key"

    public static var viewController: UIViewController {
        return WishListVC()
    }

    public static func configure(with apiKey: String) {
        WishList.apiKey = apiKey
    }
}

