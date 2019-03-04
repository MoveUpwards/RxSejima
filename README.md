[![Documentation](https://img.shields.io/badge/Read_the-Docs-67ad5c.svg)](https://moveupwards.github.io/RxSejima/)
[![Language: Swift 2, 3 and 4](https://img.shields.io/badge/language-swift%204-f48041.svg?style=flat)](https://developer.apple.com/swift)
![Platform: iOS 11+](https://img.shields.io/badge/platform-iOS-blue.svg?style=flat)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![CocoaPods](https://img.shields.io/cocoapods/v/RxSejima.svg)](http://cocoapods.org/pods/RxSejima)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/f81bf20a181e4f58a575af39ab5ae3dc)](https://app.codacy.com/app/MoveUpwardsDev/RxSejima?utm_source=github.com&utm_medium=referral&utm_content=MoveUpwards/Sejima&utm_campaign=Badge_Grade_Settings)
![Build Status](https://app.bitrise.io/app/599b3758fc2a50b0.svg?token=t-UomjXRgokIdZG8h3eU4g)
[![License: MIT](http://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat)](https://github.com/MoveUpwards/RxSejima/blob/master/LICENSE)
[![GitHub contributors](https://img.shields.io/github/contributors/MoveUpwards/RxSejima.svg)](https://github.com/MoveUpwards/RxSejima/graphs/contributors)
[![Donate](https://img.shields.io/badge/Donate-PayPal-blue.svg)](https://paypal.me/moveupwards)

# RxSejima

Add Bind capabilities to Sejima library

## Requirements

- iOS 9.0+
- Xcode 9.0+

## Installation

### use [CocoaPods](https://cocoapods.org) with Podfile

```swift
pod 'RxSejima'
```

open your favorite terminal, go to your project root path:

```shell
pod install
```

### use [Carthage](https://github.com/Carthage/Carthage) with Cartfile

```shell
github "MoveUpwards/RxSejima"
```

open your favorite terminal, go to your project root path and run:

```shell
carthage update
```

## Usage

```swift
import Sejima
import RxSejima

class ViewController: UIViewController {
    @IBOutlet private weak var button: MUButton!

    private let bag = DisposeBag()
    private let viewModel: ViewControllerViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel.loading.bind(to: button.rx.loading).disposed(by: bag)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        startLoading()
    }
}
```

```swift
import RxSwift

class ViewControllerViewModel {
    internal let loading = BehaviorSubject<Bool>(value: false)

    internal func startLoading() {
        loading.onNext(true)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            self?.loading.onNext(false)
        }
    }
}
```