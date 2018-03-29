import UIKit

public class IntroPageViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    convenience init() {
        self.init(transitionStyle: .scroll, navigationOrientation: .horizontal)
    }
    
    var pages: [UIViewController] = [UIViewController]()
    let pageControl: UIPageControl = UIPageControl()
//    var colors: [UIColor] = {
//        return self.pages.map { $0.backgroundColor }
//    }()
    var backgroundColors: [UIColor] = []
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        self.delegate = self
        
        let initialPage = 0
        let pageOne = BirthdayViewController()
        let pageTwo = TennisBallViewController()
        let pageThree = NapViewController()
        let pageFour = BathViewController()
        let pageFive = EatingViewController()
        let pageSix = NightViewController()
        
        self.pages.append(pageOne)
        self.pages.append(pageTwo)
        self.pages.append(pageThree)
        self.pages.append(pageFour)
        self.pages.append(pageFive)
        self.pages.append(pageSix)
        
        self.backgroundColors.append(pageOne.backgroundColor)
        self.backgroundColors.append(pageTwo.backgroundColor)
        self.backgroundColors.append(pageThree.backgroundColor)
        self.backgroundColors.append(pageFour.backgroundColor)
        self.backgroundColors.append(pageFive.backgroundColor)
        self.backgroundColors.append(pageSix.backgroundColor)
        
        self.setViewControllers([self.pages[initialPage]], direction: .forward, animated: true)
        self.view.backgroundColor = pageOne.backgroundColor

        self.setPageControl()
        
        let scrollView = view.subviews.filter { $0 is UIScrollView }.first as! UIScrollView
        scrollView.delegate = self

    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        if let viewControllerIndex = self.pages.index(of: viewController) {
            if viewControllerIndex == 0 {
                return nil
            } else {
                // go to previous page in array
                let viewController = self.pages[viewControllerIndex - 1]
                return viewController
            }
        }
        return nil
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {

        if let viewControllerIndex = self.pages.index(of: viewController) {
            if viewControllerIndex < self.pages.count - 1 {
                // go to next page in array
                let viewController = self.pages[viewControllerIndex + 1]
                return viewController
            } else {
                return nil
            }
        }
        return nil
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        
        // set the pageControl.currentPage to the index of the current viewController in pages
        if let viewControllers = pageViewController.viewControllers {
            
            if let viewControllerIndex = self.pages.index(of: viewControllers[0]) {
                self.pageControl.currentPage = viewControllerIndex
            }
        }
    }
    
    private func setPageControl() {
        self.pageControl.frame = CGRect()
        self.pageControl.currentPageIndicatorTintColor = UIColor(fromHex: 0xBAAD91)
        self.pageControl.pageIndicatorTintColor = UIColor(white: 1.0, alpha: 1/3)
        self.pageControl.numberOfPages = self.pages.count
        self.pageControl.currentPage = 0
        self.view.addSubview(self.pageControl)
        
        self.pageControl.translatesAutoresizingMaskIntoConstraints = false
        self.pageControl.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -5).isActive = true
        self.pageControl.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: -20).isActive = true
        self.pageControl.heightAnchor.constraint(equalToConstant: 20).isActive = true
        self.pageControl.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    }
    
}

// MARK: - Color fading transition between pages

extension IntroPageViewController: UIScrollViewDelegate {
    
    public func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
//        print("contentSize: \(scrollView.contentSize)")
//        print("contentOffset: \(scrollView.contentOffset)")
//        print("view frame: \(self.view.frame)")
//        print("view bounds: \(self.view.bounds)")
//        print("scroll frame: \(scrollView.frame)")
        
        let horizontalContentWidth: CGFloat = scrollView.frame.size.width
        let horizontalContentOffest: CGFloat = scrollView.contentOffset.x
        
        let percentageHorizontalOffset = (horizontalContentOffest - horizontalContentWidth) / horizontalContentWidth
        
        let currentPage: Int = pageControl.currentPage
        
        if percentageHorizontalOffset >= 0
        {
            guard currentPage != self.pages.count - 1 else { return }
            
            self.view.backgroundColor = fadeFromColor(fromColor: backgroundColors[currentPage], toColor: backgroundColors[currentPage + 1], withPercentage: percentageHorizontalOffset)
        }
        else
        {
            
            guard currentPage != 0 else { return }

            self.view.backgroundColor = fadeFromColor(fromColor: backgroundColors[currentPage], toColor: backgroundColors[currentPage - 1], withPercentage: abs(percentageHorizontalOffset))
        }
    }

    private func fadeFromColor(fromColor: UIColor, toColor: UIColor, withPercentage: CGFloat) -> UIColor {
        
        var fromRed: CGFloat = 0.0
        var fromGreen: CGFloat = 0.0
        var fromBlue: CGFloat = 0.0
        var fromAlpha: CGFloat = 0.0
        
        // Get the RGBA values from the colours
        fromColor.getRed(&fromRed, green: &fromGreen, blue: &fromBlue, alpha: &fromAlpha)
        
        var toRed: CGFloat = 0.0
        var toGreen: CGFloat = 0.0
        var toBlue: CGFloat = 0.0
        var toAlpha: CGFloat = 0.0
        
        toColor.getRed(&toRed, green: &toGreen, blue: &toBlue, alpha: &toAlpha)
        
        // Calculate the actual RGBA values of the fade colour
        let red = (toRed - fromRed) * withPercentage + fromRed;
        let green = (toGreen - fromGreen) * withPercentage + fromGreen;
        let blue = (toBlue - fromBlue) * withPercentage + fromBlue;
        let alpha = (toAlpha - fromAlpha) * withPercentage + fromAlpha;
        
        // Return the fade colour
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    
}
