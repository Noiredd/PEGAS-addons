## Contributing addons

### Implementation
Keep your addon in a single file, if possible.

It's good practice to define global variables `addonName` and `addonEnabled` at the beginning of the module.
**Always** define these prior to defininig functions and registering them.

Try to structure your addon file the following way:
* variable definitions,
* function definitions,
* hook registering.

Put your `.ks` file in `kOS/addons/` directory.

### Documentation
You don't have to write elaborate docs for your addon,
but it's good to attach at least a short note describing what it is and what it does
(preferably in Markdown (`.md`) format).

Put the documentation in `docs/` directory.
Make sure its name matches the `.ks` file.

### License
Each addon needs to have its individual license.
Include the license as a `.txt` file in `licenses/` directory.

Don't know what license to choose? Check [choosealicense.com](https://choosealicense.com/)

Don't care about licenses, just want to share your code?
Use MIT license.
You can [borrow mine](https://github.com/Noiredd/PEGAS/blob/master/LICENSE), just change the name and year ;)

### Commits & PRs
I assume you know how to _fork_ a repository, _commit_ changes, and _push_ them.

When creating your commit, please:
* extend the table in the README.md, adding your addon there
  * give your addon a short name
  * make sure the name links to the `.ks` file
  * add a very brief description
  * sign it - link to your GitHub handle is encouraged
  * include a link to the doc file and the license
* put all of the changes in a single commit.

When in doubt, you can always check the [commits](https://github.com/Noiredd/PEGAS-addons/commits/master) and see how others did it.

Once you get your code on your own fork of this repo, create a pull request (PR).
Give it a meaningful title and describe your addon -
it's okay to copy your documentation file here, or parts of.

I'll be accepting addons without any testing, provided all these guidelines are met.
