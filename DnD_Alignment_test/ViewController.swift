//
//  ViewController.swift
//  DnD_Alignment_test
//
//  Created by Calvin Lee on 2023/5/19.
//

import UIKit

class ViewController: UIViewController, ResultViewControllerProtocol{

    var currentQuestionIndex = 0
    
    //
    func dialogueDismissed() {
        currentQuestionIndex = 0 // 指標回到第1題
        progressBar.progress = 0 // 進度條歸零
        displayQuestion() // 顯示問題
    }

    
    //view時都先跑displayQuestion去重置按鈕選取，及隱藏"next"按鈕
    override func viewDidLoad() {
        super.viewDidLoad()
        displayQuestion()
        nextButton.isHidden = true
    }
    
    
    
    // MARK: - IBOUTLETS
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionsLabel: UILabel!
    @IBOutlet weak var firstChoiceButton: UIButton!
    @IBOutlet weak var secondChoiceButton: UIButton!
    @IBOutlet weak var thirdChoiceButton: UIButton!
    @IBOutlet weak var fourthChoiceButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    
    
    // MARK: - IBACTIONS
    // 定義選項被選後便色變圖案，以及選項被選擇後才會顯示出"next"按鈕

    @IBAction func firstButtonAction(_ sender: AnyObject) {
        firstChoiceButton.isSelected = true;
        secondChoiceButton.isSelected = false;
        thirdChoiceButton.isSelected = false;
        fourthChoiceButton.isSelected = false;
        nextButton.isHidden = false
    }
    @IBAction func secondButtonAction(_ sender: AnyObject) {
        firstChoiceButton.isSelected = false;
        secondChoiceButton.isSelected = true;
        thirdChoiceButton.isSelected = false;
        fourthChoiceButton.isSelected = false;
        nextButton.isHidden = false
    }
    @IBAction func thirdButtonAction(_ sender: AnyObject) {
        firstChoiceButton.isSelected = false;
        secondChoiceButton.isSelected = false;
        thirdChoiceButton.isSelected = true;
        fourthChoiceButton.isSelected = false;
        nextButton.isHidden = false
    }
    @IBAction func fourthButtonAction(_ sender: AnyObject) {
        firstChoiceButton.isSelected = false;
        secondChoiceButton.isSelected = false;
        thirdChoiceButton.isSelected = false;
        fourthChoiceButton.isSelected = true;
        nextButton.isHidden = false
    }
    
    

    
    // MARK: - function區
    
    // 顯示question以及屬於它的choices。
    func displayQuestion() {
        //顯示相對應的問題及選項
        questionsLabel.text = questions[currentQuestionIndex].questionContent
        firstChoiceButton.setTitle(questions[currentQuestionIndex].choices[0].content, for: .normal)
        secondChoiceButton.setTitle(questions[currentQuestionIndex].choices[1].content, for: .normal)
        thirdChoiceButton.setTitle(questions[currentQuestionIndex].choices[2].content, for: .normal)
        fourthChoiceButton.setTitle(questions[currentQuestionIndex].choices[3].content, for: .normal)
        
        //每次點選"next"按鈕後，都把四個選項取消選取。
        firstChoiceButton.isSelected = false;
        secondChoiceButton.isSelected = false;
        thirdChoiceButton.isSelected = false;
        fourthChoiceButton.isSelected = false;
    }
    
    
    // 下一題 ＆ 答完題目後的計算分數

