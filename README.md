# Objectives:

1. Dry out repetitive view code with partials.
2. Use partials with a collections of models.
3. Pass local variables into a partial.

# Change how we show color names

Currently, we just show the name of the color ("Aquamarine"). We'd like to
change the view to show the name of the color, and its hex color code in parentheses
("Aquamarine (#78DBE2)").

Notice that there is some duplicated code in the views. Move that code into
a partial, so you only have to change how the color name is drawn in one place.

`rake test` runs the test. Make them pass.

# Simplify the rendering of a collection with partials.

If you've named your partials along Rails conventions, you can simplify the rendering of
a list of colors.

This is a refactor, so there are no new tests for it. However, the old tests should
continue to pass.

# Change how we show color names, but only sometimes.

Ok, it turns out that the hex colors are a bit overwhelming in the `list` view.
Pass in a local variable to your partial that controls whether the hex color code
is rendered, and make it only show up on the single color view.

You'll need to change the tests to reflect the new requirements.