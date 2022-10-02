# Bottom Navigation Bar with Nested Routes: GoRouter vs Beamer

This is an example app showing how to implement bottom navigation with nested routes using [GoRouter](https://pub.dev/packages/go_router) and [Beamer](https://pub.dev/packages/beamer):

> **Note**
> Preserve the state of routes: this is not yet implemented as of GoRouter 5.0 (see issue #99124 and the corresponding PR #2650), but works just fine if we use Beamer along with an IndexedStack widget.
> 
![Nested Bottom Navigation Preview](/.github/images/nested-navigation-with-state.gif)

It is based on this article on my website:

- [Flutter Bottom Navigation Bar with Nested Routes using GoRouter vs Beamer: A Comparison](https://codewithandrea.com/articles/flutter-bottom-navigation-bar-nested-routes-gorouter-beamer)

To see how the example app is implemented using the two packages, check these folders:

- [GoRouter example](examples/gorouter)
- [Beamer example](examples/beamer)

### [LICENSE: MIT](LICENSE.md)
