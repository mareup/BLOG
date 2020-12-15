---
title: 'blogdownはじめました。1'
author: ~
date: '2020-12-12'
slug: '20201212'
categories: ["R"]
tags: ["R", "blogdown"]
---




# blogdownについて

そうたいした内容ではないですが、このブログも**blogdown**を使っているので、軽く説明してみようかなと。

まず、blogdownというのはhugoという静的ジェネレータのrラッパーですね。はい。  
ぶっちゃけ、名前通りブログをつくってくれるbookdownとかrmarkdown的なものと思ってればいいかと。  
go言語で作られてる。

## install


```r
remotes::install_github("rstudio/blogdown")
```

---

hugoも入れるんだぜい。


```r
blogdown::install_hugo()
```

ここまですすめたら、スタート地点にたったも同じ。

この段階で、libstdとかのリンカでエラー出たら、gccをバージョンアップするか個別にソースをもってきてビルドし直すしかない。  
すごいめんどいから、おすすめしない。  
たぶん、vagrantだとこの時点で詰む。

---

今日はここらへんで。  
こんな感じでゆるくやってくので。
