/**
 * Copyright (c) 2016 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import UIKit

struct AppConstants {

  static var bigLabelColor: UIColor { return RCValues.sharedInstance.color(forKey: .bigLabelColor) }
  static var appPrimaryColor: UIColor { return RCValues.sharedInstance.color(forKey: .appPrimaryColor) }
  static var navBarBackground: UIColor { return RCValues.sharedInstance.color(forKey: .navBarBackground) }
  static var navTintColor: UIColor { return RCValues.sharedInstance.color(forKey: .navTintColor) }
  static var detailTitleColor: UIColor { return RCValues.sharedInstance.color(forKey: .detailTitleColor) }
  static var detailInfoColor: UIColor { return RCValues.sharedInstance.color(forKey: .detailInfoColor) }
  static var subscribeBannerText: String { return RCValues.sharedInstance.string(forKey: .subscribeBannerText) }
  static var subscribeBannerButton: String { return RCValues.sharedInstance.string(forKey: .subscribeBannerButton) }
  static var subscribeVCText: String { return RCValues.sharedInstance.string(forKey: .subscribeVCText) }
  static var subscribeVCButton: String { return RCValues.sharedInstance.string(forKey: .subscribeVCButton) }
  static var shouldWeIncludePluto: Bool { return RCValues.sharedInstance.bool(forKey: .shouldWeIncludePluto) }
  static var planetImageScaleFactor: Double { return RCValues.sharedInstance.double(forKey: .planetImageScaleFactor) }
}
