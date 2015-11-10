//
//  ViewController.swift
//  AlgoRhythm
//
//  Created by Moisés Cervantes on 05/10/15.
//  Copyright © 2015 Moisés Cervantes. All rights reserved.
//

import UIKit

class PlayListMasterViewController: UIViewController {

    var playlistArray: [UIImageView] = []
    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var playlistView0: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playlistArray.append(playlistView0)
        
        for index in 0..<playlistArray.count {
            
            let playlist = Playlist(index: index)
            let playlistImageView = playlistArray[index]
            
            playlistImageView.image = playlist.icon
            playlistImageView.backgroundColor = playlist.backgroundColor
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showPlaylistDetail" {
            
            let playlistImageView = sender!.view as! UIImageView
            
            if let indexOf(playlistArray, playlistImageView) {
                
                let playlistDetailController = segue.destinationViewController as! PlayListDetailViewController
                
                playlistDetailController.playlist = Playlist(index: index)
                
                
            }
        }
    }
}

