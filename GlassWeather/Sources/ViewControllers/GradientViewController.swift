//
//  GradientViewController.swift
//  GlassWeather
//
//  Created by JunSang Ryu on 2021/02/26.
//

import UIKit

import AnimatedGradientView
import SnapKit
import Then

class GradientViewController: BaseViewController {
  private let backgroundView = AnimatedGradientView().then {
    $0.animationValues = [
      (colors: ["#2BC0E4", "#EAECC6", "#2BC0E4"], .up, .axial),
      (colors: ["#2BC0E4", "#EAECC6", "#2BC0E4"], .right, .axial),
      (colors: ["#2BC0E4", "#EAECC6", "#2BC0E4"], .down, .axial),
      (colors: ["#2BC0E4", "#EAECC6", "#2BC0E4"], .left, .axial)
    ]
  }

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
