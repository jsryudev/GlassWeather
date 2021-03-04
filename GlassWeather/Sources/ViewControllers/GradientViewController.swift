//
//  GradientViewController.swift
//  GlassWeather
//
//  Created by JunSang Ryu on 2021/02/26.
//

import UIKit

import AnimatedGradientView
import SnapKit

class GradientViewController: BaseViewController {
  private let backgroundView = AnimatedGradientView()

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  override func addSubviews() {
    self.view.addSubview(self.backgroundView)
  }

  override func setupConstraints() {
    self.backgroundView.snp.makeConstraints { make in
      make.edges.equalToSuperview()
    }
  }
}
