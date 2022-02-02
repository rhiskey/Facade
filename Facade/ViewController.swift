//
//  ViewController.swift
//  Facade
//
//  Created by Владимир Киселев on 02.02.2022.
//

import UIKit

enum ImageSaverError: Error{
    case couldNotCreateDestinationPath
    case couldNotCreateJPEGDataFromImage
    case couldNotCreatePNGDataFromImage
    case couldNotSaveImageDestinationPath
}

enum ImageType{
    case png
    case jpg(compressionQuiality: CGFloat)
}

class ViewController: UIViewController {
    let imageSaver = ImageSaverFacade()
    let image = UIImage(named: "image")!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            try imageSaver.save(image: image, type: .png, fileName: "my_file_name", overwrite: true)
        } catch{
            print(error)
        }
        
    }


}

