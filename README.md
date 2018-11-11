# Dungeons and Buddies
**Dugeons and Buddies** is a MUD-based online game that supports playing with multiple players in real time. For the current status of the project, see: https://github.com/codebuddies/dungeonbuddies/projects/2

## Contribution Guidelines
### Getting Started
**Prerequisites**

This project assumes that you have Docker installed. To set up Docker, see their [getting started guide](https://www.docker.com/get-started).

Clone the project to your local machine.
```bash
git clone https://github.com/codebuddies/dungeonbuddies.git
```

Make sure you're in the `develop` branch as this is our default branch.
```bash
git checkout develop
```

If you're launching the project for the very first time, build the Docker containers.
```bash
docker-compose build && docker-compose up
```

This should build and launch the project using Docker. Once it is finished, your local version of the app should be accessible by going to `localhost:3000` in your browser. You can see that this works if you see a Welcome screen.

**Docker Notes**

To stop Docker, use `ctrl + c` on the terminal to stop displaying the logs and run `docker-compose stop` to stop all containers.

To start Docker up again (as long as you have not deleted your containers), run `docker-compose start`.

Lastly, to delete your containers, run `docker-compose down`. Note that you would need to run `docker-compose up` again to rebuild and start the app if you remove your containers.

For additional commands, run `docker-compose` in your terminal.

_Note: you may find that the rails server hasn't been stopped, and trying to run `docker-compose up` will not restart the web server. If this is the case, delete the server process with `rm ./tmp/pids/server.pid`_

### Git and Github Guidelines
**Branching**

The `master` branch is saved for deploying releases to production.

`develop` is set as our default development branch. When working on an issue, for the most part, you'll be branching off of `develop`. For example:
```bash
# Tip: In order to keep focus on what your goals are for the branch, name it as
# an activity of what you are working on.
git checkout -b add-user-authentication develop
```

**A Note on Commit Messages**

Make sure to commit often and write your commit messages in present tense as notes to others (and yourself) of the changes that is happening.
```bash
# The first line should be a generalized statement of what you're committing.
Set up User model for authentication
#
# The second and after lines should be more of a detailed statement of
# what you are changing in your commit.
Create `User` model.
Add validations to email attributes.
```

**Submitting PRs**

When you are ready for a review or have questions, feel free to use push your code back to the repository to [create a Pull Request](https://github.com/codebuddies/dungeonbuddies/compare).

The `base` branch should be whatever branch you want your branch to merge into. Typically, the `compare` option should be selected with your working branch.

Title your PR to the generalized topic of your work. In the body, reference any issues it's related to and write a clear description of your work.

Try to seek someone to review your code.

Assign the PR to yourself and others who contributed to your code.

Label accordingly:
+ `in-progress` is for PRs that are not merge-ready.
+ `feedback wanted` to let others know you're open to feedback and a review
+ `ready for review` to let others know that you're ready for an official code review
+ `ready to merge` to let people know that this PR is good to merge with it's parent branch.

## License
Dungeons and Buddies is released under the [MIT License](https://github.com/codebuddies/dungeonbuddies/blob/develop/LICENSE).
