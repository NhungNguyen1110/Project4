//
//  HomeViewController.swift
//  Project4
//
//  Created by Nhung on 05/07/2022.
//


import UIKit
import PhotosUI
import AVKit


final class HomeViewController: UIViewController {
    // MARK: - Properties
    private var selection = [String: PHPickerResult]()
    private var selectedAssetIdentifiers = [String]()
    
    // MARK: - IBOUtlets
   
    @IBOutlet private weak var arrowUp: UIImageView!
    @IBOutlet private weak var topLeftButton: UIButton!
    @IBOutlet private weak var topRightButton: UIButton!
    @IBOutlet private weak var bottomLeftButton: UIButton!
    @IBOutlet private weak var bottomRightButton: UIButton!
    @IBOutlet private weak var layout1: UIButton!
    @IBOutlet private weak var layout2: UIButton!
    @IBOutlet private weak var layout3: UIButton!
    @IBOutlet private weak var titleLabel: UILabel!
    
    
    // MARK: - View life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "Instagrid"
    }
    
    // MARK: - IBActions
    
    /*
    @IBAction func addPhoto(_ sender: Any) {
        presentPicker(filter: nil)
    }
    
   
   /// - Tag: PresentPicker
   private func presentPicker(filter: PHPickerFilter?) {
       var configuration = PHPickerConfiguration(photoLibrary: .shared())
       
       // Set the filter type according to the user’s selection.
       configuration.filter = filter
       // Set the mode to avoid transcoding, if possible, if your app supports arbitrary image/video encodings.
       configuration.preferredAssetRepresentationMode = .current
       // Set the selection behavior to respect the user’s selection order.
       configuration.selection = .ordered
       // Set the selection limit to enable multiselection.
       configuration.selectionLimit = 0
       // Set the preselected asset identifiers with the identifiers that the app tracks.
       configuration.preselectedAssetIdentifiers = selectedAssetIdentifiers
       
       let picker = PHPickerViewController(configuration: configuration)
       picker.delegate = self
       present(picker, animated: true)
   }
   
    
    
   let readWriteStatus = PHPhotoLibrary.authorizationStatus(for: .readWrite)
   
   class func shared() -> PHPhotoLibrary
   
   var configuration = PHPickerConfiguration(photoLibrary: .shared())
   
   guard let assetIdentifier = selectedAssetIdentifierIterator?.next() else { return }
   currentAssetIdentifier = assetIdentifier

   let progress: Progress?
   let itemProvider = selection[assetIdentifier]!.itemProvider
   if itemProvider.canLoadObject(ofClass: PHLivePhoto.self) {
       progress = itemProvider.loadObject(ofClass: PHLivePhoto.self) { [weak self] livePhoto, error in
           DispatchQueue.main.async {
               self?.handleCompletion(assetIdentifier: assetIdentifier, object: livePhoto, error: error)
           }
       }
   }
   
   if itemProvider.hasItemConformingToTypeIdentifier(UTType.image.identifier) {
       itemProvider.loadDataRepresentation(forTypeIdentifier: UTType.image.identifier) { data, error in
           guard let data = data,
                 let cgImageSource = CGImageSourceCreateWithData(data as CFData, nil),
                 let properties = CGImageSourceCopyPropertiesAtIndex(cgImageSource, 0, nil) else { return }
           print(properties)
       }
   }
   
   @IBAction private func getPhoto(_ sender: Any) sender {
        UIImagePickerController * picker = [[UIImagePickerController alloc] init]

        //Don't forget to add UIImagePickerControllerDelegate in your .h
        picker.delegate = self

        if((UIButton *) sender == choosePhotoBtn) {
            picker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
        } else {
            picker.sourceType = UIImagePickerControllerSourceTypeCamera;
        }

        [self presentModalViewController:picker animated:YES];
    }
   
   */
    
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
        
        //layout1.isHidden = false
        //layout2.isHidden = true
        //layout3.isHidden = true

        let imageView = UIImageView(image: .checkmark)
        layout1.addSubview(imageView)
    }

    @IBAction private func didPressLayoutTwo() {
        topLeftButton.isHidden = false
        topRightButton.isHidden = false
        bottomRightButton.isHidden = true
        bottomLeftButton.isHidden = false
            
        //layout2.isHidden = false
        //layout1.isHidden = true
        //layout3.isHidden = true
        
        let imageView = UIImageView(image: .checkmark)
        layout2.addSubview(imageView)
    }
    
    @IBAction func didPressLayoutThree() {
        topLeftButton.isHidden = false
        topRightButton.isHidden = false
        bottomRightButton.isHidden = false
        bottomLeftButton.isHidden = false
        
        //layout3.isHidden = false
        //layout1.isHidden = true
        //layout2.isHidden = true
        
        let imageView = UIImageView(image: .checkmark)
        layout3.addSubview(imageView)
    }
    
}
