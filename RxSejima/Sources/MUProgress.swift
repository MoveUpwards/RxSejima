//
//  MUProgress.swift
//  RxSejima
//
//  Created by Loïc GRIFFIE on 20/03/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import RxSwift
import RxCocoa
import Sejima

extension Reactive where Base: MUProgress {

    /// Bindable sink for `title` property.
    public var title: Binder<String> {
        return Binder(self.base) { view, value in
            view.title = value
        }
    }

    /// Bindable sink for `progress` property.
    public var progress: Binder<CGFloat> {
        return Binder(self.base) { view, value in
            view.set(progress: value)
        }
    }

    /// Bindable sink for `color` property.
    public var color: Binder<UIColor> {
        return Binder(self.base) { view, value in
            view.color = value
        }
    }
}

