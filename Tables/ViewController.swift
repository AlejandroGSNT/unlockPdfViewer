

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var cellContent = ["PDF1","PDF2","PDF3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
  
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return cellContent.count //this table will have 2 rows in each section
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        let cell = UITableViewCell(style:UITableViewCellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = cellContent[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        //show selected pdf file
        //this will run when user select a row
        let selectedPdfId = indexPath
        self.performSegue(withIdentifier: "SecondScreenSegue", sender: selectedPdfId)
    }
    
    //function for pass data from one screen to another
    override func prepare(for segue: UIStoryboardSegue /*a segue from storyboard*/, sender: Any?)
    {
        
        if segue.identifier == "SecondScreenSegue"
        {
            //convert sender to NSIndexPath
            let selectedPdfIdReceived = sender as!  NSIndexPath //error: can not cast this
            
            //Create another variable to get number of row
            let idx = selectedPdfIdReceived.row
            
            let viewcontroller2:ViewController2 = segue.destination as! ViewController2 //this object is like a second screen object
            
            viewcontroller2.pdfNameObtained = cellContent[idx]
        }
        
    }
}

