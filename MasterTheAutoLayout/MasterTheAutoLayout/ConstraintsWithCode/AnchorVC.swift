import UIKit

final class AnchorVC: UIViewController {
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
    
    // anchor를 만들자마자 활성화
    button.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 16).isActive = true
    button.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -16).isActive = true
    let safeBottomAnchor = button.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor)
    safeBottomAnchor.isActive = true
    safeBottomAnchor.priority = .init(999)
    
    let viewBottomAnchor = button.bottomAnchor.constraint(lessThanOrEqualTo: view.bottomAnchor, constant: -20)
    viewBottomAnchor.isActive = true
  }
}
