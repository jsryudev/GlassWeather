//
//  BaseViewController.swift
//  GlassWeather
//
//  Created by JunSang Ryu on 2021/02/23.
//

import UIKit

import RxSwift

class BaseViewController: UIViewController {

  // MARK: - Initializing
  init() {
    super.init(nibName: nil, bundle: nil)
  }

  required convenience init?(coder aDecoder: NSCoder) {
    self.init()
  }

  // MARK: - RreactiveX
  var disposeBag = DisposeBag()


  // MARK: - View Lifecycle
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
  }

  // MARK: - Layout Constraints
  private(set) var didSetupConstraints = false

  override func viewDidLoad() {
    self.addSubviews()
    self.view.setNeedsUpdateConstraints()
  }

  override func updateViewConstraints() {
    if !self.didSetupConstraints {
      self.setupConstraints()
      self.didSetupConstraints = true
    }
    super.updateViewConstraints()
  }

  func addSubviews() {
  }

  func setupConstraints() {
  }
}

