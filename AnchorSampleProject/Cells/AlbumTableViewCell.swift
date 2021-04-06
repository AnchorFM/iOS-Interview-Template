import UIKit

final class AlbumTableViewCell: UITableViewCell {
    // MARK: - Views
    private lazy var albumNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Album name"
        label.font = .boldSystemFont(ofSize: 16)
        return label
    }()

    private lazy var artistNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Artist name"
        label.font = .systemFont(ofSize: 15)
        return label
    }()

    private lazy var contentStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    private lazy var coverArtImageView: UIImageView = {
        let image = UIImage(named: "PlaceholderAlbumCoverArt")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    private lazy var labelsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = 5
        return stackView
    }()

    // MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
    }

    // MARK: - Views setup
    func setupViews() {
        labelsStackView.addArrangedSubviews(
            albumNameLabel,
            artistNameLabel
        )

        contentStackView.addArrangedSubviews(
            coverArtImageView,
            labelsStackView
        )

        contentView.addSubview(contentStackView)

        contentStackView.fitToMargins(of: contentView)
        coverArtImageView.setWidth(equalTo: 50)
        coverArtImageView.setHeight(equalTo: 50)
    }
}
