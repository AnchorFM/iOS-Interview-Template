import UIKit

final class AlbumTableViewCell: UITableViewCell {
    private var labelsStackView: UIStackView {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        return stackView
    }

    private var contentStackView: UIStackView {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 10
        return stackView
    }

    private var artistNameLabel: UILabel {
        let label = UILabel()
        return label
    }

    private var albumNameLabel: UILabel {
        let label = UILabel()
        return label
    }

    private var coverArtImageView: UIImageView {
        let imageView = UIImageView()
        return imageView
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
    }

    func setupViews() {
        labelsStackView.addArrangedSubviews(
            artistNameLabel,
            albumNameLabel
        )
        contentStackView.addArrangedSubviews(
            coverArtImageView,
            labelsStackView
        )
        contentView.addSubview(contentStackView)

        contentStackView.fitViewToEdges(of: contentView)
    }
}
