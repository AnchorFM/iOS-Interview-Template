import UIKit

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

// MARK: - TableViewCell
extension UITableViewCell {
    static var defaultIdentifier: String {
        return Self.description()
    }
}

// MARK: - Autolayout
extension UIView {
    func fitToEdges(of view: UIView) {
        NSLayoutConstraint.activate(
            [
                leadingAnchor.constraint(equalTo: view.leadingAnchor),
                topAnchor.constraint(equalTo: view.topAnchor),
                trailingAnchor.constraint(equalTo: view.trailingAnchor),
                bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ]
        )
    }

    func fitToMargins(of view: UIView) {
        NSLayoutConstraint.activate(
            [
                leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
                topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
                trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
                bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor)
            ]
        )
    }

    func setHeight(equalTo constant: CGFloat) {
        NSLayoutConstraint.activate([heightAnchor.constraint(equalToConstant: constant)])
    }

    func setWidth(equalTo constant: CGFloat) {
        NSLayoutConstraint.activate([widthAnchor.constraint(equalToConstant: constant)])
    }
}
