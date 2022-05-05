---
# pandoc report.md -o pdf/report.pdf --from markdown --template eisvogel.tex --listings --pdf-engine=xelatex --toc --number-sections

papersize: a4
lang: en-US
# geometry:
#     - top=30mm
#     - left=20mm
#     - right=20mm
#     - heightrounded
# mainfont: "Helvetica"
# sansfont: "Helvetica"
# monofont: "Helvetica"
documentclass: article
title: Text mining for exploration of COVID-19 severity factors

author: \textbf{LAI Khang Duy} \newline
        \textbf{Mariia KLIMINA} \newline
        \newline
        \newline
        \textit{Université Paris Cité} \newline 
        \textit{UFR des Sciences Fondamentales et Biomédicales}
footer-left: Université Paris Cité
date: 03-05-2022
titlepage: true
toc-own-page: true
# lof: true
# lof-own-page: true
titlepage-logo: assets/images/pariscite-logo.png
header-includes: 
      - |
        ``` {=latex}
        \let\originAlParaGraph\paragraph
        \renewcommand{\paragraph}[1]{\originAlParaGraph{#1} \hfill}
        ```
...

# Abstract

COVID-19 is the disease that caused by the Sar-COV-2 virus, commence in China at the end of the year 2019. Over the time, studies show that there is some form of background diseases and risk factors that can hugely affect the severity cases rate of COVID-19. This study will apply NLP as well as text mining and exploration on the CORD-19 dataset to extract which background diseases and risk factors play the main role for the problem, hence researcher may produce a method to reduce rate.

![Cormobilities and symtoms of COVID-19 cases](assets/images/risk_factor.jpeg)

# Introduction

- Explore with data
- Preprocessing
    - Reformat data json to dataframe
    - Remove all non-english paper
    - Tokenize
    - Remove stopword
    - Stemming
    - Lemmatisation
 
- Data selection
 - Choose only paper that talk about risk factor and/or severity
- Apply NER (Named-entity recognition)


# Data exploration

# Preprocessing

something here

## Handling multiple languages

## Special characters and number remove

## Tokenization

## Stemming

## Lemmatisation

# Clustering

# Extract medical term
