---
## Front matter
lang: ru-RU
title: "Лабораторная работа № 1"
subtitle: "Знакомство с Git"
author: "Сухарев Кирилл"

## Formatting
toc: false
slide_level: 2
theme: metropolis
header-includes: 
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
aspectratio: 43
section-titles: true
---

## Создание проекта

  - git init

  - git add PATH

  - git commit -m "Comment"

  - git status

  - git log


## Отменение изменений

  - git tag HASH

  - git checkout POINT

  - git reset HEAD FILE

  - git revert HEAD

  - git reset --hard POINT

  - git tag -d TAG

  - git commit --amend -m "Comment"

## Ветки

  - git checkout -b BRANCH

  - git checkout BRANCH

  - git log --graph --all

  - git merge BRANCH

## Клонирование репозитория

  - git clone REPO TO

  - git remote

  - git branch -a

  - git fetch

  - git push shared BRANCH
  