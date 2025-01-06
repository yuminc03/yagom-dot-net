import UIKit

final class MainTableViewCell: UITableViewCell {
  private let titleLabel: UILabel = {
    let v = UILabel()
    v.translatesAutoresizingMaskIntoConstraints = false
    v.textColor = .black
    
    return v
  }()
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    setupUI()
    setupConstraints()
  }
  
  required init?(coder: NSCoder) {
    fatalError("Do not use Storyboard.")
  }
  
  func updateUI(title: String) {
    titleLabel.text = title
  }
  
  private func setupUI() {
    backgroundColor = .white
    selectionStyle = .none

    contentView.addSubview(titleLabel)
  }
  
  private func setupConstraints() {
    NSLayoutConstraint.activate([
      titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
      titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
      titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
      titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
    ])
  }
}
