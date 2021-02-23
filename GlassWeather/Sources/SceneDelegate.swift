//
//  SceneDelegate.swift
//  GlassWeather
//
//  Created by JunSang Ryu on 2021/02/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

  let dependency: AppDependency
  var window: UIWindow?

  override init() {
    self.dependency = AppDependency.resolve()
    super.init()
  }

  func scene(
    _ scene: UIScene,
    willConnectTo session: UISceneSession,
    options connectionOptions: UIScene.ConnectionOptions
  ) {
    guard let windowScene = (scene as? UIWindowScene) else { return }
    let window = UIWindow(windowScene: windowScene)
    window.backgroundColor = .black
    window.makeKeyAndVisible()
    window.rootViewController = dependency.container.resolve(ViewController.self)
    self.window = window
  }
}

