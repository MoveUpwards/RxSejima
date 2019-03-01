//
//  MUTag.swift
//  RxSejima
//
//  Created by Loïc GRIFFIE on 13/02/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import UIKit.UIImage
import RxSwift
import RxCocoa
import Sejima

extension Reactive where Base: MUTag {
    public var title: Binder<String> {
        return Binder(self.base) { view, text in
            view.title = text
        }
    }

    public var state: Binder<MUTag.State> {
        return Binder(self.base) { view, state in
            view.state = state
        }
    }
}
