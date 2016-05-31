//
//  PlaylistMusicViewController.swift
//  VkPlaylist
//
//  Created by Илья Халяпин on 30.05.16.
//  Copyright © 2016 Ilya Khalyapin. All rights reserved.
//

import UIKit

class PlaylistMusicViewController: UIViewController {

    var playlist: Playlist!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Настройка навигационной панели
        title = playlist.title
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        tabBarController!.tabBar.hidden = true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowPlaylistMusicTableViewControllerInContainerSegue" {
            let playlistMusicTableViewController = segue.destinationViewController as! PlaylistMusicTableViewController
            playlistMusicTableViewController.playlist = playlist
        }
    }
    
}