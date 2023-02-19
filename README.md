<h3 align="center">WishKit</h1>
<h4 align="center"> In-App Feature Requests. Made Easy. </h2>
<p align="center">
	<a href="LICENSE">
        	<img src="https://img.shields.io/badge/license-MIT-00c573.svg" alt="MIT License">
	</a>
	<a href="https://swift.org">
        	<img src="https://img.shields.io/badge/swift-5.6-00c573.svg" alt="Swift 5.6">
	</a>
	<a href="https://twitter.com/mywishkit" target="_blank">
        	<img src="https://img.shields.io/badge/twitter-@mywishkit-00c573.svg" alt="Twitter">
	</a>
</p>
<p align="center">
WishKit allows you to provide a native wishlist feature in your app that <b>just works ✨</b> <br/>
</p>

<h3>
	<b> Setup </b>
</h3>

1. To start using WishKit simply add it as a dependency in Xcode.
```
https://github.com/wishkit/wishkit-ios.git
```

2. Import it and configure it with your API Key that you will find in your admin dashboard on <a href="https://wishkit.io/dashboard" target="_blank">wishkit.io</a>
```swift
import WishKit

WishKit.configure(with: "your_api_key")
```

3. Done! Now you can just present the ViewController.
```swift
present(WishKit.viewController, animated: true)
```

<hr/>

<h3>
	<b> Configuration </b>
</h3>

WishKit allows you to configure some of its UI to closer match your apps design.

<b>Primary Color</b>

Change the primary color by assigning a new Theme like so:
```swift
WishKit.theme = WishKit.Theme(primaryColor: .systemGreen)
```

<hr/>

<h3>
	<b> Example Project </b>
</h3>
Checkout the [Example Project](https://github.com/wishkit/wishkit-ios-example) to see how easy it is to set up the wishlist!
