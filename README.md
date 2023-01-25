# ScrollViewDemonstration

With this mini project, I would like to demonstrate three things:
1. It's possible to add any view you want directly in the scrollView, without creating a contentView.
2. As a consequence of #1, it's possible to use multiple views as your contentView.
3. It's possible to use UIStackView as the contentView without knowing the exact height of its elements. It will stretch according to its content.

## Important Lesson
Always set the contentView's width.
It doesn't matter if you had set up leading and trailing constraints. The contentView won't be centered, neither it will have the correct size unless you set the width constraint.
