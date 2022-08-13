//
//  YLStarRatingSetting.swift
//  mikeeSportProject
//
//  Created by Yannis Lang on 09/05/2021.
//  Copyright © 2021 Yannis Lang. All rights reserved.
//

import Foundation
import SwiftUI

public struct YLStarRatingSetting {
    
    public init(numberOfStars: Int = 5, rating: Double = 0, font: Font = .body, color: Color = .black, spacing: CGFloat = 5) {
        self.numberOfStars = numberOfStars
        self.rating = rating
        self.font = font
        self.color = color
        self.spacing = spacing
    }
    
    var numberOfStars: Int = 5
    var rating: Double = 0
    
    var font: Font = .body
    var color: Color = .black
    var spacing: CGFloat = 5
}
