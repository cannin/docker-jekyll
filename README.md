# Instructions

```
docker build -t cannin/jekyll:github-pages-3.5.1 .
docker run --rm -i -p 4000:4000 -v "$PWD:/jekyll" --name jekyll -t cannin/jekyll
```
