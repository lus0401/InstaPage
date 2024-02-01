//
//  GalleryView.swift
//  InstaPage
//
//  Created by t2023-m0051 on 1/31/24.
//

import UIKit

class GalleryCollectionView: UICollectionView {
    
    // MARK: - Properties
    
    private let galleryImages = [
        UIImage(named: "picture1"),
        UIImage(named: "picture2"),
        UIImage(named: "picture3"),
        UIImage(named: "picture4"),
        UIImage(named: "picture5"),
        UIImage(named: "picture6"),
        UIImage(named: "picture7"),
        UIImage(named: "picture1"),
        UIImage(named: "picture2"),
        UIImage(named: "picture3"),
        UIImage(named: "picture4"),
        UIImage(named: "picture5"),
        UIImage(named: "picture6"),
        UIImage(named: "picture7"),
        UIImage(named: "picture1"),
        UIImage(named: "picture2"),
        UIImage(named: "picture3"),
        UIImage(named: "picture4"),
        UIImage(named: "picture5"),
        UIImage(named: "picture6"),
        UIImage(named: "picture7"),
    ]
    
    // MARK: - Life Cycle
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        super.init(frame: frame, collectionViewLayout: layout)
        
        setCollectionView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setCollectionView()
    }
}


// MARK: - Extensions

extension GalleryCollectionView {
    private func setCollectionView() {
        backgroundColor = .white
        
        register(GalleryCollectionViewCell.self, forCellWithReuseIdentifier: GalleryCollectionViewCell.identifier)
        dataSource = self
        delegate = self
    }
}


extension GalleryCollectionView: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    // MARK: UICollectionViewDataSource
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return galleryImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: GalleryCollectionViewCell.identifier, for: indexPath) as? GalleryCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.imageView.image = self.galleryImages[indexPath.item]
        
        return cell
    }
    
    // MARK: UICollectionViewDelegateFlowLayout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = (self.bounds.width - 4) / 3
        
        return CGSize(width: cellWidth, height: cellWidth)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
}
