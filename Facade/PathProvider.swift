//
//  PathProvider.swift
//  Facade
//
//  Created by Владимир Киселев on 02.02.2022.
//

import Foundation

class PathProvider{ //get url, if can -> store imagefile, return
    func createDestinationPath(fileName: String) throws -> URL {
        guard let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else{
            throw ImageSaverError.couldNotCreateDestinationPath
        }
        let detinationPath = path.appendingPathComponent("\(fileName)")
        print(detinationPath)
        return detinationPath
    }
}
