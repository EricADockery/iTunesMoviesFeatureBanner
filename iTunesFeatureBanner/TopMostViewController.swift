//
//  TopMostViewController.swift
//  iTunesFeatureBanner
//
//  Created by Eric Dockery on 7/7/18.
//  Copyright © 2018 Eric Dockery. All rights reserved.
//

import UIKit

class TopMostViewController: UIViewController {

    let presenter = TopMostPresenter()

    override func viewDidLoad() {
        super.viewDidLoad()

        presenter.buildFeatureCellData()
    }

}

extension TopMostViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopMostCollectionViewCell", for: indexPath) as! TopMostCollectionViewCell
        guard let fighterData = presenter.builtFeatureCellData else {
            return cell
        }
        cell.build(fighters: fighterData)
        return cell
    }

}

extension TopMostViewController: UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, canFocusItemAt indexPath: IndexPath) -> Bool {
        return false
    }
}
