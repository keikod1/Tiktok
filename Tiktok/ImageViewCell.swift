//
//  ImageViewCell.swift
//  Tiktok
//
//  Created by my macbook on 13/2/22.
//

import Foundation
import SnapKit
import UIKit

class ImageViewCell: UICollectionViewCell {
    
    lazy var imageTiktok: UIImageView = {
        let view = UIImageView()
        view.image = .checkmark
        view.backgroundColor = .black
        return view
    }()
    
    override func layoutSubviews() {
       
        addSubview(imageTiktok)
        imageTiktok.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalToSuperview()
        }
    }
    
      
}

