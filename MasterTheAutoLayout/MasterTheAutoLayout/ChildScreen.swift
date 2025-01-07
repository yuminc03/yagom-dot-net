import UIKit

enum ChildScreen: Int, CaseIterable {
  case layoutAnchor
  case nsLayoutConstraints
  
  var title: String {
    switch self {
    case .layoutAnchor:
      return "Layout Anchors"
      
    case .nsLayoutConstraints:
      return "NSLayoutConstraint"
    }
  }
  
  var vc: UIViewController {
    switch self {
    case .layoutAnchor:
      return AnchorVC()
      
    case .nsLayoutConstraints:
      return ConstraintVC()
    }
  }
}
