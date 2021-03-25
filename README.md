# Portfolio
The purpose of this project is to have one place to show my personal projects and can be viewed at [rlmoser.com](https://rlmoser.com/). While it may seem like overkill to use Rails for this static page website, I do have a few ideas that will require a backend in the future.

## SCSS Organization
I recently became aware of different ways to organize CSS. I decided to utilize the principles of [Inverted Triangle CSS](https://www.xfive.co/blog/itcss-scalable-maintainable-css-architecture/) for this project. I organized my SCSS into 4 different levels, which goes from broad to very specific rules.
* **Settings** contains the site-wide variables and mixins.
* **Generic** contains the CSS reset file.
* **Elements** contains the site-wide styling for basic HTML elements. I organized them into two files for layout and typography.
* **Components** contains the most specific rules. I organized them into a file for each individual component.

## Future Plans
I do not want to state any specifics, but I plan to build an app that will help my family select a location for our upcoming vacation.
