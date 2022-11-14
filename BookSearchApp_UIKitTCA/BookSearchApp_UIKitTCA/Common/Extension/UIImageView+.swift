//
//  UIImageView+.swift
//  BookSearchApp_UIKitTCA
//
//  Created by 송형욱 on 2022/11/14.
//

import Foundation
import UIKit
import Kingfisher

extension UIImageView {
    func setImageURL(_ url: String) {
        self.kf.indicatorType = .activity
        let _url = URL(string: url)
        self.kf.setImage(
            with: _url,
            options: [
                .cacheOriginalImage
            ]
        )
    }
}
