//
//  GlassView.swift
//  GlassWeather
//
//  Created by JunSang Ryu on 2021/02/26.
//

import UIKit

class GlassView: UIVisualEffectView {

  init(alpha: CGFloat = 0.3) {
    let blur = UIBlurEffect(style: .light)
    super.init(effect: blur)
    self.alpha = alpha
    self.clipsToBounds = true
    self.setupLayer()
  }
  required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }

  private func setupLayer() {
    self.layer.cornerRadius = 15
    self.layer.borderColor = UIColor.white.cgColor
    self.layer.borderWidth = 1
    self.layer.shadowColor = UIColor.black.cgColor
    self.layer.shadowOffset = CGSize(width: 0.5, height: 4.0)
    self.layer.shadowRadius = 10
    self.layer.shadowOpacity = 0.1
  }
}
