# Expense_tracker

A new Flutter project.

### Widgets
- `Column` - It used to show items vertically.
    -   `mainAxisAlignment` - top to down in column
    - `crossAxisAlignment` - from left to right in column
    
- `Row` - It is used to order items horizontally.
- `Card` - This widget is used show some content.
    - It takes the width of the widget with largest width.
    - It takes the size of the child widget unless there is a parent with well defined size.

### intl
- `intl` - package used for date formatting(as of now i know).

### TextEditingController
- `Controller` can be used to get input from user without changing the widget to stateful widget.

### SingleChildScrollView
- Used to make our view scrollable.

### ListView
- It is a widget like `Container` with `SingleChildScrollView` but with infinite height.
- It need to be given fixed height or use builder to render when scrolled.
- `ListView(children:[])` will build scrollable list from children widgets.
    - A disadvantage is that it also keeps the widgets not visible in the screen in the memory.
    - Can be used for list with known items or less items.
- `ListView.builder()` will build scrollable list but only renders the widget which will be visible in the screen.
    - It takes a required parameter `itemBuilder`.
    - `itemCount` parameter lets the method to decide when to render and how many item to render.
    - Memory and performance optimized.
    - Can be used for list with many or unknow items.

### showModalBottomSheet
- This widget is used to show a modal from bottom.
- It needs context metadata and builder argument to which returns the widget to show in the modal.

### Theme
- `ThemeData` - Used to create the theme which can be used all over the app for coloring, text styling, etc.
- `primarySwatch` is different from `primaryColor` because it automatically creates shades of a color and uses it in many places.

### Output
![Output image](output.png)
