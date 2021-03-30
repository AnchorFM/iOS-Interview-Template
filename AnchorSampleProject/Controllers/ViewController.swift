import UIKit

final class ViewController: UIViewController {

    private var tableView: UITableView {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }

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
        tableView.fitViewToEdges(of: view)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
                withIdentifier: AlbumTableViewCell.defaultIdentifier
        ) else {
            return UITableViewCell()
        }
        

        return cell
    }
}
