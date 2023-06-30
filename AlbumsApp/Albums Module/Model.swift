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
         Model(image: "album2", label: "Friends", countLabel: "31"),
         Model(image: "album3", label: "Favorites", countLabel: "14"),
         Model(image: "album4", label: "Nature", countLabel: "7"),
         Model(image: "album5", label: "Vacation", countLabel: "34"),
         Model(image: "album6", label: "Mountains", countLabel: "22"),
         Model(image: "album7", label: "Anime", countLabel: "48")
        ],
        [Model(image: "video", label: "Videos", countLabel: "78"),
         Model(image: "person.crop.square", label: "Selfies", countLabel: "7"),
         Model(image: "cube", label: "Portrait", countLabel: "23"),
         Model(image: "pano", label: "Panoramas", countLabel: "41"),
         Model(image: "square.3.layers.3d.down.right", label: "Bursts", countLabel: "6"),
         Model(image: "camera.metering.center.weighted", label: "Screenshots", countLabel: "49"),
         Model(image: "record.circle", label: "Screen Recordings", countLabel: "7")
        ],
        [Model(image: "square.and.arrow.down", label: "Imports", countLabel: "0"),
         Model(image: "eye.slash", label: "Hidden", countLabel: "12"),
         Model(image: "trash", label: "Recently deleted", countLabel: "47")
        ]
    ]
}
