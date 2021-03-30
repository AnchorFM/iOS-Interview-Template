import UIKit

extension UIView {
    func fitViewToEdges(of view: UIView) {
        let constraints = [
            leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ]
        addConstraints(constraints)
    }

    func alignTop(with view: UIView) {
        let constraints = [
            topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
        ]
        addConstraints(constraints)
    }

    func alignBottom(with view: UIView) {
        let constraints = [
            bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ]
        addConstraints(constraints)
    }

    func alignLeft(with view: UIView) {
        let constraints = [
            leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
        ]
        addConstraints(constraints)
    }

    func alignRight(with view: UIView) {
        let constraints = [
            trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
        ]
        addConstraints(constraints)
    }
}

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach {
            addSubview($0)
        }
    }
}

extension UIStackView {
    func addArrangedSubviews(_ views: UIView...) {
        views.forEach {
            addArrangedSubview($0)
        }
    }
}

extension UITableViewCell {
    static var defaultIdentifier: String {
        return Self.description()
    }
}
