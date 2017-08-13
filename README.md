# Instructions

```
docker build -t cannin/jekyll:github-pages-3.5.1 .
docker rm -f jekyll; docker run --rm -i -p 4000:4000 -v "$PWD:/jekyll" --name jekyll -t cannin/jekyll:github-pages-3.5.1 .

docker rm -f j2; docker run --name j2 -p 8081:8080 -v "$PWD:/src" -w /src -t cannin/nodejs-http-server
```
