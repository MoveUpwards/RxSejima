//
//  MUNavigationBar.swift
//  RxSejima
//
//  Created by Loïc GRIFFIE on 13/02/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import RxSwift
import RxCocoa
import Sejima

extension Reactive where Base: MUNavigationBar {
    public var leftButtonImage: Binder<UIImage?> {
        return Binder(self.base) { view, value in
            view.leftButtonImage = value
        }
    }

    public var title: Binder<String> {
        return Binder(self.base) { view, value in
            view.mainButtonTitle = value
        }
    }

    public var isLoading: Binder<Bool> {
        return Binder(self.base) { view, value in
            view.mainButtonIsLoading = value
        }
    }

    public var state: Binder<UIControl.State> {
        return Binder(self.base) { view, value in
            view.mainButtonState = value
        }
    }
}
