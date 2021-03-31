import UIKit

final class ViewController: UIViewController {

    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    private func setupViews() {
        view.addSubview(tableView)
        tableView.register(
            AlbumTableViewCell.self,
            forCellReuseIdentifier: AlbumTableViewCell.defaultIdentifier
        )
    }
}
