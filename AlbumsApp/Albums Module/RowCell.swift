//
//  RowCell.swift
//  AlbumsApp
//
//  Created by Sultan on 01.07.2023.
//

import UIKit
import SnapKit

class RowCell: UICollectionViewCell {

    static let identifier = "RowCell"

    var cellModel: Model? {
        didSet {
            imageView.image = UIImage(systemName: cellModel?.image ?? "sun.haze")
            label.text = cellModel?.label
            countLabel.text = cellModel?.countLabel
        }
    }

    // MARK: - UI

    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .systemBlue
        imageView.contentMode = .center
        return imageView
    }()

    private lazy var label: UILabel = {
        let label = UILabel()
        label.textColor = .systemBlue
        return label
    }()

    private lazy var chevronImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "chevron.right")
        imageView.tintColor = .systemGray2
        imageView.contentMode = .center
        return imageView
    }()

    private lazy var countLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray
        return label
    }()


    // MARK: - Lifecycle

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("Error")
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
        chevronImageView.image = nil
        label.text = nil
        countLabel.text = nil
    }

    // MARK: - Setup

    private func setupViews() {
        contentView.addSubview(imageView)
        contentView.addSubview(label)
        contentView.addSubview(chevronImageView)
        contentView.addSubview(countLabel)
    }

    private func setupConstraints() {
        imageView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(5)
            make.centerY.equalToSuperview()
            make.size.equalTo(20)
        }
        label.snp.makeConstraints { make in
            make.leading.equalTo(imageView.snp.trailing).offset(10)
            make.centerY.equalToSuperview()
            make.height.equalTo(20)
        }
        chevronImageView.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-5)
            make.centerY.equalToSuperview()
            make.size.equalTo(15)
        }
        countLabel.snp.makeConstraints { make in
            make.trailing.equalTo(chevronImageView.snp.leading).offset(-5)
            make.centerY.equalToSuperview()
            make.height.equalTo(15)
        }
    }
    
}
