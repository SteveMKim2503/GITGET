//
//  MainViewModel.swift
//  GITGET
//
//  Created by Bo-Young PARK on 10/03/2018.
//  Copyright © 2018 Bo-Young PARK. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

protocol MainViewModel: MainViewControllerBindable {
    
}

class MainViewModelImpl: MainViewModel {
    let disposeBag = DisposeBag()
    
    enum Tab: Int {
        case MyField = 0
        case TeamTable = 1
        case Setting = 2
        case TipJar = 3
    }
    
    let myFieldViewModel: MyFieldViewModel
    
    let currentTab: Variable<Tab>
    
    // Model -> View
    let presentTab: Driver<Tab>
    let showViewControllers: Driver<Void>
    
    // View -> Model
    let tabChanged = PublishSubject<Tab?>()
    let viewDidAppear = PublishSubject<Bool>()
    
    init(
//        myFieldViewModel: MyFieldViewModel
    ) {
        
    }
}