    @IBAction func nextButton(_ sender: UIButton)
    {
        var alignmentTypeText = ""
        var index = 0
        currentQuestionIndex += 1
        progressBar.progress = Float(currentQuestionIndex) / Float(questions.count) // 更新進度條
        if currentQuestionIndex == questions.count
        {
            // 將每次答題後計算的陣營取向取最大值丟回alignmentTypeText，再去看要抓哪個index
            alignmentTypeText = computeAlignmentType()

            // 求出 AlignmentTypeText 屬於的 struct 在陣列中的 index
            switch alignmentTypeText
            {
                case "守序善良": index = 0
                case "中立善良": index = 1
                case "混乱善良": index = 2
                case "守序中立": index = 3
                case "中立中立": index = 4
                case "混乱中立": index = 5
                case "守序邪恶": index = 6
                case "中立邪恶": index = 7
                case "混乱邪恶": index = 8
                default: break
            }
                // 把 alignment[index] 和 index 分別傳給 resultVC 的屬性
                if let resultVC = storyboard?.instantiateViewController(identifier: "ResultVC") as? ResultViewController
                    {
                    resultVC.delegate = self //restart功能用
                    resultVC.alignmentInfo = alignments[index]
                    resultVC.alignmentIndex = index
                    resultVC.modalPresentationStyle = .overCurrentContext
                    present(resultVC, animated: true)
                    }
        } else if currentQuestionIndex < questions.count
            {
            displayQuestion() // 顯示下一頁後的題目
            nextButton.isHidden = true // 隱藏下一頁的按鈕
            }
        
    }

    
    // 選擇選項後，回傳選項的資訊
    func buttonChose() -> Int
    {
        var chose:Int = 0
        if firstChoiceButton.isSelected == true {
            chose = 0
        } else if secondChoiceButton.isSelected == true {
            chose = 1
        } else if thirdChoiceButton.isSelected == true {
            chose = 2
        } else if fourthChoiceButton.isSelected == true {
            chose = 3
        }
        return chose
    }
    
    
    // 設變數給計算陣營功能"computeAlignmentType"使用
    var law_Score = 0
    var chaos_Score = 0
    var lcn_Score = 0
    var good_Score = 0
    var evil_Score = 0
    var gen_Score = 0
    
    func computeAlignmentType() -> String
    {
        let defineType = questions[currentQuestionIndex - 1].choices[buttonChose()].type
        
        // 用switch在qustions[_].choices[_]裡面的type挑
        switch defineType
            {
            case .Law:
                law_Score += questions[currentQuestionIndex - 1].choices[buttonChose()].score
                print("Law", law_Score)
            case .Chaos:
                chaos_Score += questions[currentQuestionIndex - 1].choices[buttonChose()].score
                print("Chaos", chaos_Score)
            case .LCN:
                lcn_Score += questions[currentQuestionIndex - 1].choices[buttonChose()].score
                print("LCN", lcn_Score)
            case .Good:
                good_Score += questions[currentQuestionIndex - 1].choices[buttonChose()].score
                print("Good", good_Score)
            case .Evil:
                evil_Score += questions[currentQuestionIndex - 1].choices[buttonChose()].score
                print("Evil", evil_Score)
            case .GEN:
                gen_Score += questions[currentQuestionIndex - 1].choices[buttonChose()].score
                print("GEN", gen_Score)
        }
        
        // 設定變數來丟兩種性向？性格？偏好？
        var typeString = ""
        
        // 第一種，為避免分數相同多做了幾個判別
        let firstAlignment = ["守序", "中立", "混乱"]
        if  law_Score > chaos_Score && law_Score > lcn_Score {
            typeString += "守序"
        } else if chaos_Score > law_Score && chaos_Score > lcn_Score {
            typeString += "混乱"
        } else if lcn_Score > law_Score && lcn_Score > chaos_Score {
            typeString += "中立"
        } else if law_Score == lcn_Score && chaos_Score < lcn_Score {
            typeString += "守序"
        } else if law_Score == chaos_Score {
            typeString += "中立"
        } else if chaos_Score == lcn_Score && law_Score < lcn_Score {
            typeString += "混乱"
        }
        
        // 第二種，為避免分數相同多做了幾個判別
        let secondAlignment = ["善良", "中立", "邪恶"]
        if  good_Score > evil_Score && good_Score > gen_Score {
            typeString += "善良"
        } else if evil_Score > good_Score && evil_Score > gen_Score {
            typeString += "邪恶"
        } else if gen_Score > good_Score && gen_Score > evil_Score {
            typeString += "中立"
        } else if good_Score == gen_Score && evil_Score < gen_Score {
            typeString += "善良"
        } else if good_Score == evil_Score {
            typeString += "中立"
        } else if evil_Score == gen_Score && good_Score < gen_Score {
            typeString += "邪恶"
        }
        
        // 最後computeAlignmentType此function回傳一個string，丟回去給alignmentTypeText再做陣營判別及抓資訊。
        return typeString
    }
    
}
    
        
        
    
    
    

