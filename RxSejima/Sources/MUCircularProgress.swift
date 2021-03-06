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

extension Reactive where Base: MUCircularProgress {

    /// Bindable sink for `title` property.
    public var title: Binder<String> {
        return Binder(self.base) { view, value in
            view.title = value
        }
    }

    /// Bindable sink for `detail` property.
    public var detail: Binder<String> {
        return Binder(self.base) { view, value in
            view.detail = value
        }
    }

    /// Bindable sink for `progressValue` property.
    public var progress: Binder<CGFloat> {
        return Binder(self.base) { view, value in
            view.set(value: value)
        }
    }
}
