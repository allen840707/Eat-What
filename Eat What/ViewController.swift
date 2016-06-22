//
//  ViewController.swift
//  Eat What
//
//  Created by Lin-Kai Huang on 6/15/16.
//  Copyright © 2016 Lin-Kai Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var AAnswerButtom: UIButton!
    @IBOutlet weak var BAnswerButtom: UIButton!
    @IBOutlet weak var CAnswerButtom: UIButton!
    @IBOutlet weak var DAnswerButtom: UIButton!
    
    var data = [["甘泉魚",1,2,"A",150,100,3,2,1,10,2,0,1,0,1,1,0,0,1,1,2,3],
["樂山",1,2,"A",180,120,3,3,1,6,2,0,1,0,1,1,0,0,1,1,2,3],
["韓大佬",2,7,"A",260,100,1,2,1,6,2,0,1,0,1,1,1,0,0,1,3,2],
["阿展麵線",1,5,"A",100,40,1,1,1,5,1,0,1,1,1,0,0,0,0,1,1,1],
["鬍子餛飩",1,6,"A",100,30,1,1,1,4,2,0,1,0,1,0,0,0,0,0,1,2],
["八鍋",1,10,"B",170,120,3,3,1,10,2,0,1,1,1,1,1,0,1,1,2,2],
["敏忠小吃店",1,6,"B",100,50,1,1,1,3,1,0,1,0,1,1,0,0,0,1,1,2],
["廣奇來西點麵包",7,5,"B",80,20,1,2,1,2,0,1,1,1,1,1,0,0,0,1,1,3],
["四川飯館",1,1,"B",200,100,3,3,1,10,2,0,1,0,1,1,0,0,1,1,1,2],
["林記美食站",1,7,"B",100,60,1,1,1,1,0,1,1,1,1,1,0,0,0,1,1,2],
["摩斯漢堡",7,3,"B",200,100,2,2,1,4,3,1,1,1,1,1,1,1,0,1,3,3],
["廢墟台灣傳統",1,6,"B",120,50,2,3,1,4,1,0,1,0,1,1,1,0,0,0,1,1],
["麵包大亨",7,5,"B",100,20,1,1,1,2,0,1,1,1,1,1,1,0,0,1,2,3],
["米塔手感烘焙",7,5,"B",150,50,1,2,1,3,3,1,1,1,1,1,1,0,0,1,3,3],
["香香自助餐",1,6,"B",100,55,2,3,1,2,1,0,1,0,1,1,0,0,0,1,1,2],
["源士林粥品",1,1,"B",75,55,2,2,1,1,0,0,1,0,1,0,0,0,0,0,1,2],
["德合香漢堡",7,3,"B",70,40,1,1,1,1,0,1,1,0,1,1,0,0,0,0,1,2],
["明池豆花",1,11,"B",70,40,1,3,1,4,2,0,1,1,1,1,1,0,0,1,2,2],
["世界大同",7,6,"B",170,100,2,1,1,6,3,0,1,0,1,1,0,0,0,1,3,2],
["美香味",1,6,"B",120,50,2,1,1,6,2,0,1,0,1,1,0,0,1,1,2,2],
["波波恰恰",6,6,"B",100,40,2,3,1,4,1,0,1,1,1,1,0,0,1,1,2,3],
["湯饌",6,4,"B",180,100,3,3,1,6,2,0,1,1,1,1,0,0,1,1,3,2],
["東北大餅",1,11,"B",70,40,2,2,1,2,0,1,1,1,1,1,0,0,0,0,1,3],
["丐幫滷味",1,11,"B",100,40,2,3,1,1,0,0,1,1,1,1,1,0,0,0,1,2],
["發現義大利麵",4,2,"B",170,120,3,2,1,10,3,0,1,1,1,1,0,0,1,1,2,2],
["私房麵",6,2,"B",100,50,2,2,1,4,1,0,1,0,1,1,0,0,1,1,2,2],
["吃的小館",1,6,"C",100,50,2,2,1,4,1,0,1,0,1,1,0,0,1,1,1,2],
["林王鵝肉",1,1,"C",120,70,1,2,1,4,1,0,1,0,1,1,0,0,0,1,2,3],
["政大烤場",1,11,"C",100,50,2,3,1,1,0,0,1,1,1,1,1,1,0,0,1,2],
["玉口香",1,6,"C",120,60,2,2,1,4,1,0,1,0,1,1,0,0,0,1,2,2],
["粳大王",1,6,"C",100,70,2,2,1,6,1,0,1,1,1,1,0,0,0,1,1,2],
["大呼過癮",1,4,"C",150,120,3,2,1,6,3,0,1,1,1,1,1,0,1,1,2,2],
["佳味",1,6,"C",80,50,2,3,1,2,1,0,1,0,1,0,0,0,1,1,1,2],
["蝴蝶漾",6,6,"C",150,100,2,2,1,3,2,0,1,0,1,0,0,0,0,1,3,3],
["番茄紅",6,2,"C",150,100,2,3,1,3,2,0,1,0,1,1,0,0,0,1,3,3],
["嗔味廚房",5,6,"C",120,80,2,1,1,4,1,0,1,0,1,0,0,0,0,1,2,2],
["金鰭",2,1,"D",200,130,2,3,1,3,2,0,1,0,1,1,0,0,0,1,2,3],
["華越美食",5,7,"D",120,70,1,1,1,4,1,0,1,0,1,0,0,0,0,0,1,2],
["佐世保",7,7,"D",150,100,3,2,1,4,1,0,1,0,1,0,0,0,1,1,2,3],
["水盆羊肉",1,1,"D",100,50,1,1,1,2,1,0,1,0,1,0,0,0,0,1,1,2]]
    var question = [[3,1,0,0,"which would you like?", "1.coffee (西方)"," 2.tea (東方)"," 3. or me (放個婊子啥毀的 篩選出其他)","",21,22,6,0,0,0,0,0],
    [3,1,1,21,"以下偉人你覺得誰最屌? ","1.達蚊吸 (義大利)" ,"2. NIGGA歐巴馬(美國)" ,"3.邱吉爾(西式)","",4,8,7,0,0,0,0,0],
    [2,1,1,22,"你愛哪一款?","1.我愛台妹台妹愛我(中式)" , "2.天喪英才飯島愛(日本)" ,"3.俺是葉問之我要打十個,少女時代我也可以一次來(韓國)" ,"4.第三性之泰國性福之旅(泰國)",1,2,3,5,0,0,0,0],
    [2,2,0,0,"下面哪一句最得你心?", "1.飯飯之餃又麵子掛不住", "2.水火交融綜合之大千世界", "3.飲料點心我要得來速","",23,24,25,0,0,0,0,0],
    [2,2,1,23,"哪一個你想吃>< ?","1.飯","2.麵","3.餃子","",1,2,6,0,0,0,0,0],
    [3,2,1,24,"今天天氣如何?", "1.炎熱如火(選吃綜合)" ,"2.快要凍甭條(選火鍋)","","",7,4,0,0,0,0,0,0],
    [1,2,1,25,"你喜歡哪個?" ,"1.大口吸吮(飲料)" ,"2.櫻桃小口嚙咬(點心)", "3.官人~我都想要(速食)","",9,11,3,0,0,0,0,0],
    [1,2,0,0,"敢問太陽在你的哪裡?" ,"1.剛自東邊升起,微微紅蘊好不害羞><(早餐)", "2.日正當中,幹好熱(午餐)" ,"3.夕陽西下,我獨自一人在天涯 (晚餐)","",8,[1,2,3,4,5,6,7,10],[1,2,3,4,5,6,7,10,9,11],0,0,1,1,0],
    [2,8,0,0,"敢問你帶幾位?" ,"1.林北挖系角頭 不帶10個不出門", "2.三五好友結伴而行", "3.形單影隻之單身20年...","",[10,20],[3,6],[1,1],0,1,1,1,0],
    [1,4,0,0,"你今天預算...?", "1.不是問題啊,俺花的越多賺的越多BALL LIKE JAY CHOU", "2.俺還可以扛兩個百",  "3....剩下一個孫中山 但我還是要吃飯!","",[200,10000],[100,200],[0,100],0,1,1,1,0],
    /*[3,18,0,0,"飲料有無?", "1.哥哥我自帶泉水大戰三百回合", "2.我就愛喝到飽喝到吐喝到爽爽叫", "3.單點一杯才是浪漫的王道~請妹自慰兩相宜","",-1,1,-1,0,0,0,0,0],*/
    [3,20,0,0,"氣氛格調?", "1.哥吃的是飯不是沙小品味" ,"2.給我羅曼蒂克,因為我身後的妹妹說他想要","","",[1,2],3,0,0,1,0,0,0],
    [3,19,0,0,"冷氣有無?", "1.吃飯流汗不流淚OK DER", "2.我要空調,,,我要涼涼我要爽爽","","",[0,1],1,0,0,1,0,0,0]]
    func filter(now : Int,resultS:Int,resultL:[Int]){
        var j = 0
        ///////general
        var remove  = [0]
        if (now != 4 && now != 8 && now != 11){
          j=0
            
            for i in data{
            
                
            if (resultS != 0){
                if (i[now] != resultS){
                    if(j==0){
                    remove[0] = 1
                    j += 1
                    }
                    else{remove.append(1)}
                }
            
                else {
                    if(j==0){
                        remove[0] = 0
                        
                        j += 1
                        print("skjbagkljangk")
                    }
                    else{remove.append(0)}
                }
                //print("$$$",remove.count)
                       }
            else{
                var yes = 0
                for k in resultL{
                    if (k == i[now]){
                       yes += 1
                       break
                       }
                    }
                if (yes == 0){
                    if(j==0){remove[0] = 1
                    j += 1
                    }
                    else{remove.append(1)}
                    //data.removeAtIndex(j)
                }
                else{
                    if(j==0){remove[0] = 0
                        j += 1
                    }
                    else{remove.append(0)}
                }
                }
            }
            
            
            //j += 1
            }
        
        ///////two
        if (now == 4 || now == 8) {
            
        }
        //////many
        if (now==11){
            
        }
        if(now != 4 && now != 8 && now != 11){
        for (j=data.count-1;j>=0;--j){
            if(remove[j] == 1){
                data.removeAtIndex(j)
            }
        }
        }
    }
    var HowManyCanYouAsk = 2
    var questionnow = 0
    
    func deletequestion(which:Int){
        var jj = 0
        var tmp = [0]
        var i = 0
        
        for (i=1;i<question.count;++i){
            tmp.append(0)
        }
        for i in question{
            
        }

        for i in question{
            if (i[1]==question[which][1]){
                tmp[jj]=1
            }
            jj += 1
        }
        
        let z = question.count

        for (i=z-1;i>=0;--i){
            if(tmp[i]==1){question.removeAtIndex(i)}
        }

    }
    
    func random()-> Int{
        let a = question.count
        var use = -1
        while (true){
            use = Int(arc4random() % 60)
            if (use < a){
                var x = question[use][2] as! Int
                if (x != 1){
                    break
                }
            }
        }
        return use
    }
    
    
    func select()->Int{
        var use = random()
        let decide = (data.count)/HowManyCanYouAsk
        while(true){
            use = random()

            if (use<question.count && (question[use][2] as! Int) != 1){

                break
        }
        }
 
        return use
    }
    
   var A = 0
        func deal(/*which: Int,*/reply : Int)->Int{
     
        var AA = 0
        var B = [0,0]
        var final = reply
        final += 8
           // var lala =
        if((question[A][final+4] as! Int) == 0){
            if((question[A][final] as! Int) >= 20){
              var which = -1
var o = 0
                for(o=0;o<question.count;++o){
                    if(question[o][3]==question[A][final]){
                        which = o
                        break
                    }
}
                QuestionLabel.text = question[which][4] as? String
                AAnswerButtom.setTitle(question[which][5] as! String, forState: .Normal)
                BAnswerButtom.setTitle(question[which][6] as! String, forState: .Normal)
                CAnswerButtom.setTitle(question[which][7] as! String, forState: .Normal)
                //print (question[which][8] as! String)
                DAnswerButtom.setTitle(question[which][8] as! String, forState: .Normal)
                A = which
                return 0
            }
    }
        print ("*",question[A][4])
        var cow = question[A][final+4]
        if (cow == 0){
        AA = question[A][final] as! Int
                }
        else{
            B = question[A][final] as! [Int]  }
        filter(question[A][1] as! Int ,resultS: AA,resultL: B)
        deletequestion(A)
        print("!!!!!",question.count,data.count)
        if(data.count>5){
            A = setQuestion()
            return 0}
        else{
            return 1
        }
    }
    var C = 0
    
    var little = [Int]()
    @IBAction func optionButtonClicked(sender: UIButton)
    {
        //while(true){
        var XX = 0
        if(sender==AAnswerButtom){XX=1}
        else if(sender==BAnswerButtom){XX=2}
        else if(sender==CAnswerButtom){XX=3}
        else{XX=4}
       // deal(A,reply: XX)
       
        var finish = 0
        
            //data.count <= 5)
        
            
            finish = deal( /*A,1reply: */ XX)
            if (finish==1){
       print("GET!!!!!")
        //seague pass data
            }
        
    }

    
    func setQuestion() -> Int
    {
        let which =  select()
        print ("&&&&",question.count)
        print (which)
        QuestionLabel.text = question[which][4] as? String
        AAnswerButtom.setTitle(question[which][5] as! String, forState: .Normal)
        BAnswerButtom.setTitle(question[which][6] as! String, forState: .Normal)
        CAnswerButtom.setTitle(question[which][7] as! String, forState: .Normal)
        print (question[which][8] as! String)
        DAnswerButtom.setTitle(question[which][8] as! String, forState: .Normal)
        return which
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //var A = 5
        //if(A.dynamicType == Int.self){print("hjswfebjhbf")}
        
        A = setQuestion()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

