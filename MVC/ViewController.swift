//
//  ViewController.swift
//  MVC
//
//  Created by Palanichamy Padmanabhan on 23/11/18.
//  Copyright © 2018 Palanichamy Padmanabhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var videos : [Video] = []

    @IBOutlet weak var listTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        videos = self.createArrayOfVideos()
    }
    func createArrayOfVideos() -> [Video] {
        var tempVideos: [Video] = []
        let video1 = Video(image: #imageLiteral(resourceName: "download2"), title: "Your First App")
        let video2 = Video(image: #imageLiteral(resourceName: "download1"), title: "Your Second App")
        tempVideos.append(video1)
        tempVideos.append(video2)
        return tempVideos
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! VideoCell
        let video = videos[indexPath.row]
       cell.setVideo(video: video)
        return cell
    }
}

