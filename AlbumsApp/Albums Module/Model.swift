//
//  Model.swift
//  AlbumsApp
//
//  Created by Sultan on 01.07.2023.
//

import Foundation

struct Model {
    let image: String
    let label: String
    let countLabel: String
}

extension Model {
    static let models: [[Model]] = [
        [Model(image: "album1", label: "Recents", countLabel: "283"),
         Model(image: "album2", label: "Family Reunion", countLabel: "3"),
         Model(image: "album3", label: "Favorites", countLabel: "14"),
         Model(image: "album4", label: "Nature", countLabel: "7"),
         Model(image: "album5", label: "Vacation", countLabel: "34"),
         Model(image: "album6", label: "Mountains", countLabel: "22"),
         Model(image: "album7", label: "Anime", countLabel: "48")
        ],
        [Model(image: "", label: "", countLabel: ""),
         Model(image: "", label: "", countLabel: ""),
         Model(image: "", label: "", countLabel: ""),
         Model(image: "", label: "", countLabel: "")
        ],
        [Model(image: "", label: "", countLabel: ""),
         Model(image: "", label: "", countLabel: ""),
         Model(image: "", label: "", countLabel: "")
        ]
    ]
}
