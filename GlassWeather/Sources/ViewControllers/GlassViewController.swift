//
//  GlassViewController.swift
//  GlassWeather
//
//  Created by JunSang Ryu on 2021/02/26.
//

import UIKit

import SnapKit

class GlassViewController: BaseViewController {
  private let backgroundView = UIView()
  private let glassView = UIView()

  override func addSubviews() {
    self.view.addSubview(self.backgroundView)
    self.view.addSubview(self.glassView)
  }

  override func setupConstraints() {
    self.backgroundView.snp.makeConstraints { make in
      make.edges.equalToSuperview()
    }
    self.glassView.snp.makeConstraints { make in
      make.edges.equalToSuperview().inset(20)
    }
  }
}
