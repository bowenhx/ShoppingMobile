//
//  LoopImageView.swift
//  ShoppingMobile
//
//  Created by stray s on 2017/8/7.
//  Copyright © 2017年 stray. All rights reserved.
//

import UIKit

protocol LoopImageViewDelegate: NSObjectProtocol {
    func didSelectPage(pageNum: Int)
}

enum PageControlPosition {
    case MiddleBottom, LeftBottom, RightBottom
    case MiddleTop,    LeftTop,    RightTop
}



class LoopImageView: UIView, UIScrollViewDelegate {

    //MARK: - 私有属性
    private let scrollView: UIScrollView
    private let pageControl: UIPageControl
    private var images = [UIImage]()
    private var timer: Timer?
    private var currentPage = 0 {
        didSet {
            upade()
            pageControl.currentPage = currentPage
        }
    }
    
    //MARK: - 给外部调用的属性
    weak var delegate: LoopImageViewDelegate?    //点击事件的代理
    var rollingTime: TimeInterval = 2.0           //滚动一页的时间
    var rollingEnable: Bool = false {             //是否自动滚动
        willSet {
            if newValue != rollingEnable && images.count > 1{
                if newValue {
                    startTimer()
                } else {
                    stopTimer()
                }
            }
        }
    }
    var pageIndicatorColor: UIColor? {                                  //pageControl指示器颜色
        get {
            return pageControl.pageIndicatorTintColor
        }
        set {
            pageControl.pageIndicatorTintColor = newValue
        }
    }
    var currentPageIndicatorColor: UIColor? {                           //pageControl当前页指示器颜色
        get {
            return pageControl.currentPageIndicatorTintColor
        }
        set {
            pageControl.currentPageIndicatorTintColor = newValue
        }
    }
    var pageControlPosion: PageControlPosition = .MiddleBottom {       //pageControl位置
        willSet {
            let pw = CGFloat(self.pageControl.numberOfPages) * 17.0
            let w = self.frame.size.width
            let h = self.frame.size.height
            switch newValue {
            case .MiddleBottom:
                self.pageControl.frame = CGRect(x: (w-pw)/2, y: h-15, width: pw, height: 10)
            case .LeftBottom:
                self.pageControl.frame = CGRect(x: 0, y: h-15, width: pw, height: 10)
            case .RightBottom:
                self.pageControl.frame = CGRect(x: w-pw, y: h-15, width: pw, height: 10)
            case .MiddleTop:
                self.pageControl.frame = CGRect(x: (w-pw)/2, y: 5, width: pw, height: 10)
            case .LeftTop:
                self.pageControl.frame = CGRect(x: 0, y: 5, width: pw, height: 10)
            case .RightTop:
                self.pageControl.frame = CGRect(x: w-pw, y: 5, width: pw, height: 10)
            }
        }
    }
    
    
    //MARK: - 初始化方法
    init?(frame: CGRect, images: [UIImage]) {
        
        self.images = images
        self.scrollView = UIScrollView()
        self.pageControl = UIPageControl()
        super.init(frame: frame)
       
        
        self.scrollView.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height)
        self.pageControl.frame = CGRect(x: 0, y: self.frame.size.height-15, width: self.frame.size.width, height: 10)
        self.addSubview(scrollView)
        self.addSubview(pageControl)
        
        self.scrollView.showsHorizontalScrollIndicator = false
        self.scrollView.showsVerticalScrollIndicator = false
        self.scrollView.isPagingEnabled = true
        self.scrollView.contentSize = CGSize(width: self.frame.size.width * 3, height: self.frame.size.height)
        self.scrollView.delegate = self
       
