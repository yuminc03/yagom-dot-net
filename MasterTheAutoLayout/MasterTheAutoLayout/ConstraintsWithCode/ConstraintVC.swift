import UIKit

final class ConstraintVC: UIViewController {
  private let button: UIButton = {
    let v = UIButton()
    v.translatesAutoresizingMaskIntoConstraints = false
    v.setTitle("Button", for: .normal)
    v.setTitleColor(.white, for: .normal)
    v.backgroundColor = .systemGreen
    
    return v
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupUI()
    setupConstraints()
  }
  
  private func setupUI() {
    view.backgroundColor = .white
    view.addSubview(button)
  }
  
  private func setupConstraints() {
    let safeArea = view.safeAreaLayoutGuide
    let leading = NSLayoutConstraint(
      item: button,
      attribute: .leading,
      relatedBy: .equal,
      toItem: safeArea,
      attribute: .leading,
      multiplier: 1,
      constant: 16
    )
    
    let trailing = NSLayoutConstraint(
      item: button,
      attribute: .trailing,
      relatedBy: .equal,
      toItem: safeArea,
      attribute: .trailing,
      multiplier: 1,
      constant: -16
    )
    
    let bottomSafeArea = NSLayoutConstraint(
      item: button,
      attribute: .bottom,
      relatedBy: .equal,
      toItem: safeArea,
      attribute: .bottom,
      multiplier: 1,
      constant: -16
    )
    
    bottomSafeArea.priority = .defaultHigh
    
    let bottomView = NSLayoutConstraint(
      item: button,
      attribute: .bottom,
      relatedBy: .lessThanOrEqual,
      toItem: view,
      attribute: .bottom,
      multiplier: 1,
      constant: -20
    )
    
    NSLayoutConstraint.activate([
      leading,
      trailing,
      bottomView,
      bottomSafeArea
    ])
    
    // 단 NSLayoutConstraint를 잘못 만들면 오류가 발생함
    // (Swift의 generic이 사용되지 않기 때문에 컴파일 오류가 나타나지 않음)
//    NSLayoutConstraint(
//      item: button,
//      attribute: .leading,
//      relatedBy: .equal,
//      toItem: view,
//      attribute: .bottom,
//      multiplier: 1,
//      constant: -20
//    ).isActive = true
  }
}
