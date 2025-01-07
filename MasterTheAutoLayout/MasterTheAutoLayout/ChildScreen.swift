import UIKit

enum ChildScreen: Int, CaseIterable {
  case layoutAnchor
  case nsLayoutConstraints
  case stack
  
  var title: String {
    switch self {
    case .layoutAnchor:
      return "Layout Anchors"
      
    case .nsLayoutConstraints:
      return "NSLayoutConstraint"
      
    case .stack:
      return "Dynamic Stack View"
    }
  }
  
  var vc: UIViewController {
    switch self {
    case .layoutAnchor:
      return AnchorVC()
      
    case .nsLayoutConstraints:
      return ConstraintVC()
      
    case .stack:
      return StackVC()
    }
  }
}
