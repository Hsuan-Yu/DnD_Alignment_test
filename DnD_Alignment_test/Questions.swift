//
//  Questions.swift
//  DnD_Alignment_test
//
//  Created by Calvin Lee on 2023/5/19.
//

import Foundation

struct Question {
    let content: String
    var choices: [Choice]
}
struct Choice {
    let content: String
    var score: Int
}
/*
var questions = [
    Question(content: "1. Family elders are expressing disapproval of you to the rest of the family. Do you:",
             choices: [Choice(content: "Accept the criticism and change your ways?", score: 0),
                       Choice(content: "Seek a compromise with them?", score: 0),
                       Choice(content: "Besmirch the reputation of those expressing disapproval as you ignore their scorn?", score: 0),
                       Choice(content: "Silence them any way you can?", score: 0)] ),
    Question(content: "2. Would you give up a promising career to aid the family in time of need?",
             choices: [Choice(content: "In a heartbeat.", score: 0),
                       Choice(content: "Yes, with some reluctance.", score: 0),
                       Choice(content: "Only if I was certain I'd be able to return to my career soon.", score: 0),
                       Choice(content: "No.", score: 0)] ),
    Question(content: "3. Would you betray a family member to advance your own career?",
             choices: [Choice(content: "Yes, without a twinge of guilt.", score: 0),
                       Choice(content: "Yes, if I could do it secretly.", score: 0),
                       Choice(content: "I'd resist the temptation.", score: 0),
                       Choice(content: "I find the very idea abhorrent.", score: 0)] ),
    Question(content: "4. Do you respect the leaders of your family?",
             choices: [Choice(content: "Their words guide my actions.", score: 0),
                       Choice(content: "They're role models for me.", score: 0),
                       Choice(content: "They're often out of touch with my life.", score: 0),
                       Choice(content: "They're out of touch with reality.", score: 0)] ),
    Question(content: "5. If your family had arranged your marriage to someone loathsome, would you:",
             choices: [Choice(content: "Go through with it, proud to serve your family?", score: 0),
                       Choice(content: "Agree, hiding your reluctance?", score: 0),
                       Choice(content: "Subtly work against the union?", score: 0),
                       Choice(content: "Flee?", score: 0)] ),
    Question(content: "6. You're estranged from a family member. On his deathbed, he seeks reconciliation. Do you:",
             choices: [Choice(content: "Speak to him, but hold your ground?", score: 0),
                       Choice(content: "Refuse to speak to him?", score: 0),
                       Choice(content: "Discuss your estrangement openly and without rancor?", score: 0),
                       Choice(content: "Actively seek reconciliation, and heed his dying words?", score: 0)] ),
    Question(content: "7. A powerful but corrupt judge offers you wealth if you'll testify against your friend. Do you:",
             choices: [Choice(content: "Condemn your friend and take the money?", score: 0),
                       Choice(content: "Take the money and testify, but try to keep your testimony ineffective?", score: 0),
                       Choice(content: "Refuse the offer and refuse to testify?", score: 0),
                       Choice(content: "Testify on your friend's behalf, no matter the consequences?", score: 0)] ),
    Question(content: "8. Do you become close to friends, or hold most people at a safe distance?",
             choices: [Choice(content: "I have an abundance of close friends.", score: 0),
                       Choice(content: "I have some close friends.", score: 0),
                       Choice(content: "I have few close friends.", score: 0),
                       Choice(content: "I try to keep people at a distance.", score: 0)] ),
    Question(content: "9. Have you ever betrayed a friend?",
             choices: [Choice(content: "I've done so more than once, and I sometimes get away with it.", score: 0),
                       Choice(content: "I've done so once.", score: 0),
                       Choice(content: "I've been tempted to do so, but I've never gone through with it.", score: 0),
                       Choice(content: "I'd never contemplate such a thing.", score: 0)] ),
    Question(content: "10. How do you view lifelong commitment to a single romantic partner?",
             choices: [Choice(content: "I have or want such a romance.", score: 0),
                       Choice(content: "Such a romance would be ideal--if it's achievable.", score: 0),
                       Choice(content: "I worry I'd miss out on what others have to offer.", score: 0),
                       Choice(content: "Tie yourself to one person? Huge mistake.", score: 0)] ),
    Question(content: "11. Do you insist on repayment when lending money to friends?",
             choices: [Choice(content: "Yes, and I write up a contract so there's no misunderstanding.", score: 0),
                       Choice(content: "Yes, but I try to be flexible about the exact terms.", score: 0),
                       Choice(content: "No, although it's sure nice to be repaid.", score: 0),
                       Choice(content: "No, they just owe me a favor.", score: 0)] ),
    Question(content: "12. Are you still in touch with childhood friends?",
             choices: [Choice(content: "Yes, we correspond regularly.", score: 0),
                       Choice(content: "Yes, we try to keep in touch.", score: 0),
                       Choice(content: "No, I move around too much.", score: 0),
                       Choice(content: "No, I don't have anything in common with them anymore.", score: 0)] ),
    Question(content: "13. Do you donate time and money to improve the local community?",
             choices: [Choice(content: "Yes, the needs of the community are my top priority.", score: 0),
                       Choice(content: "Yes, I donate as much as I can once my own needs are met.", score: 0),
                       Choice(content: "No, I don't have enough time or money to spare.", score: 0),
                       Choice(content: "No, my local community would be a waste of time and money.", score: 0)] ),
    Question(content: "14. Your community is threatened with invasion. Do you:",
             choices: [Choice(content: "Help defend it to your last breath?", score: 0),
                       Choice(content: "Defend the area with the rest of your community?", score: 0),
                       Choice(content: "Flee as soon as things look grim?", score: 0),
                       Choice(content: "Cut a deal with the enemy to act as a spy?", score: 0)] ),
    Question(content: "15. If you were injured and required immediate assistance, would members of your home town agree to help?",
             choices: [Choice(content: "Yes, because they know I'd do the same for them.", score: 0),
                       Choice(content: "Yes, because I'm generally well liked in my home town.", score: 0),
                       Choice(content: "Probably not, because I'm distrusted in my home town.", score: 0),
                       Choice(content: "Definitely not, I've made some enemies in my home town.", score: 0)] ),
    Question(content: "16. Do you respect the laws and authorities of the community?",
             choices: [Choice(content: "Yes, without question.", score: 0),
                       Choice(content: "Yes, they're generally the best way to govern.", score: 0),
                       Choice(content: "When it suits me--there are some laws I just don't agree with.", score: 0),
                       Choice(content: "I don't pay attention to the authorities; they've got no hold on me.", score: 0)] ),
    Question(content: "17. Do members of your home town shun, avoid, or mock you?",
             choices: [Choice(content: "Yes, their small minds can't handle anyone outside the norm.", score: 0),
                       Choice(content: "Some do, because I don't always fit in.", score: 0),
                       Choice(content: "No, I'm generally seen as normal.", score: 0),
                       Choice(content: "No, I set the standard for what is normal in my community.", score: 0)] ),
    Question(content: "18. Would you stand for office or seek to represent the interests of the community in some public manner?",
             choices: [Choice(content: "To do so would be an honor I'd joyously accept.", score: 0),
                       Choice(content: "Of course. It's everyone's duty to do so.", score: 0),
                       Choice(content: "Only if no one else could handle the job.", score: 0),
                       Choice(content: "No, I don't want to be responsible for the community's welfare.", score: 0)] ),
    Question(content: "19. Your country is wracked with famine. Would you:",
             choices: [Choice(content: "Share what food you had with others?", score: 0),
                       Choice(content: "Eat as little as possible yourself, and share the rest?", score: 0),
                       Choice(content: "Steal what food you needed to survive?", score: 0),
                       Choice(content: "Steal as much food as possible, then sell it back to the community at a high price?", score: 0)] ),
    Question(content: "20. If offered enough money, would you slip a poison into your king's drink?",
             choices: [Choice(content: "Yes, I've done similar things before.", score: 0),
                       Choice(content: "Yes, if I thought I could get away with it.", score: 0),
                       Choice(content: "No, although a vast sum of money would tempt me.", score: 0),
                       Choice(content: "No, and I'd warn the king of the plot.", score: 0)] ),
    Question(content: "21. A plague is sweeping across your country. Would you:",
             choices: [Choice(content: "Undertake a dangerous mission to find the cure?", score: 0),
                       Choice(content: "Heal the sick as best you can?", score: 0),
                       Choice(content: "Avoid contact with the sick?", score: 0),
                       Choice(content: "Flee the country?", score: 0)] ),
    Question(content: "22. Do you respect the lawful authority of the rulers of the land?",
             choices: [Choice(content: "Yes, Long live the queen!", score: 0),
                       Choice(content: "Yes, our rulers are generally fair and just.", score: 0),
                       Choice(content: "No, a ruler is no better than anyone else.", score: 0),
                       Choice(content: "No, rulers are invariably corrupted by power.", score: 0)] ),
    Question(content: "23. If you were offered a reasonably lucrative deal, would you spy for a hostile foreign power?",
             choices: [Choice(content: "Yes, because this nation could stand to be knocked down a peg.", score: 0),
                       Choice(content: "Yes, because the nation's secrets mean little to me.", score: 0),
                       Choice(content: "No, because I might get caught.", score: 0),
                       Choice(content: "No, because I'd never violate the trust my nation puts in me.", score: 0)] ),
    Question(content: "24. Do you rely on the government to enforce contracts and property rights?",
             choices: [Choice(content: "Yes, because maintaining the rule of law is more important than any individual dispute.", score: 0),
                       Choice(content: "Yes, because the courts are best equipped to handle such disputes.", score: 0),
                       Choice(content: "Are you kidding me? The government can't even pave roads.", score: 0),
                       Choice(content: "Absolutely not. If I can't defend it myself, I don't deserve to have it.", score: 0)] ),
    Question(content: "25. If imprisoned, would you injure or kill others to escape?",
             choices: [Choice(content: "Yes. Serves 'em right for locking me up.", score: 0),
                       Choice(content: "Yes. They knew the risks when they took the job.", score: 0),
                       Choice(content: "No, except for minor wounds that will heal easily.", score: 0),
                       Choice(content: "No. Those guards are just doing their jobs.", score: 0)] ),
    Question(content: "26. Do you accept a noble's right to treat badly the serfs who work on his land?",
             choices: [Choice(content: "Yes. They're lucky they're not slaves.", score: 0),
                       Choice(content: "Yes, because sometimes only fear will motivate them.", score: 0),
                       Choice(content: "No, nobles should rule as kindly as possible.", score: 0),
                       Choice(content: "No one has any 'right' to treat another badly. Period.", score: 0)] ),
    Question(content: "27. You have accidentally committed a crime. Do you:",
             choices: [Choice(content: "Turn yourself in, and attempt to make restitution to the victim?", score: 0),
                       Choice(content: "Turn yourself in, throwing yourself on the mercy of the court?", score: 0),
                       Choice(content: "Hide your involvement, lying if you have to?", score: 0),
                       Choice(content: "Try to pin the crime on another?", score: 0)] ),
    Question(content: "28. If guilty, would you confess to a crime?",
             choices: [Choice(content: "Yes, because it is my duty to do so.", score: 0),
                       Choice(content: "Yes, because it might get me a lighter sentence.", score: 0),
                       Choice(content: "No, I'd make the magistrates prove my guilt.", score: 0),
                       Choice(content: "No, and I'd try to 'prove' my own innocence.", score: 0)] ),
    Question(content: "29. Would you express a revolutionary political opinion if threatened with punishment?",
             choices: [Choice(content: "Yes, I'd rather be punished than remain silent.", score: 0),
                       Choice(content: "Yes. Somebody's got to speak the truth.", score: 0),
                       Choice(content: "No, although I might privately express my opinion to friends.", score: 0),
                       Choice(content: "No, politics aren't worth getting worked up about.", score: 0)] ),
    Question(content: "30. While traveling, you witness an assault. You are ordered to testify, which will delay your travel significantly. Do you:",
             choices: [Choice(content: "Slip out of town at night to avoid testifying.", score: 0),
                       Choice(content: "Deny you saw anything.", score: 0),
                       Choice(content: "Remain reluctantly, testify, and leave.", score: 0),
                       Choice(content: "emain until the trial's conclusion in case further testimony is needed.", score: 0)] ),
    Question(content: "31. What is the best use of wealth?",
             choices: [Choice(content: "To help the destitute and less fortunate.", score: 0),
                       Choice(content: "Provide for the needs of friends and family.", score: 0),
                       Choice(content: "To stay on top of the heap yourself.", score: 0),
                       Choice(content: "To not only stay on top, but keep others from climbing to your level.", score: 0)] ),
    Question(content: "32. When confronted by beggars, do you:",
             choices: [Choice(content: "Give generously?", score: 0),
                       Choice(content: "Give moderately?", score: 0),
                       Choice(content: "Give only what you wouldn't miss anyway--a dollar or two at the most?", score: 0),
                       Choice(content: "Ignore them as you walk by?", score: 0)] ),
    Question(content: "33. By using magic, you could fool village merchants into thinking your copper pieces were made of gold. Do you?",
             choices: [Choice(content: "Yes, and I'll buy as much as I can.", score: 0),
                       Choice(content: "Yes, but I'll only cheat the rich merchants.", score: 0),
                       Choice(content: "No, it's too risky.", score: 0),
                       Choice(content: "No, those merchants have families to feed.", score: 0)] ),
    Question(content: "34. You have two job offers. One pays more, but the other is secure and steady. Which do you choose?",
             choices: [Choice(content: "Definitely the lucrative job; steady work sounds like drudgery.", score: 0),
                       Choice(content: "Probably the lucrative job, although I'd look into the secure job.", score: 0),
                       Choice(content: "The secure job, unless the other job was outrageously lucrative.", score: 0),
                       Choice(content: "Definitely the secure job, because I plan for the long term.", score: 0)] ),
    Question(content: "35. What's the best path to wealth?",
             choices: [Choice(content: "It's a matter of luck and being in the right place at the right time.", score: 0),
                       Choice(content: "Staying flexible so you can take advantage of good opportunities.", score: 0),
                       Choice(content: "Following a long-term plan that incorporates a comfortable level of risk.", score: 0),
                       Choice(content: "Hard work and perseverance.", score: 0)] ),
    Question(content: "36. If you accepted a job or contract, would you try to finish the task even if it got much more dangerous?",
             choices: [Choice(content: "Yes, my word is my bond.", score: 0),
                       Choice(content: "Yes, because it's good to have a reputation for dependability.", score: 0),
                       Choice(content: "You can bet I'd be renegotiating.", score: 0),
                       Choice(content: "If it's no longer a good deal, then the deal is off.", score: 0)] ),
    
    
 

]
 */


