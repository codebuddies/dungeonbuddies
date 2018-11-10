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
