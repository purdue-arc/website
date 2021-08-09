# website

## Quick Start

1. [Install Hugo](https://gohugo.io/getting-started/quick-start/)
2. Create a new post
```
hugo new post/my-first-post.md 
```
3. Preview your changes locally 
```
hugo server -D 
```

## General Info 

- Pinning blogs on front page: add `pin: true` in the front matter

### Add a member
1. Add an entry in `data/members.yml`
```
  - name: Joe Shmoe
    image: joe.png
    major: Mechanical Engineering
    year: 2022

```
2. Add your pfp in `static/images/members`, make sure the file name matches the one you put in members.yml

### Add a sponsor
Same process as adding a member, but use sponsors.yml

### Add a blog author
See [these instructions](https://github.com/forestryio/hugo-theme-novela#creating-authors)

## Info for more technical contribution 

- All HTML/Hugo code for main pages are in `layouts` and sections of the layouts are in `partials`.
- Edit the SCSS/JS in `themes/novela/assets`
