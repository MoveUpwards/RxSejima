//
//  MUTime.swift
//  RxSejima
//
//  Created by Loïc GRIFFIE on 20/03/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import RxSwift
import RxCocoa
import Sejima

extension Reactive where Base: MUTime {
    public var progress: Binder<CGFloat> {
        return Binder(self.base) { view, value in
            view.set(value: value)
        }
    }

    public var indicatorColor: Binder<UIColor> {
        return Binder(self.base) { view, value in
            view.indicatorColor = value
        }
    }

    public var timeBackgroundColor: Binder<UIColor> {
        return Binder(self.base) { view, value in
            view.timeBackgroundColor = value
        }
    }
}
