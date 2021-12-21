
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(soundName: (sender.titleLabel?.text)!)
        //Connected to every button.
        
        sender.alpha = 0.5
        //Make button opacity.
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
        //Async: Function will return value rapidly.
            
        sender.alpha = 1
        }
        
        
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()

    }
}
