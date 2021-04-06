import UIKit

final class ViewController: UIViewController {
    // MARK: - Views
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
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
        tableView.fitToEdges(of: view)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: AlbumTableViewCell.defaultIdentifier) else {
            return UITableViewCell()
        }

        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }


}
