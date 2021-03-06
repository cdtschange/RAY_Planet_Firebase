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

class PlanetDetailViewController: UIViewController {

  // MARK: - IBOutlets
  @IBOutlet weak var planetNameLabel: UILabel!
  @IBOutlet weak var planetImage: UIImageView!
  @IBOutlet weak var yearLengthLabel: UILabel!
  @IBOutlet weak var massTitle: UILabel!
  @IBOutlet weak var yearTitle: UILabel!
  @IBOutlet weak var funFactTitle: UILabel!
  @IBOutlet weak var massLabel: UILabel!
  @IBOutlet weak var funFactLabel: UILabel!
  @IBOutlet weak var imageCreditLabel: UILabel!

  // MARK: - Properties
  var planet: Planet?

  // MARK: - View Life Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    updateLabelColors()
    updateLookForPlanet()
  }
}

// MARK: - FilePrivate
fileprivate extension PlanetDetailViewController {

  func updateLabelColors() {
    for case let nextLabel? in [yearTitle, massTitle, funFactTitle] {
      nextLabel.textColor = AppConstants.appPrimaryColor
    }

    for case let nextLabel? in [yearLengthLabel, massLabel, funFactLabel] {
      nextLabel.textColor = AppConstants.detailInfoColor
    }

    planetNameLabel.textColor = AppConstants.detailTitleColor
  }

  func updateLookForPlanet() {
    guard let planet = planet else { return }

    planetNameLabel.text = planet.name
    planetImage.image = planet.image
    yearLengthLabel.text = String(planet.yearInDays)
    massLabel.text = String(planet.massInEarths)
    funFactLabel.text = planet.funFact
    imageCreditLabel.text = "Image credit: \(planet.imageCredit)"
  }
}
