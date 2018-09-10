# ascii-digits
This project displays ascii-styled numbers. It is written in `Ruby` and can be executed using 
local executables (v5.2.0) or `Docker` as explained below.

## Running with Ruby

Directly from your termnal, enter the following commands to run the script:

```bash
ruby main.rb <number>
```

where `<number>` should be an integer. You'll be notified if it's not.

## Running with Docker

If you don't have `Ruby` installed on your conputer, a `Docker` environement can be provided 
with the following commands:

```bash
docker build -t ascii-digits-app .
docker run -it ascii-digits-app
```

At this point, you should get the bash prompt of the running docker instance. Just enter the ruby 
commands as explained above.

## Running tests

You can run tests with the following command:

```
rspec src
```
