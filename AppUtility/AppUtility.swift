//
//  AppUtility.swift
//  AppUtility
//
//  Created by muukii on 2019/01/13.
//  Copyright © 2019 muukii. All rights reserved.
//

import Foundation

import Umbrella

public enum Utility {
  
  public func calculate() {
    print(SessionManager.default)
    print(Observable<Void>.just(()))
  }
}
