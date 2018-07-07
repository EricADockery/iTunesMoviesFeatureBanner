//
//  TopMostPresenter.swift
//  iTunesFeatureBanner
//
//  Created by Eric Dockery on 7/7/18.
//  Copyright © 2018 Eric Dockery. All rights reserved.
//

class TopMostPresenter {

    var builtFeatureCellData: [FighterData]?

    func buildFeatureCellData() {
        builtFeatureCellData = buildFighters()
    }

    private func buildFighters() -> [FighterData] {
        let fighter1 = FighterData(name: "SSGSS Vegeta", age: 45, powerLevel: 2000, imageName: "ssgssV.jpg" )
        let fighter2 = FighterData(name: "Berus", age: 45, powerLevel: 2000, imageName: "Berus.jpg" )
        let fighter3 = FighterData(name: "Broly", age: 45, powerLevel: 2000, imageName: "broly.jpg" )
        let fighter4 = FighterData(name: "FemalBuu", age: 45, powerLevel: 2000, imageName: "femalBuu.jpeg" )
        let fighter5 = FighterData(name: "GokuDad", age: 45, powerLevel: 2000, imageName: "GokuDad.png" )
        let fighter6 = FighterData(name: "Goku Rose", age: 45, powerLevel: 2000, imageName: "GokuRose.jpeg" )
        let fighter7 = FighterData(name: "Gotinks", age: 45, powerLevel: 2000, imageName: "Gotinks.png" )
        let fighter8 = FighterData(name: "Hit", age: 45, powerLevel: 2000, imageName: "Hit.png" )
        let fighter9 = FighterData(name: "Kirllin", age: 45, powerLevel: 2000, imageName: "krillin.jpg" )
        let fighter10 = FighterData(name: "Majin Buu", age: 45, powerLevel: 2000, imageName: "majinbuu.jpg" )
        let fighter11 = FighterData(name: "Piccolo", age: 45, powerLevel: 2000, imageName: "piccolo.jpg" )
        let fighter12 = FighterData(name: "SSGoku", age: 45, powerLevel: 2000, imageName: "SSGoku.jpg" )
        let fighter13 = FighterData(name: "Tien", age: 45, powerLevel: 2000, imageName: "tien.jpg" )
        let fighter14 = FighterData(name: "Trunks", age: 45, powerLevel: 2000, imageName: "Trunks.jpg" )
        let fighter15 = FighterData(name: "Yamcha", age: 45, powerLevel: 2000, imageName: "Yamcha.jpeg" )
        return [fighter1, fighter2, fighter3, fighter4, fighter5, fighter6, fighter7, fighter8, fighter9, fighter10, fighter11, fighter12, fighter13, fighter14, fighter15]
    }
}
