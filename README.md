# Gym Shark Tech Test

## Overview
This project is a simple Modularized MVVM iOS for displaying gym wear products supplied by an API. The app is modularised using SPM, which offers several advantages:

- **Isolation:** Developers can work on modules independently with minimal merge conflicts.
- **SwiftUI Previews:** Facilitates efficient use of SwiftUI previews for UI development.
- **Dependency Management:** Provides clear management of dependency graph.

## Dependencies
The app utilizes Point-Free's dependency manager, leveraging the environmental pattern. This approach offers the following benefits:

- **Cleanliness:** Results in cleaner codebase.
- **SwiftUI similarities (e.g macros):** Fits seamlessly with SwiftUI.
- **Boilerplate Reduction:** Removes a significant amount of boilerplate code.
- **Testing:** Simplifies testing process.

## Testing
Testing is implemented for:

- **ProductFeatureListViewModel logic.**
- **Currency formatter.**

## Navigation
SwiftUI navigation presents some challenges. It’s not ideal to have state for whether the sheet is showing and what it should show, it would be more concise to just use an optional item to decide whether and what to show on the sheet. Alas SwiftUIs tools weren’t designed this way, so I thought about introducing another third party, but thought it best not to for this project.

## Issues and To-Dos
- The price data seems strange as some items are 1000 and some 60, I worked on the assumption that these were supposed to be delivered in minor units, so some of the prices may look strange.
- If the product was to have an offline layer I would consider adding in a repo layer between the api client and the viewModel layer, to mediate between the database and the network.
