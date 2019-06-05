# LiipKit

[![Version](https://img.shields.io/cocoapods/v/LiipKit.svg?style=flat)](http://cocoapods.org/pods/LiipKit)
[![License](https://img.shields.io/cocoapods/l/LiipKit.svg?style=flat)](http://cocoapods.org/pods/LiipKit)
[![Platform](https://img.shields.io/cocoapods/p/LiipKit.svg?style=flat)](http://cocoapods.org/pods/LiipKit)
[![Build Status](https://travis-ci.org/liip/LiipKit.svg?branch=master)](https://travis-ci.org/liip/LiipKit)

## Requirements

Requires Swift3.

## Installation

LiipKit is available through the Liip CocoaPods repo. To install
it, simply add the following lines to your Podfile:

```ruby
pod "LiipKit"
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Documentation

### Extensions

* [Int extensions](#int-extensions)
* [NSDate extensions](#nsdate-extensions)
* [String extensions](#string-extensions)
* [Double extensions](#)

### UI

- [LiipKit](#liipkit)
  - [Requirements](#requirements)
  - [Installation](#installation)
  - [Example](#example)
  - [Documentation](#documentation)
    - [Extensions](#extensions)
    - [UI](#ui)
    - [Int extensions](#int-extensions)
    - [Double extensions](#double-extensions)
    - [NSDate extensions](#nsdate-extensions)
    - [String extensions](#string-extensions)
    - [UIAlertController extensions](#uialertcontroller-extensions)
    - [UIBarItem extensions](#uibaritem-extensions)
    - [UIButton extensions](#uibutton-extensions)
    - [UIColor extensions](#uicolor-extensions)
    - [UILabel extensions](#uilabel-extensions)
  - [Author](#author)
  - [License](#license)

### Int extensions

Convert seconds (Int) to hours:minutes:seconds (String)

```swift
120.secondsToHoursMinutesSeconds() // => == "0:02:00"
```

### Double extensions

Round double to the nearest number

```swift
132.1.round(nearest: 0.5) // => == "132.0"
132.6.round(nearest: 0.5) // => == "132.5"
132.9.round(nearest: 0.5) // => == "133.0"
```

### NSDate extensions

Transform a date to a string

```swift
date.toString() // => "08-03-2016
date.toString("dd.MM.yyyy") // => "08.03.2016"
date.toString("yyyy") // => "2016"
```

### String extensions

Prefix tilde for localized string

```swift
~"test" // => == NSLocalizedString("test", comment: "No comment")
```

Method which return true if a string is empty or whitespace(s)

```swift
"".isEmptyOrWhitespace() // true
"  ".isEmptyOrWhitespace() // true
"test".isEmptyOrWhitespace() // false
```

Convert string to DateTime object with `.toDateTime`

```swift
"2016-03-08T00:00:00.000+01:00".toDateTime()
```

### UIAlertController extensions

Method `show` to allow to show the alert without knowing the top view controller required to present an alert.

```swift
let alert = UIAlertController(title: "Alert", message: "Alert message", preferredStyle: UIAlertControllerStyle.alert)
alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
alert.show(animated: true, completion: nil)
```

### UIBarItem extensions

Provide a property `localizedTitle` which is available in Interface Builder (see Main.storyboard in Example project).

### UIButton extensions

Provide a property `localizedTitleForNormal` and `localizedTitleForHighlighted` which are available in Interface Builder (see Main.storyboard in Example project).

### UIColor extensions

Hex initializers

```swift
UIColor(hex: 0x0099FF)
UIColor(hex: 0x0099FF, alpha: 0.3)
UIColor(hexString: "0x0099FF")
UIColor(hexString: "#0099FF")
UIColor(hexString: "0x0099FF", alpha: 0.3)
UIColor(hexString: "#0099FF", alpha: 0.3)
```

Simplified initializers

```swift
UIColor(r: 0, g: 127.5, b: 255)
UIColor(r: 0, g: 127.5, b: 255, a: 0.5)
```

### UILabel extensions

Provide a property `localizedText` which is available in Interface Builder (see Main.storyboard in Example project).

## Author

* Noé Froidevaux
* Manuel Escrig
* Germain Hugon
* Romain Sickenberg

## License

LiipKit is available under the MIT license. See the LICENSE file for more info.
