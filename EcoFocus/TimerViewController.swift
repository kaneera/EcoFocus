import UIKit

class TimerViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var addSeconds: UIButton!
    @IBOutlet weak var minusTime: UIButton!
    
    var timer = Timer()
    var seconds = 1500
      
     func timeString(time:TimeInterval) -> String {
        
       let hours = Int(time)/3600
       let minutes = Int(time) / 60 % 60
       let seconds = Int(time) % 60
       return String(format:"%02i:%02i:%02i", hours, minutes, seconds)
     }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func startButton(_ sender: Any)
    
    {
        timer.invalidate()
        //create the timer
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerViewController.timerClass), userInfo: nil, repeats: true)
    }
    
   
    @IBAction func pauseButton(_ sender: Any)
    {
         timer.invalidate()    }
    
    @IBAction func resetButton(_ sender: Any)
    {
        timer.invalidate()
           seconds = 1500
           timerLabel.text = timeString(time:TimeInterval(seconds))
    }
    
    
    @IBAction func addSeconds(_ sender: Any)
    {
        seconds = seconds+300
               timerLabel.text = timeString(time:TimeInterval(seconds))
    }
    
    
    @IBAction func minusTime(_ sender: Any)
    {
        seconds = seconds-300
        timerLabel.text = timeString(time:TimeInterval(seconds))
    }
    
    @objc func timerClass()
    {
      seconds -= 1
      timerLabel.text = timeString(time:TimeInterval(seconds))
       
      if(seconds == 0)
      {
        timer.invalidate()
         
      }
     
    }
    
    
}
