
import UIKit

class ViewController: UIViewController {
    //---------------------
    @IBOutlet weak var theView: UIView!
    var videoObj: VideoPlayer!
    var regle3: (Int, Int, Int) -> Int = {
        $1 * $2 / $0
    }
    //---------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        
        theView.frame.size.width = 159
        theView.frame.size.height = CGFloat(regle3(640, 360, 159))
        
        
        videoObj = VideoPlayer(
            theURL: "http://www.igweb.tv/vids/red.mp4",
            theWidth: 159,
            theHeight: regle3(640, 360, 159))
        
        videoObj.displayVideo(theView: theView)
    }
    //---------------------
}

