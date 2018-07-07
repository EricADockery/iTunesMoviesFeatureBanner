//
//  FeaturedCollectionViewCell.swift
//  iTunesFeatureBanner
//
//  Created by Eric Dockery on 7/7/18.
//  Copyright © 2018 Eric Dockery. All rights reserved.
//

import UIKit

class FeaturedCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var heroImageView: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var powerlevel: UILabel!

    func build(with fighter: FighterData) {
        heroImageView.image = UIImage(named: fighter.imageName)
        name.text = fighter.name
        age.text = "\(fighter.age)"
        powerlevel.text = "\(fighter.powerLevel)"
    }
}
