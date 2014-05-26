#How to submit a blog post

Anyone can submit any topics, videos or blog posts to Kodermine. Kodermine's content heavily depends on the Kodermine community. All our blog posts are created by our Kodermine members.

This is a guide on how **YOU** can start to contribute and make Kodermine more awesome!

## Requirements

 - Github Account
 - Text Editor/Markdown Editor (optional)
 - Basic knowledge of Git (optional), watch our tutorial [here](http://kodermine.com/git/2014/05/18/git_basics/) to get started
 - Basic knowledge HTML/Markdown
 - Basic knowledge about Jekyll (optional)

## Directory Structure

We use Jekyll for our blog, but it's not really mandatory to know what Jekyll is or how Jekyll works.

In our Github Repo there's a `master` branch and there's a `jekyll` branch. The `master` branch contains all the static files and assets and the `jekyll` branch contains all the configurations, templates and also blog posts.

The branch that gets published to our website is the `master` branch.

[Learn more about publishing on Github](https://pages.github.com/).

When submitting blog posts, we're going to be making pull-requests to the jekyll branch so that it can be generated and published.

Jekyll Branch Directory Structure

```
 - _assets (contains all the asset files)
  - javascripts (javascript fiiles)
  - stylesheets (stylesheet files)
 - _includes (included files)
 - _layouts (layout templates)
 - _plugins (jekyll plugins)
 - _posts (where the blog posts are, this is where we're gonna spend most of our time on)
 - _site (the generated static site)
 - images
 ```

## Submitting a Post through Github

Go to the [Github repo](https://github.com/Kodermine/kodermine.github.io) for the blog.

- To submit a blog post, we have to switch to the `jekyll` branch

  ![switching_branches](https://cloud.githubusercontent.com/assets/2405577/3021980/307150f8-dfbe-11e3-830d-e7f23b493bf4.gif)

- After switching branches, we should go to the `_posts` folder. The `_posts` folder contains all the blog posts on our Kodermine Blog.

  ![go_to_posts](https://cloud.githubusercontent.com/assets/2405577/3022064/1f99257e-dfc0-11e3-86af-1ea8d167f57c.gif)

- Create a new post by clicking the new file icon, and name it with the current date and the title of the post with the `.md` (markdown) file extension. E.g.

  `2014-05-20-hello_world.md`

  The title is important because it's going to be parsed as the permalink of the post.

  ![create_new_post](https://cloud.githubusercontent.com/assets/2405577/3022108/32136ec0-dfc1-11e3-86b8-68ac7ef2c2f0.gif)

- If you get to view some of the posts, you will notice that it has data on top of the file which looks like this.

```
---
layout: post

title: Title
subtitle: "Subtitle."
youtube: youtube_link
cover_image: cover_image
excerpt: "Insert excerpt here"
category: "category"

author:
  name: Your Name
  twitter: twitter_handle
  gplus: google_plus_id
  bio: title
  image: your_photo
---
```
These are used by our templates to display information about the author of the post.

### Post information

`title` - The title of the page (required)

`subtitle` - The text that appears below it inside a blog post (optional)

`youtube` - The embed link for the YouTube video (optional)

`cover_image` - A cover image for the blog post (optional)

`excerpt` - An excerpt of the text from the blog post written, this is used when the post is being displayed on the index page, and also used for SEO descriptions (required)

`category` - The category of the post - e.g. `ruby`, `git`, `tutorial`. It could one or many. (optional)

### Author information

`name` - Your name (required)

`twitter` - Your twitter handle (optional)

`gplus` - Your Google+ ID (optional)

`bio` - Your title E.g `guru`, `co-founder`

Example posts:

[Post with Video](http://kodermine.com/git/2014/05/19/cool_stuff_with_git/)

[Post with Cover Image](http://kodermine.com/ruby/2014/04/27/intro_to_ruby/)

Go ahead and copy the header information to the text box and fill in your information.

- After filling in your information, you can start writing your blog post. You can use HTML or Markdown to add headers, images, and code excerpts to your page. I prefer that we use markdown for most of the blog post, and only use HTML when it is really needed.

[Learn more about writting Markdown](http://markdowntutorial.com/)

You can now submit the post by clicking "Propose new file" at the bottom of the page. Make sure you fill in the appropriate description.

![submit_file](https://cloud.githubusercontent.com/assets/4141598/3022313/4851063e-dfc6-11e3-8fa3-899226695767.gif)

All blog posts submitted will go through a review process, we will make comments on the proposal that you've made to inform you if it has been accepted or declined.