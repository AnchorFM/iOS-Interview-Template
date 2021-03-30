import UIKit

final class AlbumTableViewCell: UITableViewCell {
    private var albumImageView: UIImageView {
        let imageView = UIImageView()
        return imageView
    }
}

final class ViewController: UIViewController {

    private var tableView: UITableView {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    private func setupViews() {
        view.addSubview(tableView)
        tableView.pinViewToEdges(of: view)
    }
}

extension UIView {
    func pinViewToEdges(of view: UIView) {
        let constraints = [
            leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ]
        addConstraints(constraints)
    }
}

