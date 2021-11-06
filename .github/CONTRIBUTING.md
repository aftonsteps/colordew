# Information and Guidelines for Contributing to colordew

There are many ways to contribute to this package, including technical and non-technical contributions. Every little bit helps and is appreciated!

## Adding a Palette
We aim to have palettes for a variety of seasons, characters, locations, and holidays. If you would like to contribute a palette, see the open [Issues](https://github.com/aftonsteps/colordew/issues), find one that is tagged as "Palette Wanted," and assign a palette to yourself.

If a palette is already assigned to someone else, please do not work it unless you have discussed collaborating.

Please do not assign yourself multiple open palette issues at once, in order to give other a chance to contribute (assigning oneself multiple bug fixes and other types of issues is totally fine and welcome, however!). 

If you think of a palette that is missing, feel free to open a new issue! Take a look at previous "Palette Wanted" issues for an idea of how to format them.

Once your palette is ready, make a PR. We will leave the PR open to feedback from the community for a minimum of two weeks. Feedback may include suggestions for remaining true to the game, as well as accessibility guidance. Please take the time to make sure your color palette is accessible (e.g. colorblind-friendly using a package such as `colorblindr`).

If a contributor claims multiple palettes or claims a palette without making progress in a reasonable length of time, the maintainers may reach out about freeing the issue for other contributors.

## Filing Issues
If you find a bug or have suggestions for improvements to a palette, please open an issue! Remember to keep communication friendly and professional -- we're all working together here!

If you find a bug, create a [reprex](https://reprex.tidyverse.org/) and include only the necessary code in your example.

If you have suggestions for improvements to a palette such as increasing the number of colors, being truer to the game, improving accessibility, etc., you should also open an issue -- and remember to keep things friendly, please.

## Answering Questions and Providing Feedback
Answering questions on open issues and providing constructive artistic feedback on PR's is greatly appreciated. In addition, small changes like fixing typos and improving readability in documentation are also appreciated. 

## PR's
If you would like to make a pull request, please first open an issue or assign an issue that is already open. Then, when your code is ready, make a pull request and tag that issue in your PR comments. You should make sure to follow these steps in assigning the issue and making a PR:

- Assign an open issue to yourself, or if the issue does not exist, then create it and assign it to yourself.
- Create a separate Git branch for each PR.
- Please follow the tidyverse [styleguide](http://style.tidyverse.org/).
- We use roxygent2 documentation, so if you add new docs, make sure to follow that convention, and do not directly modify any files in the `/man` folder.
- As much as possible, use applicable test coverage. You should make sure your palette is accessible, e.g. by using the `colorblindr` package.
- Make sure to add a new note to the `NEWS.md` file at the top that describes any user-facing changes. Make sure to include your GitHub username, and links to the issue(s) and PR(s).
