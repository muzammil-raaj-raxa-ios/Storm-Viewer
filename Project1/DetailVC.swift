//
//  DetailVC.swift
//  Project1
//
//  Created by Mag isb-10 on 08/04/2024.
//

import UIKit

class DetailVC: UIViewController {
  @IBOutlet weak var imageView: UIImageView!
  var selectedImage: String?
  var totalPictures: Int?
  var imageAtIndex: Int?
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
      title = "Picture \(imageAtIndex! + 1) of \(totalPictures ?? 0)"
      navigationItem.largeTitleDisplayMode = .never

      if let imageToLoad = selectedImage {
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
