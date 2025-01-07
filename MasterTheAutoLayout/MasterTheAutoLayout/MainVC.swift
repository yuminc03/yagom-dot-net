import UIKit

final class MainVC: UIViewController {
  private let childs = ChildScreen.allCases
  
  private let tableView: UITableView = {
    let v = UITableView(frame: .zero, style: .insetGrouped)
    v.translatesAutoresizingMaskIntoConstraints = false
    v.backgroundColor = .clear
    v.separatorStyle = .none
    v.register(MainTableViewCell.self, forCellReuseIdentifier: "MainTableViewCell")
    return v
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupUI()
    setupConstraints()
  }
  
  private func setupUI() {
    navigationItem.title = "Yagom.Net"
    navigationItem.largeTitleDisplayMode = .always
    view.backgroundColor = .lightGray
    view.addSubview(tableView)
    
    tableView.delegate = self
    tableView.dataSource = self
  }
  
  private func setupConstraints() {
    NSLayoutConstraint.activate([
      tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      tableView.topAnchor.constraint(equalTo: view.topAnchor),
      tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
    ])
  }
}

extension MainVC: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    navigationController?.pushViewController(
      childs[indexPath.row].vc,
      animated: true
    )
  }
}

extension MainVC: UITableViewDataSource {
  func tableView(
    _ tableView: UITableView,
    numberOfRowsInSection section: Int
  ) -> Int {
    return childs.count
  }
  
  func tableView(
    _ tableView: UITableView,
    cellForRowAt indexPath: IndexPath
  ) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(
      withIdentifier: "MainTableViewCell",
      for: indexPath
    ) as? MainTableViewCell else {
      return UITableViewCell()
    }
    
    cell.updateUI(title: childs[indexPath.row].title)
    return cell
  }
}
