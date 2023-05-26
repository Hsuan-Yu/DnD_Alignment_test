//
//  AlignmentType.swift
//  DnD_Alignment_test
//
//  Created by Calvin Lee on 2023/5/22.
//

import Foundation

struct Alignment {
    let type: String
    let description: String
}


/*
 let Alignments = [
 Alignment(type: "Lawful Good", description: "A lawful good character acts as a good person is expected or required to act. He combines a commitment to oppose evil with the discipline to fight relentlessly. He tells the truth, keeps his word, helps those in need, and speaks out against injustice. A lawful good character hates to see the guilty go unpunished."),
 Alignment(type: "Neutral Good", description: "A neutral good character does the best that a good person can do. He is devoted to helping others. He works with kings and magistrates but does not feel beholden to them."),
 Alignment(type: "Chaotic Good", description: "A chaotic good character acts as his conscience directs him with little regard for what others expect of him. He makes his own way, but he's kind and benevolent. He believes in goodness and right but has little use for laws and regulations. He hates it when people try to intimidate others and tell them what to do. He follows his own moral compass, which, although good, may not agree with that of society."),
 Alignment(type: "Lawful Neutral", description: "A lawful neutral character acts as law, tradition, or a personal code directs her. Order and organization are paramount to her. She may believe in personal order and live by a code or standard, or she may believe in order for all and favor a strong, organized government."),
 Alignment(type: "True Neutral", description: "A neutral character does what seems to be a good idea. She doesn't feel strongly one way or the other when it comes to good vs. evil or law vs. chaos. Most neutral characters exhibit a lack of conviction or bias rather than a commitment to neutrality. Such a character thinks of good as better than evil-after all, she would rather have good neighbors and rulers than evil ones. Still, she's not personally committed to upholding good in any abstract or universal way."),
 Alignment(type: "Chaotic Neutral", description: "A chaotic neutral character follows his whims. He is an individualist first and last. He values his own liberty but doesn't strive to protect others' freedom. He avoids authority, resents restrictions, and challenges traditions. A chaotic neutral character does not intentionally disrupt organizations as part of a campaign of anarchy. To do so, he would have to be motivated either by good (and a desire to liberate others) or evil (and a desire to make those different from himself suffer). A chaotic neutral character may be unpredictable, but his behavior is not totally random. He is not as likely to jump off a bridge as to cross it."),
 Alignment(type: "Lawful Evil", description: "A lawful evil villain methodically takes what he wants within the limits of his code of conduct without regard for whom it hurts. He cares about tradition, loyalty, and order but not about freedom, dignity, or life. He plays by the rules but without mercy or compassion. He is comfortable in a hierarchy and would like to rule, but is willing to serve. He condemns others not according to their actions but according to race, religion, homeland, or social rank. He is loath to break laws or promises."),
 Alignment(type: "Neutral Evil", description: "A neutral evil villain does whatever she can get away with. She is out for herself, pure and simple. She sheds no tears for those she kills, whether for profit, sport, or convenience. She has no love of order and holds no illusion that following laws, traditions, or codes would make her any better or more noble. On the other hand, she doesn't have the restless nature or love of conflict that a chaotic evil villain has."),
 Alignment(type: "Chaotic Evil", description: "A chaotic evil character does whatever his greed, hatred, and lust for destruction drive him to do. He is hot-tempered, vicious, arbitrarily violent, and unpredictable. If he is simply out for whatever he can get, he is ruthless and brutal. If he is committed to the spread of evil and chaos, he is even worse. Thankfully, his plans are haphazard, and any groups he joins or forms are poorly organized. Typically, chaotic evil people can be made to work together only by force, and their leader lasts only as long as he can thwart attempts to topple or assassinate him.")
 ]
 */


