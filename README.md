# IconTextField

[![CI Status](https://img.shields.io/travis/josharnoldjosh/IconTextField.svg?style=flat)](https://travis-ci.org/josharnoldjosh/IconTextField)
[![Version](https://img.shields.io/cocoapods/v/IconTextField.svg?style=flat)](https://cocoapods.org/pods/IconTextField)
[![License](https://img.shields.io/cocoapods/l/IconTextField.svg?style=flat)](https://cocoapods.org/pods/IconTextField)
[![Platform](https://img.shields.io/cocoapods/p/IconTextField.svg?style=flat)](https://cocoapods.org/pods/IconTextField)

![](example.gif)

```swift
textfield.setIcon(UIImage(named: 'PasswordLock'))
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

IconTextField requires `SnapKit`. 

## Installation

IconTextField is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'IconTextField2'
```

## Example

`IconTextField` works just like `UITextField`, except with currently two extra methods, `setIcon` and `underline`.

Example:
```swift
let passwordTextField = IconTextField(frame: CGRect(x: 0, y: 0, width: 100, height: 50))

// Set the icon
passwordTextField.setIcon(image: UIImage.init(named: "Lock"))

// Add a nice underline
passwordTextField.underline()
```

Methods:
```swift
func setIcon(image:UIImage?, width:CGFloat = 25, padding:CGFloat = 10)
func underline(color:UIColor = UIColor.init(white: 0.85, alpha: 1))
```

## Author

josharnoldjosh, josharnold997@gmail.com

## License

IconTextField is available under the MIT license. See the LICENSE file for more info.
