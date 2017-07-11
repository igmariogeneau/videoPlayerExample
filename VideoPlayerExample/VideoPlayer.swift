//=============================
import AVKit
import AVFoundation
//=============================
class VideoPlayer {
    //-------------------------
    var playerObject: AVPlayer!
    var urlObject: NSURL!
    var playerControllerObject = AVPlayerViewController()
    //-------------------------
    init(theURL: String, theWidth: Int, theHeight: Int) {
        urlObject = NSURL(string: theURL)!
        playerObject = AVPlayer(url: urlObject as URL)
        playerControllerObject.player = playerObject
        playerControllerObject.view.frame = CGRect(x: 0, y: 0, width: theWidth, height: theHeight)
    }
    //-------------------------
    func displayVideo(theView: UIView) {
        theView.addSubview(playerControllerObject.view)
        playerObject.play()
    }
    //-------------------------
}
//=============================
