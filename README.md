## Erlang/OTP docker images

Uses [packages](https://packages.erlang-solutions.com/erlang/) from Erlang Solutions.

### Example usage

For latest:

    docker pull adbl/erlang

For specific release:

    docker run ... adbl/erlang:<tag>

Or use in a `Dockerfile`:

    FROM adbl/erlang:<tag>
    ...

### Available tags on docker index:

`latest`
`r16b03-1`: esl-erlang (1:16.b.3-1), erlang-base-hipe (1:16.b.3-3)
`r15b03-1`: esl-erlang (1:15.b.3-2~ubuntu~precise)
