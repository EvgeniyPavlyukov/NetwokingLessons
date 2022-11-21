//
//  ViewController.swift
//  Networking
//
//  Created by Eвгений Павлюков on 21.11.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        makeRequest() //1 создаем URL запрос
    }

    private func makeRequest() {
        var request = URLRequest(url: URL(string: "https://v2.jokeapi.dev/joke/Any")!) //swift не знает что это поэтому !
        request.allHTTPHeaderFields = ["authToken": "nil"]
        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            // 3 парсим пришедшую структуру
            // если пытаемся засунуть сюда дату просто так то он ругается так как дата опциональна
            if let data = data, let joke = try? JSONDecoder().decode(ModelJoke.self, from: data) { // если выполняется первое и второе условие data и joke то мы залетаем в кложур
                print(joke.setup)
                print(joke.delivery)
                print(joke.flags?.racist)
            }
        }
        task.resume()
    }

}

