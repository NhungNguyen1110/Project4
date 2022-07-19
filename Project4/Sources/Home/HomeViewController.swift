//
//  HomeViewController.swift
//  Project4
//
//  Created by Nhung on 05/07/2022.
//

import UIKit

final class HomeViewController: UIViewController {
    // MARK: - Properties
    var pictures = [String]()
    
    
    var selectedImage: String?
    
    // MARK: - IBOUtlets
    @IBOutlet var topLeftImage: UIButton!
    
    @IBOutlet var topRIghtImageView: UIButton!
    @IBOutlet var bottomLeftImage: UIButton!
    @IBOutlet var bottomRightImage: UIButton!
    
    
    
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var topLeftButton: UIButton!
    @IBOutlet private weak var topRightButton: UIButton!

    @IBOutlet weak var arrowUp: UIImageView!
    @IBOutlet weak var bottomLeftButton: UIButton!
    @IBOutlet weak var bottomRightButton: UIButton!
    
    @IBOutlet weak var layout1: UIButton!
    @IBOutlet weak var layout2: UIButton!
    @IBOutlet weak var layout3: UIButton!
    var selected: UIImageView!
    
    // MARK: - View life cycle
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        titleLabel.text = "Instagrid"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))

        
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)

        for item in items {
            if item.hasPrefix("pexels") {
                pictures.append(item)
            }
        }
        print(pictures)
       

    }
    
    @objc func shareTapped() {
        guard let image = imageView.image?.jpegData(compressionQuality: 0.8) else {
            print("No image found")
            return
        }

        let vc = UIActivityViewController(activityItems: [image], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
    }
    
    // MARK: - IBActions

    @IBAction private func didPressTopLeftButton(_ sender: Any) {
        // Do something there
    }
    @IBAction private func didPressTopRightButton(_ sender: Any) {
        // Do something there
    }
    @IBAction private func didPressBottomLeftButton(_ sender: Any) {
        // Do something there
    }
    @IBAction private func didPressBottomRightButton(_ sender: Any) {
        // Do something there
    }

    @IBAction private func didPressLayoutOne() {
        topLeftButton.isHidden = false
        topRightButton.isHidden = true
        bottomRightButton.isHidden = false
        bottomLeftButton.isHidden = false
        
        layout1.isHidden = false
        layout1.backgroundColor =
        layout2.isHidden = true
        layout3.isHidden = true
        selected.isHidden = false
    }

    @IBAction private func didPressLayoutTwo() {
        topLeftButton.isHidden = true
        topRightButton.isHidden = true
        bottomRightButton.isHidden = true
        bottomLeftButton.isHidden = false
            
        layout2.isHidden = false
        layout1.isHidden = true
        layout3.isHidden = true
    }
    
    @IBAction func didPressLayoutThree() {
        topLeftButton.isHidden = true
        topRightButton.isHidden = true
        bottomRightButton.isHidden = true
        bottomLeftButton.isHidden = true
        
        layout3.isHidden = false
        layout1.isHidden = true
        layout2.isHidden = true
    }
    
}
