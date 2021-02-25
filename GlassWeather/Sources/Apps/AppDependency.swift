//
//  AppDependency.swift
//  GlassWeather
//
//  Created by JunSang Ryu on 2021/02/23.
//

import Foundation

import Swinject

struct AppDependency {
  let container: Container
}

extension AppDependency {
  static func resolve() -> AppDependency {
    let container = Container()
    container.register(ViewController.self) { _ in ViewController() }

    return AppDependency(container: container)
  }
}
