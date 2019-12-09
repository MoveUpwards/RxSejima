//
//  MUStat.swift
//  RxSejima
//
//  Created by Loïc GRIFFIE on 13/02/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import RxSwift
import RxCocoa
import Sejima

extension Reactive where Base: MUStat {
    public var data: Binder<MUStatData> {
        return Binder(self.base) { view, value in
            view.set(data: value)
        }
    }
}
