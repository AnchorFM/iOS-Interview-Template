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
        return stackView
    }()

    private lazy var coverArtImageView: UIImageView = {
        let image = UIImage(named: "PlaceholderAlbumCoverArt")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
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
        contentView.addSubview(contentStackView)
        
        labelsStackView.addArrangedSubviews(
            albumNameLabel,
            artistNameLabel
        )

        contentStackView.addArrangedSubviews(
            coverArtImageView,
            labelsStackView
        )

        contentStackView.snp.makeConstraints { make in
            make.margins.equalToSuperview()
        }

        coverArtImageView.snp.makeConstraints { make in
            make.width.height.equalTo(50)
        }
    }
}
