# Amarna in Docker

Simple docker container to run Amarna in docker.

### What is Amarna?

[Amarna](https://github.com/crytic/amarna) is a static-analyzer and linter for the Cairo programming language.
Developed by [Crytic](https://github.com/crytic), [Trail of Bits](https://www.trailofbits.com/). Read more about Amarna here: https://blog.trailofbits.com/2022/04/20/amarna-static-analysis-for-cairo-programs/

# How to use

1. Build the image.

```sh
docker build . -t  amarna:0.1.0
```

2.  Run the container from image.

    a. Run Amarna for current files and output to `out.sarif` file.

        ```sh
        docker run --rm -it -v $(pwd):/src amarna:0.1.0
        #                   --------------
        #                   + Adds current directory as volume
        ```

    b. Run concurrent Amarna container to run amarna with more args and/or faster frequent runs.

        ```sh
        docker run --rm -it -v $(pwd):/src/ --entrypoint bash amarna:0.1.0
        #                                   -----------------
        #                                   + Bash to run your commands
        ```
