---
# Front matter
lang: ru-RU
title: "Лабораторная работа № 8"
subtitle: "Модель конкуренции двух фирм"
author: "Сухарев Кирилл"

# Formatting
toc-title: "Содержание"
toc: true
toc_depth: 2
lof: true
lot: true
fontsize: 12pt
linestretch: 1.5
papersize: a4paper
documentclass: scrreprt
polyglossia-lang: russian
polyglossia-otherlangs: english
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase
indent: true
pdf-engine: lualatex
header-includes:
  - \linepenalty=10
  - \interlinepenalty=0
  - \hyphenpenalty=50
  - \exhyphenpenalty=50
  - \binoppenalty=700
  - \relpenalty=500
  - \clubpenalty=150
  - \widowpenalty=150
  - \displaywidowpenalty=50
  - \brokenpenalty=100
  - \predisplaypenalty=10000
  - \postdisplaypenalty=0
  - \floatingpenalty = 20000
  - \usepackage{float}
  - \floatplacement{figure}{H}
---

# Теоретическое введение

Для построения модели конкуренции хотя бы двух фирм необходимо рассмотреть модель одной фирмы. Вначале рассмотрим модель фирмы, производящей продукт долговременного пользования, когда цена его определяется балансом спроса и предложения. Примем, что этот продукт занимает определенную нишу рынка и конкуренты в ней отсутствуют.

Обозначим:

$N$ – число потребителей производимого продукта.

$S$ – доходы потребителей данного продукта. Считаем, что доходы всех потребителей одинаковы. Это предположение справедливо, если речь идет об одной рыночной нише, т.е. производимый продукт ориентирован на определенный слой населения.

$M$ – оборотные средства предприятия

$\tau$ – длительность производственного цикла

$p$ – рыночная цена товара

$\tilde{p}$ – себестоимость продукта, то есть переменные издержки на производство единицы продукции.

$\delta$ – доля оборотных средств, идущая на покрытие переменных издержек

При пренебрежимо малых издержках уравнения динамики оборотных средств будут выглядеть следующим образом:

$$\left\{\begin{matrix} \frac{dM_1}{dt} = c_1 M_1 - b M_1 M_2 - a_1 M_1^2 \\ \frac{dM_2}{dt} = c_2 M_2 - b M_1 M_2 - a_2 M_2^2 \end{matrix}\right.$$

$$a_1 = \frac{p_{cr}}{\tau_1^2 \tilde{p_1}^2 Nq}, a_2 = \frac{p_{cr}}{\tau_2^2 \tilde{p_2}^2 Nq}, b = \frac{p_{cr}}{\tau_1^2 \tilde{p_1}^2 \tau_2^2 \tilde{p_2}^2 Nq}, c_1 = \frac{p_{cr} - \tilde{p_1}}{\tau_1 \tilde{p_1}}, c_2 = \frac{p_{cr} - \tilde{p_2}}{\tau_2 \tilde{p_2}}$$

Введем нормировку $t = c_1 \theta$:

$$\left\{\begin{matrix} \frac{dM_1}{d\theta} = M_1 - \frac{b}{c_1} M_1 M_2 - \frac{a_1}{c_1} M_1^2 \\ \frac{dM_2}{d\theta} = \frac{c_2}{c_1} M_2 - \frac{b}{c_1} M_1 M_2 - \frac{a_2}{c_1} M_2^2 \end{matrix}\right.$$

# Задание

**Вариант 39**

1. Постройте графики изменения оборотных средств фирмы 1 и фирмы 2 без учета постоянных издержек и с веденной нормировкой для случая 1:

$$\left\{\begin{matrix} \frac{dM_1}{d\theta} = M_1 - \frac{b}{c_1} M_1 M_2 - \frac{a_1}{c_1} M_1^2 \\ \frac{dM_2}{d\theta} = \frac{c_2}{c_1} M_2 - \frac{b}{c_1} M_1 M_2 - \frac{a_2}{c_1} M_2^2 \end{matrix}\right.$$

2. Постройте графики изменения оборотных средств фирмы 1 и фирмы 2 без учета постоянных издержек и с веденной нормировкой для случая 2.

$$\left\{\begin{matrix} \frac{dM_1}{d\theta} = M_1 - \frac{b}{c_1} M_1 M_2 - \frac{a_1}{c_1} M_1^2 \\ \frac{dM_2}{d\theta} = \frac{c_2}{c_1} M_2 - (\frac{b}{c_1} + 0.00093) M_1 M_2 - \frac{a_2}{c_1} M_2^2 \end{matrix}\right.$$

Начальные условия:

$$M_0^1 = 3.3, M_0^2 = 2.3, p_{cr} = 22, N = 33, q = 1, \tau_1 = 22, \tau_2 = 11, \tilde{p_1} = 6.6, \tilde{p_2} = 11.1$$

***Замечание:*** Необходимо учесть, что значения $p_{cr}, \tilde{p_{1,2}}, N$ указаны в тысячах единиц (например $N = 10$ - означает 10 000 потенциальных потребителей), а значения $M_{1,2}$ указаны в млн. единиц

# Выполнение лабораторной работы

1. Прежде всего определим все константы (Figure -@fig:001).

![Константы](images/report/img1.png){ #fig:001 width=100% }

2. Зададим и решим систему дифференциальных уравнений для первого случая (Figure -@fig:002).

![Система ДУ для первого случая](images/report/img2.png){ #fig:002 width=100% }

3. Выведем полученное решение на экран (Figure -@fig:003).

![График для первого случая](images/report/img3.png){ #fig:003 width=100% }

4. Модернизируем систему дифференциальных уравнений для второго случая (Figure -@fig:004).

![Система ДУ для второго случая](images/report/img4.png){ #fig:004 width=100% }

5. Выведем полученное решение на экран (Figure -@fig:005).

![График для второго случая](images/report/img5.png){ #fig:005 width=100% }