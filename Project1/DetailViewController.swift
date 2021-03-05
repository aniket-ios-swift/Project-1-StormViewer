//
//  DetailViewController.swift
//  Project1
//
//  Created by Aniket Rao on 04/03/21.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    var totalImages: Int = 0
    var selectedImageIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Picture \(selectedImageIndex + 1) of \(totalImages)"
        navigationItem.largeTitleDisplayMode = .never
        if let imageToLoad = selectedImage{
            imageView.image = UIImage(named: imageToLoad)
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false

    }
}

