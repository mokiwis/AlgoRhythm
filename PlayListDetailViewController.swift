//
//  PlayListDetailViewController.swift
//  AlgoRhythm
//
//  Created by Moisés Cervantes on 08/10/15.
//  Copyright © 2015 Moisés Cervantes. All rights reserved.
//

import UIKit

class PlayListDetailViewController: UIViewController {
    
    @IBOutlet weak var buttonPressLabel: UILabel!
    var playlist: Playlist?
        

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if playlist != nil {
            
            buttonPressLabel.text = playlist!.title
            
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
