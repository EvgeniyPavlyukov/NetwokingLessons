//
//  ViewController.swift
//  APIManager
//
//  Created by Eвгений Павлюков on 21.11.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        APIManager.shared.getUsers { users in
            //пока ничего не пишем, печатаем размер массива в байтах должен прилететь размер данных
            //теперь надо рапарсить модель
            print(users) //это и есть обращение к сетевому слою
        }
        
        APIManager.shared.getPosts { posts in
            print(posts)
        }
        
        APIManager.shared.getAlbums { albums in
         print(albums)
        }
    }


}

