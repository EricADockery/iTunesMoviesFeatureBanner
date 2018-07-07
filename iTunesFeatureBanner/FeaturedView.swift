//
//  FeaturedView.swift
//  iTunesFeatureBanner
//
//  Created by Eric Dockery on 7/7/18.
//  Copyright © 2018 Eric Dockery. All rights reserved.
//

import UIKit

class FeaturedView: UIView {

    @IBOutlet private weak var collectionView: UICollectionView!

    var presenter: FeaturedViewPresenter?

    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        collectionView.remembersLastFocusedIndexPath = true
        if let nextFocusView = context.nextFocusedView as? UICollectionViewCell, let indexPath = collectionView.indexPath(for: nextFocusView) {
            collectionView.isScrollEnabled = false
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
            coordinator.addCoordinatedAnimations({
                nextFocusView.transform = CGAffineTransform(scaleX: 1.0, y: 1.1)
            }, completion: nil)
        } else {
            collectionView.isScrollEnabled = true
        }

        if let previouslyFocusedView = context.previouslyFocusedView as? UICollectionViewCell {
            coordinator.addCoordinatedAnimations({
                previouslyFocusedView.transform = CGAffineTransform(scaleX: 1.0, y: 0.9)
            }, completion: nil)
        }
    }

}

extension FeaturedView: FeaturedPresenting {
    func scroll() {
        collectionView.scrollToItem(at: IndexPath(item: 8, section: 0), at: .centeredHorizontally, animated: false)
    }
}

extension FeaturedView: UICollectionViewDelegate {

}

extension FeaturedView: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let presenter = presenter, let featuredFighterCells = presenter.featuredFighters else {
            return 0
        }
        return featuredFighterCells.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FeaturedCollectionViewCell", for: indexPath) as! FeaturedCollectionViewCell
        guard let presenter = presenter, let featuredFighters = presenter.featuredFighters else {
            return cell
        }
        cell.build(with: featuredFighters[indexPath.row])
        return cell
    }


}
