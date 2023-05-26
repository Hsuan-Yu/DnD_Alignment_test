//
//  ViewController.swift
//  DnD_Alignment_test
//
//  Created by Calvin Lee on 2023/5/19.
//

import UIKit

class ViewController: UIViewController, ResultViewControllerProtocol{
    func dialogDismissed() {
        // score歸零
        for i in 0..<questions.count {
            questions[i].choices[0].score = 0
            questions[i].choices[1].score = 0
            questions[i].choices[2].score = 0
            questions[i].choices[3].score = 0
        }
        currentQuestionIndex = 0 // 指標回到第1題
        progressBar.progress = 0 // 進度條歸零
        displayQuestion() // 顯示問題
        }
                
    
    
    var currentQuestionIndex = 0
    
    @IBOutlet weak var languageSegmented: UISegmentedControl!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionsLabel: UILabel!
    @IBOutlet weak var firstChoiceButton: UIButton!
    @IBOutlet weak var secondChoiceButton: UIButton!
    @IBOutlet weak var thirdChoiceButton: UIButton!
    @IBOutlet weak var fourthChoiceButton: UIButton!
    


    
    
    @IBAction func firstButtonAction(_ sender: AnyObject) {
        firstChoiceButton.isSelected = true;
        secondChoiceButton.isSelected = false;
        thirdChoiceButton.isSelected = false;
        fourthChoiceButton.isSelected = false;
    }
    @IBAction func secondButtonAction(_ sender: AnyObject) {
        firstChoiceButton.isSelected = false;
        secondChoiceButton.isSelected = true;
        thirdChoiceButton.isSelected = false;
        fourthChoiceButton.isSelected = false;
    }
    @IBAction func thirdButtonAction(_ sender: AnyObject) {
        firstChoiceButton.isSelected = false;
        secondChoiceButton.isSelected = false;
        thirdChoiceButton.isSelected = true;
        fourthChoiceButton.isSelected = false;
    }
    @IBAction func fourthButtonAction(_ sender: AnyObject) {
        firstChoiceButton.isSelected = false;
        secondChoiceButton.isSelected = false;
        thirdChoiceButton.isSelected = false;
        fourthChoiceButton.isSelected = true;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayQuestion()
    }


    func displayQuestion() {
        questionsLabel.text = questions[currentQuestionIndex].content
        firstChoiceButton.setTitle(questions[currentQuestionIndex].choices[0].content, for: .normal)
        secondChoiceButton.setTitle(questions[currentQuestionIndex].choices[1].content, for: .normal)
        thirdChoiceButton.setTitle(questions[currentQuestionIndex].choices[2].content, for: .normal)
        fourthChoiceButton.setTitle(questions[currentQuestionIndex].choices[3].content, for: .normal)
        firstChoiceButton.isSelected = false;
        secondChoiceButton.isSelected = false;
        thirdChoiceButton.isSelected = false;
        fourthChoiceButton.isSelected = false;
        
        
    }
    
    
    

