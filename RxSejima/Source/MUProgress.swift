//
//  MUProgress.swift
//  RxSejima
//
//  Created by Loïc GRIFFIE on 13/02/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import RxSwift
import RxCocoa
import Sejima
import UIKit

extension Reactive where Base: MUProgress {
    public var title: Binder<String> {
        return Binder(self.base) { view, value in
            view.title = value
        }
    }

    public var progress: Binder<Float> {
        return Binder(self.base) { view, value in
            view.set(progress: value, animated: true)
        }
    }

    public var progressTintColor: Binder<UIColor> {
        return Binder(self.base) { view, value in
            view.progressTintColor = value
        }
    }
}
