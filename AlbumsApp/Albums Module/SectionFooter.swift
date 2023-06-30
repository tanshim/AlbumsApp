//
//  SectionFooter.swift
//  AlbumsApp
//
//  Created by Sultan on 01.07.2023.
//

import UIKit
import SnapKit

class SectionFooter: UICollectionReusableView {

    static let identifier = "SectionFooter"

    // MARK: - Outlets

    lazy var lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray2
        return view
    }()

    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("Error in Cell")
    }

    // MARK: - Setup

    private func setupHierarchy() {
        addSubview(lineView)
    }

    private func setupLayout() {
        lineView.snp.makeConstraints { make in
            make.height.equalTo(1)
            make.width.equalToSuperview()
        }
    }

    override func prepareForReuse() {
        super.prepareForReuse()
    }
        
}
