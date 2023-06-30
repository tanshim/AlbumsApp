//
//  AlbumsCell.swift
//  AlbumsApp
//
//  Created by Sultan on 01.07.2023.
//

import UIKit
import SnapKit

class AlbumCell: UICollectionViewCell {

    static let identifier = "AlbumCell"

    var cellModel: Model? {
        didSet {
            imageView.image = UIImage(named: cellModel?.image ?? "sun.haze")
            label.text = cellModel?.label
            countLabel.text = cellModel?.countLabel
        }
    }

    // MARK: - UI

    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 8
        imageView.layer.masksToBounds = true
        imageView.contentMode = .center
        return imageView
    }()

    private lazy var label: UILabel = {
        let label = UILabel()
        label.textColor = .black
        return label
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
        label.text = nil
        countLabel.text = nil
    }

    // MARK: - Setup

    private func setupViews() {
        contentView.addSubview(imageView)
        contentView.addSubview(label)
        contentView.addSubview(countLabel)
    }

    private func setupConstraints() {
        //let imageHeight = contentView.snp.height
        imageView.snp.makeConstraints { make in
            make.leading.top.equalToSuperview()
            make.width.equalToSuperview()
            make.height.equalTo(150)
        }
        label.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(5)
            make.leading.equalToSuperview().offset(10)
            make.height.equalTo(15)
        }
        countLabel.snp.makeConstraints { make in
            make.top.equalTo(label.snp.bottom).offset(5)
            make.leading.equalToSuperview().offset(10)
            make.height.equalTo(15)
        }
    }
    
}
