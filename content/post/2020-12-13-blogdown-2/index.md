---
title: blogdownはじめました。2
author: ~
date: '2020-12-13'
slug: blogdown-2
categories: ["R"]
tags: ["R", "blogdown"]
---



## themeを選ぶ

blogdownをはじめたら、次はthemeをえらぶ。  
あんまり説明されてないけど、hugoのthemeがblogdownに対応しているかというとそうでもなくて、だいたい運が悪いとここで詰みます。  
簡単にすませるとしたら、先人がつかってるthemeをそのまま使うといい。  
ちなみに、このblogのthemeは**stack**を使っているけど、blogdownに完全に対応してるわけじゃないので少し使い勝手がわるい。
たぶん、そのうち、hugo単体に切り替えていくと思う。そのほうがいいし、rmarkdownも普通に使えるからね。(工夫が必要になるけど)

* [https://themes.gohugo.io/](themeを選ぶ場合はこちら)


```r
# このサイトのtheme
blogdown::install_theme("CaiJimmy/hugo-theme-stack")
```

## configをいじる

次は、config.tomlをいじる必要がある。

config.tomlに関しては、他のサイトを見てもらったほうがいいと思う。  
というのも、このサイトで使ってるthemeは*config.yaml*だし、記述方法が違う。githubを参照してもらってもいいけど、あまり面倒なことをしたくないなら、他のサイトを参考にしたほうが圧倒的に良い。

### 最低限いじった方がいいもの

* baseurl
* languageCode
* title
* author
* DefaultcontentLanguage
* publishDir
* ignoreFiles
* relativeurls
* hasCJKLanguage

## netlify.tomlをいじる

これは、必要なのかしらんけど、netlify考えてる人はいじろう。

```toml

publish = "docs"

```

---

blogdownのめんどくさいところは、これで全部だと思う。  
あとは、まあうまくやってくれとしか言いようがない。  

どうであれ、楽して記事をかけるのは悦びだと思うぞ。
