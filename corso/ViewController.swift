//
//  ViewController.swift
//  corso
//
//  Created by Snehith Nayak on 4/10/22.
//
import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let urlString = "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=63098e130bae47bc9d303239b06f4084"
        let url = URL(string: urlString)
        

        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            if error == nil && data != nil{
                let decoder = JSONDecoder()
                
                do{
                    let newsFeed = try decoder.decode(NewsFeed.self, from: data!)
                    print(newsFeed)
                }
                catch{
                    print("Error parsing: \(error)")
                }
                
            }
        
        
        

            }
            dataTask.resume()
        


    }
}
