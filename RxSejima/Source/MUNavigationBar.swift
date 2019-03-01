//
//  MUNavigationBar.swift
//  RxSejima
//
//  Created by Loïc GRIFFIE on 13/02/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import UIKit.UIImage
import RxSwift
import RxCocoa
import Sejima

extension Reactive where Base: MUNavigationBar {
    public var leftButtonImage: Binder<UIImage> {
        return Binder(self.base) { view, image in
            view.leftButtonImage = image
        }
    }

    public var title: Binder<String> {
        return Binder(self.base) { view, text in
            view.rightButtonTitle = text
        }
    }

    public var state: Binder<MUButton.State> {
        return Binder(self.base) { view, state in
            view.rightButtonState = state
        }
    }

    public var loading: Binder<Bool> {
        return Binder(self.base) { view, loading in
            view.set(isLoading: loading)
        }
    }
}
