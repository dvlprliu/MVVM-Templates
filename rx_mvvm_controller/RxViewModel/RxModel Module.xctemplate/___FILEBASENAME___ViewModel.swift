//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

protocol ___VARIABLE_sceneName___ViewOutput {
  func configure(input: ___VARIABLE_sceneName___ViewModel.Input) -> ___VARIABLE_sceneName___ViewModel.Output
}

class ___VARIABLE_sceneName___ViewModel: RxViewModelType, RxViewModelModuleType, ___VARIABLE_sceneName___ViewOutput {
  
  // MARK: In/Out parameters
  struct InputDependencies {
    
  }
  
  struct Input {
    
  }
  
  struct Output {
    let title: Observable<String>
    let state: Observable<LoadingState>
    let error: Observable<NSError>
  }
  
  // MARK: Dependencies
  private let dp: InputDependencies
  private let moduleInputData: ModuleInputData
  
  // MARK: Properties
  private let bag = DisposeBag()
  private let modelState: RxViewModelStateProtocol = RxViewModelState()
  
  // Observables Output
  private let title = Observable.just("Title")
  
  // MARK: - initializer
  
  init(dependencies: InputDependencies, moduleInputData: ModuleInputData) {
    self.dp = dependencies
    self.moduleInputData = moduleInputData
  }
  
  // MARK: - ___VARIABLE_sceneName___ViewOutput
  
  func configure(input: Input) -> Output {
    return Output(title: title.asObservable(),
                  state: modelState.state.asObservable(),
                  error: modelState.error.asObservable())
  }
  
  // MARK: - Module configuration
  
  func configureModule(input: ModuleInput?) -> ModuleOutput {
    // Configure input signals
    
    // Configure module output
    return ModuleOutput()
  }
  
  // MARK: - Additional

  deinit {
    print("-- ___VARIABLE_sceneName___ViewModel dead")
  }
}