        if self.images.count < 2 {
            let imageView = UIImageView()
            imageView.frame = CGRect.init(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height)
            imageView.image = self.images.first
            imageView.contentMode = .scaleToFill
            imageView.clipsToBounds = true
            self.scrollView.addSubview(imageView)
            self.scrollView.isScrollEnabled = false
        } else {
            self.scrollView.addSubview(UIImageView())
            self.scrollView.addSubview(UIImageView())
            self.scrollView.addSubview(UIImageView())
            (self.scrollView.subviews[0] as! UIImageView).image = self.images.last
            (self.scrollView.subviews[1] as! UIImageView).image = self.images.first
            (self.scrollView.subviews[2] as! UIImageView).image = self.images[1]
            for i in 0..<3 {
                let imgV = self.scrollView.subviews[i] as! UIImageView
                imgV.contentMode = .scaleAspectFill
                imgV.clipsToBounds = true
                imgV.frame = CGRect(x: CGFloat(i) * self.frame.size.width, y: 0, width: self.frame.size.width, height: self.frame.size.height)
            }
            
            self.scrollView.contentSize = CGSize(width: self.frame.size.width * 3, height: self.frame.size.height)
            self.scrollView.contentOffset = CGPoint(x: self.frame.size.width, y: 0)
        }
        
        self.pageControl.numberOfPages = self.images.count
        self.pageControl.isEnabled = false
        
        self.addGesture()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - 点击事件
    private func addGesture() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapAction))
        self.scrollView.addGestureRecognizer(tap)
    }
    //让代理来实现具体的点击事件
    func tapAction() {
        delegate?.didSelectPage(pageNum: currentPage)
    }
    
    //MARK: - 更新imageView中的图片和scrollView内的偏移
    private func upade() {
        if images.count < 2 {return}
        switch currentPage {
        case 0 :
            (self.scrollView.subviews[0] as! UIImageView).image = images.last
            (self.scrollView.subviews[1] as! UIImageView).image = images[currentPage]
            (self.scrollView.subviews[2] as! UIImageView).image = images[currentPage+1]
        case images.count-1 :
            (self.scrollView.subviews[0] as! UIImageView).image = images[currentPage-1]
            (self.scrollView.subviews[1] as! UIImageView).image = images[currentPage]
            (self.scrollView.subviews[2] as! UIImageView).image = images.first
        default :
            (self.scrollView.subviews[0] as! UIImageView).image = images[currentPage-1]
            (self.scrollView.subviews[1] as! UIImageView).image = images[currentPage]
            (self.scrollView.subviews[2] as! UIImageView).image = images[currentPage+1]
        }
        scrollView.contentOffset = CGPoint(x: self.frame.size.width, y: 0)
    }
    
    //MARK: - 自动滚动
    //timer调用使scrollView往下滚动
    func nextView() {
        scrollView.setContentOffset(CGPoint(x: self.frame.size.width * 2, y: 0), animated: true)
    }
    //开始滚动
    private func startTimer() {
        DispatchQueue.global().async {
            self.timer = Timer.scheduledTimer(timeInterval: self.rollingTime, target: self, selector: #selector(self.nextView), userInfo: nil, repeats: true)
            RunLoop.current.run()
        }
    }
    
    //停止滚动
    private func stopTimer() {
        timer!.invalidate()
        timer = nil
    }
    
    //MARK: - scrollViewDelegate
    //setContentOffset的动画完成后会调用,使currentPage+1
    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        currentPage = (currentPage+1)%images.count
    }
    
    //拖动scrollView时会停止自动滚动
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        if rollingEnable {
            stopTimer()
        }
    }
    //停止拖动后会重新开始自动滚动
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        if rollingEnable {
            startTimer()
        }
        //在滚动的减速动画没有结束前继续拖动时,因为还没有更新所以边缘是空白,所以在结束拖动时就锁住scrollView,在动画结束后解锁,就可以避免这个问题
        scrollView.isScrollEnabled = false
    }
    //拖动scrollView时当减速动画结束时调用
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        scrollView.isScrollEnabled = true
        if scrollView.contentOffset.x == 0 {                                    //向前滑动
            if currentPage == 0 {
                currentPage = images.count-1
            } else {
                currentPage -= 1
            }
        } else if scrollView.contentOffset.x == 2 * self.frame.size.width {     //向后滑动
            currentPage = (currentPage+1) % images.count
        }
    }
    
    deinit {
        print("deinit")
    }
}

