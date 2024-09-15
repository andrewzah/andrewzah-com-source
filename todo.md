## fixes
- fix /contact page + pages having metadata that aren't posts or reviews

## refactors
- nix layer caching, put caddy deps etc in a first layer

## features
- openring - https://git.sr.ht/~sircmpwn/openring
  - ex) bottom: https://blog.sergeantbiggs.net/posts/aerc-a-well-crafted-tui-for-email/

- investigate caching
  - granular webscraper caching: https://notes.neatnik.net/2024/08/fedicache ?

## reference
- series: https://digitaldrummerj.me/hugo-post-series/

##a archive
- feat: drew srchut's social ring program thingy
- https://nix.dev/guides/best-practices.html
- paper style design: https://tonyfinn.com/blog/nix-from-first-principles-flake-edition/nix-1-nix-guide-overview/
- sidebars? https://tonyfinn.com/blog/nix-from-first-principles-flake-edition/nix-6-nixpkgs-not-reinventing-the-wheel/
- homepage: https://xeiaso.net/
- photo attributions
- fix HR clutter and HR on non-post pages
- bug: fix LaTeX fonts for mathjax, https://wellquite.org/posts/latex_fonts_and_nixos/
- "relevant/similar posts", feat: https://brainbaking.com/post/2024/01/displaying-series-of-posts-in-hugo/
- ---------------------------------------------------------------------------
- xn--1-kmb.com / https://1λ.com/
- https://ludwigabap.bearblog.dev/
- https://kennethnym.com/blog/three-types-of-figures-in-your-life/
- https://ana.sh/
- https://yacine.ca/
- https://echo4eva.com/
-
- ! https://gwern.net/me
- ! https://evalapply.org/
- https://josh.works/full-copy-of-1922-atlanta-zone-plan
- https://lars.hupel.info/topics/crdt/01-intro/
  https://lars.hupel.info/
- https://enriquesantos.net/
- https://edolstra.github.io/
- https://danilafe.com/blog/blog_microfeatures/
  https://danilafe.com/blog/agda_hugo/
- https://reasonablypolymorphic.com/
- https://two-wrongs.com/what-is-probability.html
- https://blog.yoshuawuyts.com/in-place-construction-seems-surprisingly-simple/
- features:
  - ! rss feed by tag, by category
    - this is how I can finally decide how to categorize and tag posts
  - sticky table of contents: https://css-tricks.com/sticky-table-of-contents-with-scrolling-active-states/
  - text: standing invitation
  - make hyperlinks stand out, in a clarifying way
  - make headings clickable, link to that section (icon after the text ?)
  - stylize links nicely
    https://gohugo.io/content-management/markdown-attributes/#overview
  - sidenotes:
    - https://gwern.net/sidenote
    - https://edwardtufte.github.io/tufte-css/
  - automatically putting links to prev/next article in series?
    https://discourse.gohugo.io/t/previous-in-series-and-next-in-series-links/2654/7
  - Character dialogues?
  - code blocks: display file name, relevant line info above
    - clickable file links? (if relevant)
  - openring integration: https://git.sr.ht/~sircmpwn/openring
  - text after each post "email me about blah blah"
  - blog comments via ssh
    https://blog.haschek.at/2023/ssh-based-comment-system.html
    - special logo/color for users with verified ssh keys?
    - approve/deny via telegram / discord bot ?
  - a collection of these sorts of features: https://www.swyx.io/the-surprisingly-high-table-stakes-of-modern-blogs