    @IBAction func nextButton(_ sender: UIButton) {
        var alignmentTypeText = ""
        var index = 0
        currentQuestionIndex += 1
        progressBar.progress = Float(currentQuestionIndex) / Float(questions.count) // 更新進度條
        
        
        if currentQuestionIndex == questions.count {
            alignmentTypeText = computeAlignmentType()
            
            // 求出 personalityTypeText 屬於的 struct 在陣列中的 index
            switch alignmentTypeText {
            case "Lawful Good": index = 0
            case "Neutral Good": index = 1
            case "Chaotic Good": index = 2
            case "Lawful Neutral": index = 3
            case "True Neutral": index = 4
            case "Chaotic Neutral": index = 5
            case "Lawful Evil": index = 6
            case "Neutral Evil": index = 7
            case "Chaotic Evil": index = 8
            default: break
            }
            
            // 把 personalities[index] 和 index 分別傳給 resultVC 的屬性
            if let resultVC = storyboard?.instantiateViewController(identifier: "ResultVC") as? ResultViewController {
                resultVC.delegate = self //restart功能用
                
                resultVC.alignmentInfo = Alignments[index]
                resultVC.alignmentIndex = index
                
                resultVC.modalPresentationStyle = .overCurrentContext
                present(resultVC, animated: true)
            }
        } else if currentQuestionIndex < questions.count { // 還有題目
            if sender.tag == 0 {
                // 點到上面的按鈕，對應選項的score + 1
                questions[currentQuestionIndex - 1].choices[0].score += 1
            } else {
                // 點到下面的按鈕，對應選項的score + 1
                questions[currentQuestionIndex - 1].choices[1].score += 1
            }
            displayQuestion() // 顯示下題
        }
    }
    

            
    func computeAlignmentType() -> String {
        let Law_Score =
        questions[3].choices[0].score +
        questions[3].choices[0].score +
        questions[3].choices[1].score +
        questions[4].choices[0].score +
        questions[4].choices[0].score +
        questions[4].choices[1].score +
        questions[9].choices[0].score +
        questions[9].choices[0].score +
        questions[9].choices[1].score +
        questions[10].choices[0].score +
        questions[10].choices[0].score +
        questions[10].choices[1].score +
        questions[15].choices[0].score +
        questions[15].choices[0].score +
        questions[15].choices[1].score +
        questions[17].choices[0].score +
        questions[17].choices[0].score +
        questions[17].choices[1].score +
        questions[21].choices[0].score +
        questions[21].choices[0].score +
        questions[21].choices[1].score +
        questions[23].choices[0].score +
        questions[23].choices[0].score +
        questions[23].choices[1].score +
        questions[27].choices[0].score +
        questions[27].choices[0].score +
        questions[27].choices[1].score +
        questions[29].choices[2].score +
        questions[29].choices[3].score +
        questions[29].choices[3].score +
        questions[33].choices[2].score +
        questions[33].choices[3].score +
        questions[33].choices[3].score +
        questions[34].choices[2].score +
        questions[34].choices[3].score +
        questions[34].choices[3].score
        
        let LCNeutral_Score =
        questions[4].choices[2].score +
        questions[4].choices[3].score +
        questions[4].choices[3].score +
        questions[5].choices[2].score +
        questions[5].choices[3].score +
        questions[5].choices[3].score +
        questions[10].choices[2].score +
        questions[10].choices[3].score +
        questions[10].choices[3].score +
        questions[11].choices[0].score +
        questions[11].choices[0].score +
        questions[11].choices[1].score +
        questions[16].choices[2].score +
        questions[16].choices[3].score +
        questions[16].choices[3].score +
        questions[17].choices[2].score +
        questions[17].choices[3].score +
        questions[17].choices[3].score +
        questions[22].choices[2].score +
        questions[22].choices[3].score +
        questions[22].choices[3].score +
        questions[23].choices[2].score +
        questions[23].choices[3].score +
        questions[23].choices[3].score +
        questions[27].choices[2].score +
        questions[27].choices[3].score +
        questions[27].choices[3].score +
        questions[28].choices[2].score +
        questions[28].choices[3].score +
        questions[28].choices[3].score +
        questions[33].choices[0].score +
        questions[33].choices[0].score +
        questions[33].choices[1].score +
        questions[35].choices[0].score +
        questions[35].choices[0].score +
        questions[35].choices[1].score
        
        let Chaos_Score =
        questions[3].choices[2].score +
        questions[3].choices[3].score +
        questions[3].choices[3].score +
        questions[5].choices[0].score +
        questions[5].choices[0].score +
        questions[5].choices[1].score +
        questions[9].choices[2].score +
        questions[9].choices[3].score +
        questions[9].choices[3].score +
        questions[11].choices[2].score +
        questions[11].choices[3].score +
        questions[11].choices[3].score +
        questions[15].choices[2].score +
        questions[15].choices[3].score +
        questions[15].choices[3].score +
        questions[16].choices[0].score +
        questions[16].choices[0].score +
        questions[16].choices[1].score +
        questions[21].choices[2].score +
        questions[21].choices[3].score +
        questions[21].choices[3].score +
        questions[22].choices[0].score +
        questions[22].choices[0].score +
        questions[22].choices[1].score +
        questions[28].choices[0].score +
        questions[28].choices[0].score +
        questions[28].choices[1].score +
        questions[29].choices[0].score +
        questions[29].choices[0].score +
        questions[29].choices[1].score +
        questions[34].choices[0].score +
        questions[34].choices[0].score +
        questions[34].choices[1].score +
        questions[35].choices[2].score +
        questions[35].choices[3].score +
        questions[35].choices[3].score

        let Good_Score =
        questions[0].choices[0].score +
        questions[0].choices[0].score +
        questions[0].choices[1].score +
        questions[1].choices[0].score +
        questions[1].choices[0].score +
        questions[1].choices[1].score +
        questions[6].choices[2].score +
        questions[6].choices[3].score +
        questions[6].choices[3].score +
        questions[7].choices[0].score +
        questions[7].choices[0].score +
        questions[7].choices[1].score +
        questions[12].choices[0].score +
        questions[12].choices[0].score +
        questions[12].choices[1].score +
        questions[13].choices[0].score +
        questions[13].choices[0].score +
        questions[13].choices[1].score +
        questions[18].choices[0].score +
        questions[18].choices[0].score +
        questions[18].choices[1].score +
        questions[20].choices[0].score +
        questions[20].choices[0].score +
        questions[20].choices[1].score +
        questions[25].choices[2].score +
        questions[25].choices[3].score +
        questions[25].choices[3].score +
        questions[26].choices[0].score +
        questions[26].choices[0].score +
        questions[26].choices[1].score +
        questions[30].choices[0].score +
        questions[30].choices[0].score +
        questions[30].choices[1].score +
        questions[31].choices[0].score +
        questions[31].choices[0].score +
        questions[31].choices[1].score

        let GENeutral_Score =
        questions[1].choices[2].score +
        questions[1].choices[3].score +
        questions[1].choices[3].score +
        questions[2].choices[2].score +
        questions[2].choices[3].score +
        questions[2].choices[3].score +
        questions[7].choices[2].score +
        questions[7].choices[3].score +
        questions[7].choices[3].score +
        questions[8].choices[2].score +
        questions[8].choices[3].score +
        questions[8].choices[3].score +
        questions[12].choices[2].score +
        questions[12].choices[3].score +
        questions[12].choices[3].score +
        questions[14].choices[0].score +
        questions[14].choices[0].score +
        questions[14].choices[1].score +
        questions[19].choices[2].score +
        questions[19].choices[3].score +
        questions[19].choices[3].score +
        questions[20].choices[2].score +
        questions[20].choices[3].score +
        questions[20].choices[3].score +
        questions[24].choices[2].score +
        questions[24].choices[3].score +
        questions[24].choices[3].score +
        questions[25].choices[0].score +
        questions[25].choices[0].score +
        questions[25].choices[1].score +
        questions[31].choices[2].score +
        questions[31].choices[3].score +
        questions[31].choices[3].score +
        questions[32].choices[2].score +
        questions[32].choices[3].score +
        questions[32].choices[3].score
        
        let Evil_Score =
        questions[0].choices[2].score +
        questions[0].choices[3].score +
        questions[0].choices[3].score +
        questions[2].choices[0].score +
        questions[2].choices[0].score +
        questions[2].choices[1].score +
        questions[6].choices[0].score +
        questions[6].choices[0].score +
        questions[6].choices[1].score +
        questions[8].choices[0].score +
        questions[8].choices[0].score +
        questions[8].choices[1].score +
        questions[13].choices[2].score +
        questions[13].choices[3].score +
        questions[13].choices[3].score +
        questions[14].choices[2].score +
        questions[14].choices[3].score +
        questions[14].choices[3].score +
        questions[18].choices[2].score +
        questions[18].choices[3].score +
        questions[18].choices[3].score +
        questions[19].choices[0].score +
        questions[19].choices[0].score +
        questions[19].choices[1].score +
        questions[24].choices[0].score +
        questions[24].choices[0].score +
        questions[24].choices[1].score +
        questions[26].choices[2].score +
        questions[26].choices[3].score +
        questions[26].choices[3].score +
        questions[30].choices[2].score +
        questions[30].choices[3].score +
        questions[30].choices[3].score +
        questions[32].choices[0].score +
        questions[32].choices[0].score +
        questions[32].choices[1].score

        
        var typeString = ""
        
        //第一區陣營
        let firstType = ["Law", "Neutral", "Chaos"]
        if  Law_Score > LCNeutral_Score && Law_Score > Chaos_Score{
            typeString += "Law"
        } else if Chaos_Score > Law_Score && Chaos_Score > LCNeutral_Score {
            typeString += "Chaos"
        } else if LCNeutral_Score > Law_Score && LCNeutral_Score > Chaos_Score {
            typeString += "Neutral"
        } else {
            typeString += firstType.randomElement()!
        }
        
        
        //第二區陣營
        let secondType = ["Good", "Neutral", "Evil"]
        if  Good_Score > GENeutral_Score && Good_Score > Evil_Score{
            typeString += "Good"
        } else if Evil_Score > Good_Score && Evil_Score > GENeutral_Score {
            typeString += "Evil"
        } else if GENeutral_Score > Good_Score && GENeutral_Score > Evil_Score {
            typeString += "Neutral"
        } else {
            typeString += secondType.randomElement()!
        }
        
        
        
        return typeString
    }
    
    // ResultViewControllerProtocol Methods

            
            
            
            
    }

  

 


