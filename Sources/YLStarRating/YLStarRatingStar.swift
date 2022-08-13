//
//  YLStarRatingStar.swift
//  mikeeSportProject
//
//  Created by Yannis Lang on 09/05/2021.
//  Copyright © 2021 Yannis Lang. All rights reserved.
//

import SwiftUI

struct YLStarRatingStar: View {
    let setting: YLStarRatingSetting
    let index: Int
    
    private var state: State {
        let remain = setting.rating - Double(index)
        switch remain {
        case ...0:
            return .empty
        case 1...:
            return .fill
        default:
            return .half
        }
    }
    
    var body: some View {
        Image(systemName: state.image)
            .font(setting.font)
            .foregroundColor(setting.color)
    }
}

extension YLStarRatingStar {
    enum State {
        case fill, half, empty
        
        var image: String {
            switch self {
            case .fill:
                return "star.fill"
            case .half:
                return "star.leadinghalf.fill"
            default:
                return "star"
            }
        }
    }
}

struct YLStarRatingStar_Previews: PreviewProvider {
    static var previews: some View {
        YLStarRatingStar(setting: YLStarRatingSetting(numberOfStars: 5, rating: 4), index: 4)
    }
}
