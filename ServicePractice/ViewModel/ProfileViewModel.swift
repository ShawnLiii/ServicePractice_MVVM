//
//  ProfileViewModel.swift
//  ServicePractice
//
//  Created by Shawn Li on 5/28/20.
//  Copyright © 2020 ShawnLi. All rights reserved.
//

import UIKit

class ProfileViewModel
{
    var photos = [Profile]()
    var updateHandler: () -> Void = {}
    
    init()
    {
        Service.shared.fetchPictureData()
        { (profile) in
            self.photos = profile
            self.updateHandler()
        }
    }

    func getPhotos (url: URL, handler: @escaping (UIImage?) -> ())
    {
        Service.shared.fetchImage(url: url) { (image) in handler(image) }
    }
    
}
