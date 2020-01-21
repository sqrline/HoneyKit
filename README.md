# 🍯 HoneyKit

`HoneyKit` is extensions for solve common tasks in iOS development

## 🛠 Install

In process

## ⚡️ List of extensions

#### Foundation

##### Date 
* [DayStep](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/Foundation/Date/Date%2BDayStep.swift). Returns date after adding step to exists date based on direction.
* [DaysMonth](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/Foundation/Date/Date%2BDaysMonth.swift). Returns start/end day of month.
* [DaysWeek](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/Foundation/Date/Date%2BDaysWeek.swift). Returns start/end day of week.

#### UIKit

##### UIButton
* [SetTitle](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/UIKit/UIButton/UIButton%2BSetTitle.swift). Sets title with animation.

##### UICollectionView
* [RegisterCell](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/UIKit/UICollectionView/UICollectionView%2BRegisterCell.swift). Registers a cell by class or nib for use in creating new collection cells.
* [ReusableCell](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/UIKit/UICollectionView/UICollectionView%2BReusableCell.swift). Returns a reusable collection view cell object by class with index path.

##### UIColor
* [Hex](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/UIKit/UIColor/UIColor%2BHex.swift). Conveniece init color from hex string.

##### UIView
* [ActivityIndicator](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/UIKit/UIView/UIView%2BActivityIndicator.swift). Adds/hides container with activity indicator in view.
* [AddSubview](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/UIKit/UIView/UIView%2BAddSubview.swift). Adds view with all sides constraints for filling into superview
* [HideKeyboard](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/UIKit/UIView/UIView%2BHideKeyboard.swift). Hides keyboard if tap on current view's area.

##### UITableView
* [RegisterCell](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/UIKit/UITableView/UITableView%2BRegisterCell.swift). Registers a cell by class or nib for use in creating new table cells.
* [ReusableCell](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/UIKit/UITableView/UITableView%2BReusableCell.swift). Returns a reusable table view cell object by class.

##### UIViewController
* [Child](https://github.com/sqrline/HoneyKit/blob/master/HoneyKit/UIKit/UIViewController/UIViewController%2BChild.swift). Handles (adds, removes and switches) child of the current view controller.

## 🖥 Contributing

* Make sure no similar extension already exist in HoneyKit.
* A pull request should only add one extension at a time.
* Do not use an existing extension inside another HoneyKit extension.
* Code should follow [Swift Design Guidelines](https://swift.org/documentation/api-design-guidelines/)
* Always declare extensions as public.
* All extensions should be tested.
* The file name should be based on the type that extends + added functionality. (Example: UIViewController+ShowAlert.swift)
* All extensions should be well documented.
```
// MARK: - Properties

/// <Description>
///
/// # Example
/// ```
/// <Example code>
/// ```

// MARK: - Methods

/// <Description>
///
/// # Example
/// ```
/// <Example code>
/// ```
/// - Parameters:
///   - <Paramer>: <Description>
/// - Returns: <Description>
```

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

