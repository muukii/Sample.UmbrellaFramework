//
//  AppService.swift
//  AppService
//
//  Created by muukii on 2019/01/13.
//  Copyright © 2019 muukii. All rights reserved.
//

import Foundation

import RxSwift

public enum Service {
  
  public func run() -> Single<Void> {
    return .just(())
  }
  
}
