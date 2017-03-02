//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Ken Moody on 2/27/17.
//  Copyright © 2017 Ken Moody. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var etableView: UITableView!
    
    var emojis = ["🏋🏾","👩🏾‍🎓","🕺🏾","👨🏿‍💻","🍕","🏈","🎖","🎮","🍔","🍟","👩🏾‍💻","👩🏾‍⚖️","🥓","💩"]
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            
            etableView.dataSource = self
            etableView.delegate = self
            
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell ()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

