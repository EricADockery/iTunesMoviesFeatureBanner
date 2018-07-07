//
//  FeaturedViewPresenter.swift
//  iTunesFeatureBanner
//
//  Created by Eric Dockery on 7/7/18.
//  Copyright © 2018 Eric Dockery. All rights reserved.
//

protocol FeaturedPresenting: class {
    func scroll()
}

class FeaturedViewPresenter {

    var featuredFighters: [FighterData]?
    weak var delegate: FeaturedPresenting?

    func scroll() {
        delegate?.scroll()
    }
    
}
