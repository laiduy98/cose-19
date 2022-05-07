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

COVID-19 is the disease that caused by the Sar-COV-2 virus that started in China at the end of the year 2019. Over the time, studies has shown that there is some form of background diseases and risk factors that can hugely affect the severity cases rate of COVID-19. This study will apply NLP and text mining methods in order to explore CORD-19 dataset and extract background diseases and risk factors. 

![Cormobilities and symtoms of COVID-19 cases](assets/images/risk_factor.jpeg)

# Introduction

While working on this project, we applied text-processing on CORD-19 dataset. CORD-19 is a data collection of over one million scholarly articles, including over 350,000 with full text, about COVID-19, SARS-CoV-2, and related coronaviruses. The amount of data collected in CORD-19 provided an opportunity for a deep and various analysis, and allowed us to apply different NLP techniques such as LDA(Latent Dirichlet Allocation) and NER(Named-entity recognition). In this block, the structure of our project will be explained. 

The coding process consisted of 4 parts: Data Exploration, Preprocessing, Data selection, Named-entity recognition application.

- Data Exploration

- Preprocessing
    - Reformating the json data to csv dataframe.
    - Removing all non-english paper.
    - Tokenizing.
    - Removing stopwords.
    - Stemming.
    - Lemmatisation.
 
- Data selection
    - Selecting articles with risk factor and/or severity key-words.
    - Clustering using Latent Dirichlet Allocation.

- Applying NER (Named-entity recognition).

![Data processing flow](assets/images/introduction_diagram.jpeg)

# Data exploration

## Dataset information

In this We would like to know some fundamental information of the dataset. 

- The metadata csv file shows that there are more than a milion paper that in the data set.

![Paper's number](assets/images/data_explore_1.png)

- Columns that contained in the metadata file include:

```
['cord_uid', 'sha', 'source_x', 'title', 'doi', 'pmcid', 'pubmed_id', 
'license', 'abstract', 'publish_time', 'authors', 'journal', 'mag_id', 
'who_covidence_id', 'arxiv_id', 'pdf_json_files', 'pmc_json_files', 
'url', 's2_id']
```

![Head of the metadata](assets/images/data_explore_2.png)

However, if we count the number of file in the directory, there is only over 300000 json files. It means that not all paper that in the metadata is also available in the json format for us to process, as well as might be there are paper that being duplicated. In the preprocessing block, we will remove the row with duplicated and empty abstract

## Language status of the dataset

In this particular study, we only focus applying NLP on English papers. We would like to know if there are any other languages in the datasets. 

![Language percentage in the dataset](assets/images/lang.png)

As we can see in the figure, most of the papers in the CORD-19 dataset have been written in English. In the preprocessing block, we will apply method to remove papers in other languages.

# Preprocessing

After explore the data, we have the idea of what to do for the next step. This step will first clean the data, including transfer the JSON file that be used in the dataset to pandas dataframe, which is more common to process.

## Handling multiple languages

As in the data explore


## Special characters and number remove

Convert to lowercase and remove punctuations and characters and then strip.

```
text = re.sub(r'[^\w\s]', '', str(text).lower().strip())
    pat = r'\d+'
    text = re.sub(pat, '', text)
```

## Tokenization

Simply using ```split()``` to tokenize the data.

## Stemming

```    
if flg_stemm == True:
        ps = nltk.stem.porter.PorterStemmer()
        lst_text = [ps.stem(word) for word in lst_text]
```

## Lemmatisation



```
if flg_lemm == True:
        lem = nltk.stem.wordnet.WordNetLemmatizer()
        lst_text = [lem.lemmatize(word) for word in lst_text]
```

# Clustering



![LDA 1](assets/images/lda_1.png){ width=50% }

t

t

t

![LDA 2](assets/images/lda_2.png){ width=50% }

# Named-identity recognition

Scispacy
t
t

t
t

t


# Future improvement

Knowledge graph

# References

something here
