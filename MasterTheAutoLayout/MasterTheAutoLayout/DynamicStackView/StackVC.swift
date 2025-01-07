import UIKit

final class StackVC: UIViewController {
  private let verticalStackView: UIStackView = {
    let v = UIStackView()
    
    v.translatesAutoresizingMaskIntoConstraints = false
    v.axis = .vertical
    v.spacing = 10
    v.distribution = .fillEqually
    return v
  }()
  
  private let horizontalStackView: UIStackView = {
    let v = UIStackView()
    
    v.translatesAutoresizingMaskIntoConstraints = false
    v.axis = .horizontal
    v.spacing = 10
    v.distribution = .fillEqually
    return v
  }()
  
  private let addButton: UIButton = {
    let v = UIButton()
    
    v.setTitle("Add", for: .normal)
    v.setTitleColor(.blue, for: .normal)
    return v
  }()
  
  private let removeButton: UIButton = {
    let v = UIButton()
    
    v.setTitle("Remove", for: .normal)
    v.setTitleColor(.blue, for: .normal)
    return v
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupUI()
    setupConstriants()
  }
  
  private func setupUI(){
    view.backgroundColor = .white
    view.addSubview(verticalStackView)
    view.addSubview(horizontalStackView)
    
    horizontalStackView.addArrangedSubview(addButton)
    horizontalStackView.addArrangedSubview(removeButton)
    
    addButton.addTarget(self, action: #selector(addView), for: .touchUpInside)
    removeButton.addTarget(self, action: #selector(removeView), for: .touchUpInside)
  }
  
  private func setupConstriants() {
    horizontalStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    horizontalStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
    horizontalStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
    
    verticalStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
    verticalStackView.bottomAnchor.constraint(equalTo: horizontalStackView.topAnchor).isActive = true
    verticalStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
    verticalStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
  }
  
  @objc private func addView() {
    let v = UIView()
    v.backgroundColor = .black
    v.isHidden = true
    verticalStackView.addArrangedSubview(v)
    
    UIView.animate(withDuration: 0.3) {
      v.isHidden = false
    }
  }
  
  @objc private func removeView() {
    guard let last = verticalStackView.arrangedSubviews.last else { return }
    
    UIView.animate(withDuration: 0.3) {
      last.isHidden = true
    } completion: { [weak self] _ in
      self?.verticalStackView.removeArrangedSubview(last)
    }
  }
}
