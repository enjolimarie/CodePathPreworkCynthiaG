//
//  ViewController.swift
//  CodePathPrework
//
//  Created by Cynthia Gonzalez on 8/5/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var PartyAmount: UISlider!
    @IBOutlet weak var SplitAmount: UILabel!
    @IBOutlet weak var SplitPeopleCount: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        tipAmountLabel.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15,0.18,0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total=bill+tip
        let split = Int(PartyAmount.value)
        let splitAgain = Double(split)
        let totalSplit = total/splitAgain


        tipAmountLabel.text=String(format: "$%.2f",tip)
        totalLabel.text=String(format: "$%.2f",total)
        SplitAmount.text=String(format: "$%.2f",totalSplit)
    }
  @IBAction func AmountofPeople(_ sender: Any){
      SplitPeopleCount.text="Split: \(Int(PartyAmount.value))"

    }

}

