import UIKit
import SnapKit

final class ViewController: UIViewController {
    // MARK: - Views
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(
            AlbumTableViewCell.self,
            forCellReuseIdentifier: AlbumTableViewCell.defaultIdentifier
        )
        return tableView
    }()

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    // MARK: - Views setup
    private func setupViews() {
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.margins.equalToSuperview()
        }
    }
}
