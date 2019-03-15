//
//  MUButton.swift
//  RxSejima
//
//  Created by Loïc GRIFFIE on 13/02/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import RxSwift
import RxCocoa
import Sejima

extension Reactive where Base: MUButton {
    public var title: Binder<String> {
        return Binder(self.base) { view, value in
            view.title = value
        }
    }

    public var loading: Binder<Bool> {
        return Binder(self.base) { view, value in
            view.isLoading = value
        }
    }

    public var state: Binder<UIControl.State> {
        return Binder(self.base) { view, value in
            view.state = value
        }
    }
}
