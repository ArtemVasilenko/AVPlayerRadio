import UIKit
import AVFoundation
import AVKit
//import Alamofire

class ViewController: UIViewController  {
    
    let myUrl = URL(string: "https://audd.tech/example1.mp3")

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        AVPlayer(url: myUrl!).play()
        
//        videoPlay()
        
        appleVideo()
    }
    
    func videoPlay() {
//        let videoUrl = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!
        
        
        let player = AVPlayer(url: myUrl!)
        let playerLayer = AVPlayerLayer(player: player)
        
        playerLayer.frame = self.view.bounds
        self.view.layer.addSublayer(playerLayer)
        
        player.play()
        
    }
    
    
    func appleVideo() {
        
        guard let url = URL(string: "https://devstreaming-cdn.apple.com/videos/streaming/examples/bipbop_adv_example_hevc/master.m3u8") else { return }
        
        let player = AVPlayer(url: url)
        
        let controller = AVPlayerViewController()
        controller.player = player
        
        
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.bounds
        self.view.layer.addSublayer(playerLayer)
        player.play()

        
        present(controller, animated: true) 
            player.play()
        
        
    }

}

