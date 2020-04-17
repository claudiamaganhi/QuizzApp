import UIKit

extension UIView {
    
    func applyBorderAndRoundStyle() {
        layer.borderWidth = 2
        layer.borderColor = #colorLiteral(red: 1, green: 0.8274509804, blue: 0.4117647059, alpha: 1)
        layer.cornerRadius = 8.0
        layer.masksToBounds = true
    }
    
}
