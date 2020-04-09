# 🍯 HoneyKit

`HoneyKit` is extensions for solve common tasks in iOS development

## 🛠 Install

#### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

For integrate `HoneyKit` into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '11.0'
use_frameworks!

target '<Your Target Name>' do
pod 'HoneyKit', '~> 0.0.1'
end
```

Then, run the following terminal command in project directory:

```bash
$ pod install
```

## ⚡️ List of extensions

#### Foundation

##### Collection
* [IsNotEmpty](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/Foundation/Collection/Collection%2BIsNotEmpty.swift). Indicating whether the collection is not empty.
* [SafeSubscript](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/Foundation/Collection/Collection%2BSafeSubscript.swift). Returns the element at the specified index if it is within bounds, otherwise nil.

##### Date
* [DayStep](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/Foundation/Date/Date%2BDayStep.swift). Returns date after adding step to exists date based on direction.
* [DaysMonth](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/Foundation/Date/Date%2BDaysMonth.swift). Returns start/end day of month.
* [DaysWeek](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/Foundation/Date/Date%2BDaysWeek.swift). Returns start/end day of week.

##### String 
* [HTML](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/Foundation/String/String%2BHTML.swift). Converts html to an NSAttributedString with system iOS font.
* [Localized](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/Foundation/String/String%2BLocalized.swift). Returns an localized version of the string.

#### UIKit

##### UIAlertController
* [InitWithButtons](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/UIKit/UIAlertController/UIAlertController%2BInitWithButtons.swift). Creates alert with action buttons.

##### UIButton
* [ActivityIndicator](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/UIKit/UIButton/UIButton%2BActivityIndicator.swift). Shows/hides activity indicator in button for indicate loading process.
* [SetTitle](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/UIKit/UIButton/UIButton%2BSetTitle.swift). Sets title with animation.

##### UICollectionView
* [RegisterCell](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/UIKit/UICollectionView/UICollectionView%2BRegisterCell.swift). Registers a cell by class or nib for use in creating new collection cells.
* [ReusableCell](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/UIKit/UICollectionView/UICollectionView%2BReusableCell.swift). Returns a reusable collection view cell object by class with index path.

##### UIColor
* [Hex](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/UIKit/UIColor/UIColor%2BHex.swift). Conveniece init color from hex string.

##### UIView
* [ActivityIndicator](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/UIKit/UIView/UIView%2BActivityIndicator.swift). Adds/hides container with activity indicator in view.
* [AddSubview](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/UIKit/UIView/UIView%2BAddSubview.swift). Adds view with all sides constraints for filling into superview.
* [HideKeyboard](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/UIKit/UIView/UIView%2BHideKeyboard.swift). Hides keyboard if tap on current view's area.
* [InitFromXib](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/UIKit/UIView/UIView%2BInitFromXib.swift). Instantiates view from xib.
* [RemoveSubview](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/UIKit/UIView/UIView%2BRemoveSubview.swift). Removes all subviews from current view.
* [Shadow](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/UIKit/UIView/UIView%2BShadow.swift). Drops shadow from the current view.

##### UITableView
* [RegisterCell](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/UIKit/UITableView/UITableView%2BRegisterCell.swift). Registers a cell by class or nib for use in creating new table cells.
* [ReusableCell](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/UIKit/UITableView/UITableView%2BReusableCell.swift). Returns a reusable table view cell object by class.

##### UIViewController
* [Child](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/UIKit/UIViewController/UIViewController%2BChild.swift). Handles (adds, removes and switches) child of the current view controller.

## 🖥 Contributing

Your contributions are always welcome! For add’s new extension submit a pull request. See [CONTRIBUTING.md](https://github.com/sqrline/HoneyKit/blob/master/CONTRIBUTING.md) for guidelines.

## 🖖 Authors

#### Vladimir Pchelyakov 🇷🇺
* Email: [v.pchelyakov@yandex.ru](mailto:v.pchelyakov@yandex.ru)
* Telegram: [@BastienBalla](https://t.me/BastienBalla)

#### Aleksey Pleshkov 🇷🇺
* Website: [alekseypleshkov.ru](https://alekseypleshkov.ru)
* Email: [im@alekseypleshkov.ru](mailto:im@alekseypleshkov.ru)
* Telegram: [@AlekseyPleshkov](https://t.me/AlekseyPleshkov)

## ©️ License

`HoneyKit` is released under the MIT license. In short, it's royalty-free but you must keep the copyright notice in your code or software distribution.

