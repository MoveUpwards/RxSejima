//
//  MUTopBar.swift
//  RxSejima
//
//  Created by Loïc GRIFFIE on 13/02/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import UIKit.UIImage
import RxSwift
import RxCocoa
import Sejima

extension Reactive where Base: MUTopBar {
    public var title: Binder<String> {
        return Binder(self.base) { view, value in
            view.title = value
        }
    }

    public var image: Binder<UIImage?> {
        return Binder(self.base) { view, value in
            view.buttonImage = value
        }
    }

    public var leftButton: Binder<Bool> {
        return Binder(self.base) { view, value in
            view.showButton = value
        }
    }
}
