//
//  ContentCollectionViewRankCell.swift
//  Netflix
//
//  Created by sunny h on 2021/09/21.
//

import UIKit

class ContentCollectionViewRankCell: UICollectionViewCell {
    
    let imageView = UIImageView()
    let rankLabel = UILabel()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        // contentView
        
        contentView.layer.cornerRadius = 5
        contentView.clipsToBounds = true
        
        // imageView
        imageView.contentMode = .scaleToFill
        contentView.addSubview(imageView)
        imageView.snp.makeConstraints{
            $0.top.trailing.bottom.equalToSuperview()
            $0.width.equalToSuperview().multipliedBy(0.8)
        }
        // rankLabel
        rankLabel.font = .systemFont(ofSize: 100, weight: .black)
        rankLabel.textColor = .white
        contentView.addSubview(rankLabel)
        rankLabel.snp.makeConstraints{
            $0.leading.equalToSuperview()
            $0.bottomMargin.equalToSuperview().offset(25)
        }
    }
    
}
