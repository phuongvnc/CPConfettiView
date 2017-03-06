# CPMenuView


CPConfettiView is fun animation when user input keyword:

[![CI Status](https://travis-ci.org/at-phuongvnc/CPMenuView.svg?style=flat)](https://travis-ci.org/at-phuongvnc/CPMenuView)
[![Version](https://img.shields.io/cocoapods/v/CPMenuView.svg?style=flat)](http://cocoapods.org/pods/CPMenuView)
[![License](https://img.shields.io/cocoapods/l/CPMenuView.svg?style=flat)](http://cocoapods.org/pods/CPMenuView)
[![Platform](https://img.shields.io/cocoapods/p/CPMenuView.svg?style=flat)](http://cocoapods.org/pods/CPMenuView)

![alt tag](https://github.com/at-phuongvnc/CPConfettiView/blob/master/README/animated.gif)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

- Swift 3.0 & Xcode 8
- iOS 8 and later

#### Manual install

Drag and drop folder `CPConfettiView` to your project.

## Installation

CPMenuView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "CPConfettiView" ~> '1.0'
```
## Usage

You can create and custom confetti view
```Swift
let confettiView = CPConfettiView(frame: UIScreen.main.bounds)
confettiView.direction = .Top
confettiView.intensity = 0.5
confettiView.setImageForConfetti(image: UIImage(named:"heart")!)
view.addSubview(confettiView)
confettiView.startConfetti(duration:3)
```

## Contributing

Contributions for bug fixing or improvements are welcome. Feel free to submit a pull request.

## Author

Chi Phuong, vonguyenchiphuong@gmail.com

## License

CPMenuView is available under the MIT license. See the LICENSE file for more info.
