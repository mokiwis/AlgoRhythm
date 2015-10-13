//
//  ViewController.swift
//  AlgoRhythm
//
//  Created by Moisés Cervantes on 05/10/15.
//  Copyright © 2015 Moisés Cervantes. All rights reserved.
//

import UIKit

class PlayListMasterViewController: UIViewController {

    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var playlistView0: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        aButton.setTitle("Press me!", forState: .Normal)
        
        let playlist = Playlist(index: 0)
        playlistView0.image = playlist.icon
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showPlaylistDetail" {
            
            let playlistDetailController = segue.destinationViewController as! PlayListDetailViewController
            
            playlistDetailController.segueLabelText = "Yay! you pressed the button!"
            
        }
    }

}

