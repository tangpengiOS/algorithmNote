/*
 题目
 
 给定一个排序数组，你需要在原地删除重复出现的元素，使得每个元素只出现一次，返回移除后数组的新长度。
 
 不要使用额外的数组空间，你必须在原地修改输入数组并在使用 O(1) 额外空间的条件下完成。
 */


import UIKit

class LeeCode0_Controller: UIViewController {

    var arr : [Int] = [1,1,1,2,2]

    @IBOutlet weak var firstLB: UILabel!
    
    @IBOutlet weak var secondLB: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstLB.text = String.init(format: "%@", arr)
    }
    

    @IBAction func click(_ sender: Any) {
        secondLB.text =  String.init(format: "%@", self.removesort(&arr))

    }
    

    func removesort( _ a : inout [Int]) -> [Int]{
        
        
        if a.count < 2 {
            return a
        }
        self.sortArr(&a,j: 1)
        
        return a
        
    }
    
    
    func sortArr( _ array : inout [Int] , j : Int){
        
        if array.count < 2 {
            return
        }
        
        var t = j
        if t == 0 {
            t = 1
        }
        
        for  t in t ... array.count - 1 {
            print(t)
            if array[t] == array[t - 1] {
                
                
                array.remove(at: t)
                self.sortArr(&array, j: t-1 )
                break
            }
        }

    }
    
}
