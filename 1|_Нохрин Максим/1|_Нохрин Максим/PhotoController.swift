//
//  PhotoController.swift
//  1|_Нохрин Максим
//
//  Created by Maksim on 01/12/2019.
//  Copyright © 2019 Ololo. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Photo"


class PhotoController: UICollectionViewController {
    var photoCollection = [1, 2, 3, 4, 5, 6, 7, 8, 1, 2, 3, 4, 5, 6, 7, 8]
    
    var userName: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        //self.collectionView!.register(PhotoCell.self, forCellWithReuseIdentifier: reuseIdentifier)

    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoCollection.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Photo", for: indexPath) as? PhotoCell else { return UICollectionViewCell()}
        
        return cell
    }
}

class PhotoCell: UICollectionViewCell {
    @IBOutlet weak var photo: UIImageView!
    
}
