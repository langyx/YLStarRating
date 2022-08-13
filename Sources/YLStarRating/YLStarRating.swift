import SwiftUI

public struct YLStarRating: View {
    
    public init(setting: YLStarRatingSetting = YLStarRatingSetting()) {
        self.setting = setting
    }
    
    var setting = YLStarRatingSetting()
    
    public var body: some View {
        HStack(spacing: setting.spacing){
            ForEach(0..<setting.numberOfStars, id: \.self) { index in
                YLStarRatingStar(setting: setting, index: index)
            }
        }
    }
}

struct YLStarRating_Previews: PreviewProvider {
    static var previews: some View {
        YLStarRating(setting: YLStarRatingSetting(numberOfStars: 5, rating: 0.0, spacing: 2))
    }
}
