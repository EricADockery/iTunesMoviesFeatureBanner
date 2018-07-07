//
//  TopMostCollectionViewCellPresenter.swift
//  iTunesFeatureBanner
//
//  Created by Eric Dockery on 7/7/18.
//  Copyright © 2018 Eric Dockery. All rights reserved.
//

class TopMostCollectionViewCellPresenter {

    let presenter = FeaturedViewPresenter()

    func build(with fighterData: [FighterData]) {
        presenter.featuredFighters = fighterData
    }
}
