//
//  MUCircularProgress.swift
//  RxSejima
//
//  Created by Loïc GRIFFIE on 18/03/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import RxSwift
import RxCocoa
import Sejima
import UIKit

extension Reactive where Base: MUCircularIndicator {

    /// Bindable sink for `title` property.
    public var title: Binder<String> {
        return Binder(self.base) { view, value in
            view.title = value
        }
    }

    /// Bindable sink for `value` property.
    public var value: Binder<CGFloat> {
        return Binder(self.base) { view, value in
            view.set(value: value)
        }
    }
}
