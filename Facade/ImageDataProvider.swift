//
//  ImageDataProvider.swift
//  Facade
//
//  Created by Владимир Киселев on 02.02.2022.
//

import UIKit

class ImageDataProvider{ //convert photo
    public func data(from image: UIImage, type: ImageType) throws -> Data { //binary bag
        switch type{
        case .jpg(let compressionQuiality):
            return try jpegData(from: image, compressionQuality: compressionQuiality)
        case .png:
            return try pngData(from: image)
        }
    }
    
    private func pngData(from image: UIImage) throws -> Data{
        guard let imageData = image.pngData() else{
            throw ImageSaverError.couldNotCreatePNGDataFromImage
        }
        return imageData
    }
    
    private func jpegData(from image: UIImage, compressionQuality: CGFloat) throws -> Data{
        guard let imageData = image.jpegData(compressionQuality: compressionQuality) else{
            throw ImageSaverError.couldNotCreateJPEGDataFromImage
        }
        return imageData
    }
}