let Alignments = [
    Alignment(type: "守序善良", description: "守序善良的人物相信，规律而强大的社会和高尚的政府，可以让大多数人民生活得更好。只要人们相信法律，并试着互相帮助，整个社会就将因此而进步。因此，这个阵营的人物将会朝着这个方向努力，他们会尽可能地为大多数人带来较多的福利及较少的伤害。他们必定信守自己的承诺。守序善良的人物，特别是圣武士，时常自己陷于善良与法律相冲突的两难处境。比如履行誓言可能会伤及无辜时，或在宗教法规和地方法律相矛盾时。"),
Alignment(type: "中立善良", description: "中立善良的人物相信力量平衡是十分重要的事，单方面地强调秩序或混乱，是无法达到至善的。因为整个宇宙中充满了朝着各式各样的目标而努力的生物，所以若要追求至善，便不能破坏这种平衡，甚至的设法维持这种平衡，如果说支持社会秩序可以带来至善，便得以为之。若推翻既有的社会秩序就可以达到至善，那也必须为之。社会结构对他们来说，没什么重大意义。中立善良的长处是，行善不为阶级偏见所影响。"),
Alignment(type: "混乱善良", description: "混乱善良的人物虽然喜欢按照自己的意思行事，心地却不错。尽管他们认同一切美德和公理，却不愿意受到律法和规范的约束。想要任意驱使这些人，要他们遵照命令做事是不可能的。这些人有自己的一套道德标准，虽然不至于为恶，但也不见得和一般大众的道德标准完全相同。混乱善良人物常会因为感到受人指使而在团队内制造矛盾，比起有计划的行动他们更喜欢即兴发挥。混乱善良阵营的人物不介意用恶毒的手段制裁他们认为是邪恶的人，即便并不喜欢这样做，但他们本身却并不带有恶意。"),
Alignment(type: "守序中立", description: "守序中立的人物而言，秩序和组织是非常重要的。他们认同强大、井然有序的统治阶层，不管这个统治阶层是专制的暴君，还是安和乐利的民主政府，这些人都不在乎，世界上必须有法律，而法律则必须被遵守。对他们而言，绝对的秩序比什么道德良知来的重要。只要是规定，不管结果是好是坏，都必须遵行无误。绝对公正的法官，和绝对服从命令的士兵，都是此阵营的最佳典范。守序中立对善恶持中立态度，但这不代表他们是不道德的、是道德虚无主义者或是没有道德立场。他们只不过是将道德观念永远置于服从信条、传统或者法律之下。他们通常有强烈的伦理信条，但这一信条是首先基于其信念体系，而非基于善恶认同。"),
Alignment(type: "绝对中立", description: "绝对中立的人物相信绝对平衡的力量，因此，他们拒绝采取任何被视为邪恶和暴力的行动。绝对中立的人会尽力避免和善良或邪恶，秩序或叛逆的力量合流。有时候他们发现自己被迫得和某个阵营结盟。为了保持平衡，这些人会刻意改变立场，和弱势者合作。然而，当强弱势力对换时，他们也会毫不犹豫地跟着改变立场。"),
Alignment(type: "混乱中立", description: "混乱中立的人按自己一时的兴致行动。他是一个完全的个人主义者。他重视自己的自由权利，但并不致力于保护别人的自由。他蔑视权威，愤恨约束并且挑战传统。混乱中立者并不会向无政府运动那样有意瓦解组织。如果这么做，他必须把自己的阵营转成善良(希望解放他人)或是邪恶(使异己受苦)。混乱中立的寻常称谓是“真正混乱”。注意，混乱中立者的行为也许很难预测，但他的举止并非完全随机的，他从桥上的走过去的可能性和从桥上跳下去的可能性大小并不相等。混乱中立是一个真正自由于社会约束和对改良社会的空想的阵营。"),
Alignment(type: "守序邪恶", description: "守序邪恶的人有系统地得到他想要的东西，此行为受到他行为准则的限制，但并不顾及受其伤害的人。他关心传统、忠诚和秩序，但不关心自由、尊严和生命。他按规则行动，但没有怜悯和同情。他觉得待在统治阶层里很舒服，愿意支配别人，但也乐意为别人服务。他处罚谴责别人并不是根据他们的行为而是根据种族、信仰、祖国或社会阶层。他不愿违反法律或承诺，这种不愿部分是因为他的天性，部分是因为他需要秩序来保护他免受道德上的反对。某些守序邪恶者有特别的禁忌，比如不冷血嗜杀(但让属下去做)或不伤害儿童(如果可能的话)。他们认为这些良心上的原则使自己比一般不合人道的恶人水准高。诡计多端扩展自己势力并他的压迫人民的贵族是一个守序邪恶的例子。某些守序邪恶的人或生物狂热的效忠于邪恶，就好像十字军效忠于良善一样。伤害别人是他们这么做的目的，传播邪恶本身也是他们乐于如此的原因。他们也可能认为行恶是对某种邪恶神明或主人的责任的一部分。守序邪恶有时被称为“恶魔般的”，因为恶魔是守序邪恶的化身和典型。守序邪恶是一个有方法有意图并且能常常有所成就的邪恶阵营。"),
Alignment(type: "中立邪恶", description: "中立邪恶的人物为了自己可以做出任何事，一切都是为了自己，就这么简单。他们从不为死在手下的人掉泪，不论是为财、为了高兴或只是为了方便。他们不喜欢纪律，也不遵守法律、传统或任何高贵的信念。然而，他们也不像混乱邪恶者那样浮躁不安，或热爱冲突。有些中立邪恶者将邪恶视为一种理想，想要献身于邪恶。这种恶人大多是邪恶神祇或秘密组织的成员。一般人习惯将中立邪恶称为“真正的邪恶”。中立邪恶的可怕在于表现出全然的邪恶，完全没有荣誉感和对象区别。"),
Alignment(type: "混乱邪恶", description: "混乱邪恶的人物会因为贪婪、憎恨或欲望而做出任何事。他暴躁易怒、满怀恶意、独断暴力而且无法预料。为了得到想要的东西，他会冲动而鲁莽地行动，散播邪恶与混乱。所幸他的计划大多杂乱无章，其团体大多组织散乱。一般而言，混乱邪恶者只有被强迫时才会与人合作，其领袖常要面对斗争与暗杀。混乱邪恶的可怕在于不仅破坏美丽与生命，也破坏了美丽与生命赖以存在的秩序。")
]