var questions = [
    Question(content: "1. 长辈在家族中公开反对你，你会：",
             choices: [Choice(content: "接受批评，改变方法.", score: 0),
                       Choice(content: "尝试与长辈妥协，用折衷的方法.", score: 0),
                       Choice(content: "忽略长辈的轻蔑，诽谤他们.", score: 0),
                       Choice(content: "千方百计使他们收声.", score: 0)] ),
    Question(content: "2. 你会放弃一个前途无量的职业来帮忙解决家庭的燃眉之急吗？?",
             choices: [Choice(content: "不用想，肯定会.", score: 0),
                       Choice(content: "会，但有点不情愿.", score: 0),
                       Choice(content: "除非我肯定我会很快重回工作岗位.", score: 0),
                       Choice(content: "不会.", score: 0)] ),
    Question(content: "3. 你会为了前途而背叛家人吗？",
             choices: [Choice(content: "会，不带一点罪恶感.", score: 0),
                       Choice(content: "会，只要我能秘密行事.", score: 0),
                       Choice(content: "我会抗拒这诱惑.", score: 0),
                       Choice(content: "我认为这个主意极为可恨.", score: 0)] ),
    Question(content: "4. 你尊敬一家之主吗？",
             choices: [Choice(content: "他们的言语指导着我的行动.", score: 0),
                       Choice(content: "他们是我的榜样.", score: 0),
                       Choice(content: "他们通常都与我无关.", score: 0),
                       Choice(content: "我当他们透明.", score: 0)] ),
    Question(content: "5. 如果家族要你与一个令人作呕的家伙结婚，你会：",
             choices: [Choice(content: "听从安排，为能帮助家族而自豪.", score: 0),
                       Choice(content: "会，但强颜欢笑.", score: 0),
                       Choice(content: "巧妙地抗婚.", score: 0),
                       Choice(content: "逃跑.", score: 0)] ),
    Question(content: "6. 有一位家人疏远了你。在他弥留之际，他想与你和解。你会：",
             choices: [Choice(content: "与他谈谈，但坚守立场.", score: 0),
                       Choice(content: "不跟他说话.", score: 0),
                       Choice(content: "不计前嫌敞开心扉地讨论前事.", score: 0),
                       Choice(content: "积极进行和解，并留心听他的遗言.", score: 0)] ),
    Question(content: "7. 一个位高权重的腐败法官允诺如果你能作对你朋友不利的假证，他便给你一大笔钱。你会：",
             choices: [Choice(content: "照做，然后拿钱.", score: 0),
                       Choice(content: "拿钱照做，但尽量使证词显得无力.", score: 0),
                       Choice(content: "拒绝.", score: 0),
                       Choice(content: "不管结果如何，都站在朋友那一边.", score: 0)] ),
    Question(content: "8. 你会亲近朋友，还是与大部分人保持一段距离以保安全？",
             choices: [Choice(content: "我有一大群密友.", score: 0),
                       Choice(content: "我有些密友.", score: 0),
                       Choice(content: "我有几个密友.", score: 0),
                       Choice(content: "我会与人保持距离.", score: 0)] ),
    Question(content: "9. 你背叛过朋友吗？",
             choices: [Choice(content: "我干过不止一次，有时也能逃避惩罚.", score: 0),
                       Choice(content: "我只干过那么一次.", score: 0),
                       Choice(content: "我曾被怂恿过这么做，但从未做过.", score: 0),
                       Choice(content: "我从未考虑过这种事.", score: 0)] ),
    Question(content: "10. 你怎么看待“执子之手，与子偕老”这类对爱人的终生承诺？",
             choices: [Choice(content: "我曾有过或正渴望着这么一段罗曼史.", score: 0),
                       Choice(content: "这种罗曼史挺理想的，如果能成功的话.", score: 0),
                       Choice(content: "我担心我会错过其他人对我的爱.", score: 0),
                       Choice(content: "作茧自缚？真是天大的错误.", score: 0)] ),
    Question(content: "11. 朋友借了你钱，你会要他们还吗？",
             choices: [Choice(content: "会，而且写好借据，不得抵赖.", score: 0),
                       Choice(content: "会，但期限上会宽松些.", score: 0),
                       Choice(content: "不会，尽管还了会更好.", score: 0),
                       Choice(content: "不会，他们欠我一个人情.", score: 0)] ),
    Question(content: "12. 你仍与儿时玩伴保持联络吗？",
             choices: [Choice(content: "是的，我们定期通信.", score: 0),
                       Choice(content: "是的，我们努力保持联络.", score: 0),
                       Choice(content: "不会，我经常搬家.", score: 0),
                       Choice(content: "不会，我不再与他们有共同之处.", score: 0)] ),
    Question(content: "13. 你会花时间和金钱在集体上吗？",
             choices: [Choice(content: "会，我会优先考虑集体的需要.", score: 0),
                       Choice(content: "如果我的需求被满足的话，我会尽我所能.", score: 0),
                       Choice(content: "不会，我没钱也不闲.", score: 0),
                       Choice(content: "不会，花时间和金钱在集体上是一种浪费.", score: 0)] ),
    Question(content: "14. 集体面临被侵害的威胁，你会：",
             choices: [Choice(content: "保卫它直至自己的最后一口气.", score: 0),
                       Choice(content: "和残存同伴构筑防御.", score: 0),
                       Choice(content: "一看到势头不对就逃跑.", score: 0),
                       Choice(content: "与入侵者达成协议，成为间谍.", score: 0)] ),
    Question(content: "15. 如果你受伤了，需要急救，你的同伴愿意帮助你吗？",
             choices: [Choice(content: "会的，因为他们知道我也会为他们做同样的事.", score: 0),
                       Choice(content: "会的，因为我很受欢迎.", score: 0),
                       Choice(content: "可能不会，因为我不受信任.", score: 0),
                       Choice(content: "肯定不会，我在集体中树敌了.", score: 0)] ),
    Question(content: "16. 你尊重集体的规章和领袖吗？",
             choices: [Choice(content: "毋庸置疑，是的.", score: 0),
                       Choice(content: "是的，总的来说他们是最佳的管理方式.", score: 0),
                       Choice(content: "当它适合我时，我才会。儘管有些规章我并不认同.", score: 0),
                       Choice(content: "我不关心他们；他们拿我没辙.", score: 0)] ),
    Question(content: "17. 同伴回避你，或嘲笑你吗？",
             choices: [Choice(content: "是的，这些井底之蛙不会理解超规格的人.", score: 0),
                       Choice(content: "有些会，因为并不是所有人都认同我.", score: 0),
                       Choice(content: "不会，我看起来一切正常.", score: 0),
                       Choice(content: "不会，我就是集体中的正常人的标准.", score: 0)] ),
    Question(content: "18. 你当官会为民作主，或者希望代表集体的意志吗？",
             choices: [Choice(content: "做这种事是我所乐意接受的荣誉.", score: 0),
                       Choice(content: "当然。这是每个人的义务.", score: 0),
                       Choice(content: "不会，除非无人能接手此事.", score: 0),
                       Choice(content: "不会，我不想为集体利益负责.", score: 0)] ),
    Question(content: "19. 你的国家闹饥荒，你会：",
             choices: [Choice(content: "与其他人共享自己有的食物.", score: 0),
                       Choice(content: "自己吃尽可能少，余下的给其他人.", score: 0),
                       Choice(content: "偷取自己生存所需食物.", score: 0),
                       Choice(content: "偷取尽可能多的食物，然后高价卖出.", score: 0)] ),
    Question(content: "20. 给你足够的钱，你会往国王的酒中下毒吗？",
             choices: [Choice(content: "会，类似的事我干过了.", score: 0),
                       Choice(content: "如果我能逃避惩罚的话，我会的.", score: 0),
                       Choice(content: "不会，尽管我觉得这一大笔钱很诱人.", score: 0),
                       Choice(content: "不会，而且我会叫国王小心这个阴谋.", score: 0)] ),
    Question(content: "21. 瘟疫传遍你的国家，你会：",
             choices: [Choice(content: "接下寻求解药的危险任务.", score: 0),
                       Choice(content: "尽力治好病人.", score: 0),
                       Choice(content: "避免接触到病人.", score: 0),
                       Choice(content: "逃离国家.", score: 0)] ),
    Question(content: "22. 你尊重领主的法律权威吗？",
             choices: [Choice(content: "是的，皇上萬歲萬歲萬萬歲！", score: 0),
                       Choice(content: "是的，我们的统治者大体上是公平、公正的.", score: 0),
                       Choice(content: "不会，统治者还不是人一个！", score: 0),
                       Choice(content: "不会，权力必定导致腐化.", score: 0)] ),
    Question(content: "23. 给你一笔稳赚的生意，你会为敌国做间谍吗？",
             choices: [Choice(content: "会，因为我的国家早已任人鱼肉.", score: 0),
                       Choice(content: "会，因为国家机密对我无关紧要.", score: 0),
                       Choice(content: "不会，我会被抓的.", score: 0),
                       Choice(content: "不会，我不会辜负国家对我的信任.", score: 0)] ),
    Question(content: "24. 你依靠政府来建立社会契约和保障所有权吗？",
             choices: [Choice(content: "是的，因为维护法律比任何个人争执重要.", score: 0),
                       Choice(content: "是的，因为法庭就是为了解决这种争执而设立的.", score: 0),
                       Choice(content: "你在开玩笑吗？政府连路都不会铺.", score: 0),
                       Choice(content: "绝对不会，如果我自己不能保护个人所有，我就无权拥有它.", score: 0)] ),
    Question(content: "25. 如果你入狱了，你会伤害或杀死其他人而脱狱吗？",
             choices: [Choice(content: "会，服刑这么多年等于锁住自己.", score: 0),
                       Choice(content: "会，在犯事时便已知道这风险了.", score: 0),
                       Choice(content: "不会，除非只造成容易愈合的小伤.", score: 0),
                       Choice(content: "不会，那些守卫只是在尽本分而已.", score: 0)] ),
    Question(content: "26. 你接受贵族有权恶劣对待手下的仆人吗？",
             choices: [Choice(content: "是的，很幸运，贵族们投了个好胎.", score: 0),
                       Choice(content: "是的，有时要靠吓，他们才肯干活.", score: 0),
                       Choice(content: "不会，贵族应仁慈地统治.", score: 0),
                       Choice(content: "任何人都无权恶劣对待别人。以上。.", score: 0)] ),
    Question(content: "27. 你意外地犯罪了，你会：",
             choices: [Choice(content: "认罪，并向受害者赔偿.", score: 0),
                       Choice(content: "认罪，向法官请求宽大处理.", score: 0),
                       Choice(content: "隐瞒自己的涉案事实，必要时说谎.", score: 0),
                       Choice(content: "嫁祸于人.", score: 0)] ),
    Question(content: "28. 如果犯罪了，你会认罪吗？",
             choices: [Choice(content: "会，因为我有这个责任.", score: 0),
                       Choice(content: "会，因为我会因此获得轻判.", score: 0),
                       Choice(content: "不会，我会等到检察官证明我有罪.", score: 0),
                       Choice(content: "不会，我会证明我“无罪”的.", score: 0)] ),
    Question(content: "29. 如果可能被惩罚，你会表明一个革命性的政见吗？",
             choices: [Choice(content: "会，我宁愿受罚也不愿保持沉默.", score: 0),
                       Choice(content: "会，总要有人说真话.", score: 0),
                       Choice(content: "不会，尽管私底下我会对朋友说.", score: 0),
                       Choice(content: "不会，不值得为政治费神.", score: 0)] ),
    Question(content: "30. 旅行时，你目击了一场袭击。你被传去作证，这会非常耽误你的行程。你会：",
             choices: [Choice(content: "连夜溜走，避免作证.", score: 0),
                       Choice(content: "说自己什么也没看到.", score: 0),
                       Choice(content: "勉强留下，作证，然后离开.", score: 0),
                       Choice(content: "留下直至结案所需证供足够.", score: 0)] ),
    Question(content: "31. 财富的最大用途是什么？",
             choices: [Choice(content: "帮助穷人和不幸的人.", score: 0),
                       Choice(content: "满足亲朋戚友需要.", score: 0),
                       Choice(content: "让自己达到人生巅峰.", score: 0),
                       Choice(content: "不仅达到巅峰，还要阻止别人超过自己.", score: 0)] ),
    Question(content: "32. 遇到乞丐，你会：",
             choices: [Choice(content: "慷慨地给钱.", score: 0),
                       Choice(content: "恰到好处地给钱.", score: 0),
                       Choice(content: "只给我认为无所谓的钱，至多一两块.", score: 0),
                       Choice(content: "视而不见.", score: 0)] ),
    Question(content: "33. 通过魔法，你可以使村里的商人们以为你的铜币是金币。你会这样做吗？",
             choices: [Choice(content: "会，而且我还要尽可能地消费.", score: 0),
                       Choice(content: "会，但只骗富商.", score: 0),
                       Choice(content: "不会，风险太大了.", score: 0),
                       Choice(content: "不会，商人也要养家糊口啊.", score: 0)] ),
    Question(content: "34. 你有两份工作可供选择。一份酬劳更多，另一份较稳定。你会选哪一份？",
             choices: [Choice(content: "肯定是更赚钱的那份；稳定的工作听上去像苦差事.", score: 0),
                       Choice(content: "可能是前者，尽管我会看看后者干些什么.", score: 0),
                       Choice(content: "后者，除非前者赚的钱多到吓死人.", score: 0),
                       Choice(content: "肯定是稳定的那份，因为我有长远的计划.", score: 0)] ),
    Question(content: "35. 最佳的致富途径是什么？",
             choices: [Choice(content: "这关乎天时地利，还有一时运气.", score: 0),
                       Choice(content: "灵活变通会有更多机会.", score: 0),
                       Choice(content: "按照一个有适度风险的长期计划来做.", score: 0),
                       Choice(content: "努力工作，坚持不懈.", score: 0)] ),
    Question(content: "36. 如果你接手一项工作，尽管它会很危险，你会努力完成吗？",
             choices: [Choice(content: "会，我说话算数.", score: 0),
                       Choice(content: "会，因为人家会认为我信得过，这很好.", score: 0),
                       Choice(content: "你可以赌我会否爽约.", score: 0),
                       Choice(content: "如果这不是什么好差事，那算了吧.", score: 0)] )
]
