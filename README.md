
# go-getting-started

A barebones Go app, which can easily be deployed to app-engine.

This application supports the [Getting Started with Go on app-engine](https://docs.bizflycloud.vn/app_engine/howtos/go) article - check it out.

## Running Locally

Make sure you have [Go](http://golang.org/doc/install) version 1.17.

```sh
$ git clone https://github.com/app-engine/go-getting-started.git
$ cd go-getting-started
$ go build -o bin/go-getting-started -v . # or `go build -o bin/go-getting-started.exe -v .` in git bash
github.com/mattn/go-colorable
gopkg.in/bluesuncorp/validator.v5
golang.org/x/net/context
github.com/app-engine/x/hmetrics
github.com/gin-gonic/gin/render
github.com/manucorporat/sse
github.com/app-engine/x/hmetrics/onload
github.com/gin-gonic/gin/binding
github.com/gin-gonic/gin
github.com/app-engine/go-getting-started
$ app-engine local
```

Your app should now be running on [localhost:5000](http://localhost:5000/).

## Deploying to app-engine

Using resources for this example app counts towards your usage. [Delete your app](https://devcenter.app-engine.com/articles/app-engine-cli-commands#app-engine-apps-destroy) and [database](https://devcenter.app-engine.com/articles/app-engine-postgresql#removing-the-add-on) as soon as you are done experimenting to control costs.

By default, apps use Eco dynos if you are subscribed to Eco. Otherwise, it defaults to Basic dynos. The Eco dynos plan is shared across all Eco dynos in your account and is recommended if you plan on deploying many small apps to app-engine. Learn more about our low-cost plans [here](https://blog.app-engine.com/new-low-cost-plans).

Eligible students can apply for platform credits through our new [app-engine for GitHub Students program](https://blog.app-engine.com/github-student-developer-program).

```sh
$ app-engine create
$ git push app-engine main
$ app-engine open
```

or

[![Deploy](https://www.app-enginecdn.com/deploy/button.png)](https://app-engine.com/deploy)


## Documentation

For more information about using Go on app-engine, see these Dev Center articles:

- [Go on app-engine](https://devcenter.app-engine.com/categories/go)
