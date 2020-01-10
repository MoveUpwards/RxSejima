//
//  MULabelCounter.swift
//  RxSejima
//
//  Created by Loïc GRIFFIE on 18/03/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import RxSwift
import RxCocoa
import Sejima
import UIKit

extension Reactive where Base: MULabelCounter {

    /// Bindable sink for `targetValue` property, animation duration is 0.25
    public var value: Binder<Double> {
        return Binder(self.base) { view, value in
            view.count(to: value, duration: 0.25)
        }
    }
}
