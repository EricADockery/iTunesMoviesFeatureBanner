//
//  TopMostCollectionViewCell.swift
//  iTunesFeatureBanner
//
//  Created by Eric Dockery on 7/7/18.
//  Copyright © 2018 Eric Dockery. All rights reserved.
//

import UIKit

struct FighterData {
    let name: String
    let age: Int
    let powerLevel: Int
    let imageName: String
}

class TopMostCollectionViewCell: UICollectionViewCell {

    let presenter = TopMostCollectionViewCellPresenter()

    @IBOutlet private weak var featuredView: FeaturedView!

    func build(fighters: [FighterData]) {
        presenter.build(with: fighters)
        featuredView.presenter = presenter.presenter
        featuredView.scroll()
    }
}
