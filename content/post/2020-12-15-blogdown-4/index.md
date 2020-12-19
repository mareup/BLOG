---
title: blogdownはじめました。4
author: ~
date: '2020-12-17'
slug: blogdown-4
categories: ["R"]
tags: ["R", "blogdown"]
---



## 記事を公開する

いやー、ここまでくるまで長かった。こっからも長いのよ。


```r
# blogを見てみる
serve_site()

# blogを見てみるのをやめる。
stop_server()
```

これで、うまくいくんだけどさあ、、、ほんとは、、、  
残念な話、rmdつかっちゃうとknitする前だと、勝手にhtmlをレンダリングしちゃうわけで、そうなるとなぜかcssがうまくよみこまれないのよ。
~~これ、だれも話してないの。わかるわけなくない？~~ ← どーも、serve_site使いながらRmdの編集をするとだめっぽいな。

とりあえず、ここまでは良しとしよう。(暴論)

## 記事をビルドする。

さっきのは、試しに見てみる的なやつ。
今度のは、ちゃんとブログをつくるやつ。


```r
build_site()
```

これで、一通りOKね。

あとは、githubうんぬんは、個人でやってくれ。説明したいけど、これ、netlifyやし、gh-pagesちゃうし。

## おまけ

* なんか、気づいたんだけど、rstudio server のアップデートにより、タブやwindowの挙動が変わった模様。
* あと、毎回、setupチャンク書くのめんどい。
* わいの[github](https://github.com/mareup/BLOG)の方に、setup.Rってあるんだけど、これの`change_name()`と`rmd_to_md()`って関数をパス読み替えて使えば便利やで。

---

わからんかったら、twitterで絡んで。DMもあいてるんでどぞ。
