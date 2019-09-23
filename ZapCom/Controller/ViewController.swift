//
//  ViewController.swift
//  ZapCom
//
//  Created by Abhishek Gupta on 06/09/19.
//  Copyright © 2019 Abhishek Gupta. All rights reserved.
//

import UIKit
import Reachability

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      let isrechable = isRechable()
        if(isrechable){
            self.fetchData()
        }else{
            //Show Alert
        }
    }

    private func fetchData() {
        let url = URL(string: Constant.BASEURL)!
        Webservice().loadData(url: url) { content in
            if let content = content {
                print(content)
            }else{
                
            }
        }
    }

}

extension ViewController {
    
    func isRechable() -> Bool {
        let reachability = Reachability()!
        if (reachability.connection == .wifi) || (reachability.connection == .cellular){
            return true
        }
        return false
    }
}
