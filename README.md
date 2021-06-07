# template-engine-jinja2-vim
A template engine with jinja2 for vim

# Installation
You need to install jinja2 and python3.
For the files, you just need to copy this in the ``` ~/.vim/plugin/ ```

Next, you create a new file like ``` jinja2.name.extesion ( for example : jinja2.index.html ) ```

To save, compile, and create the new files in vim, you must write ```:WW```

To learn how write jinja2 code, you can go on [official website](https://jinja.palletsprojects.com/en/3.0.x/)

You can use on all the file's type : html, css, py, cpp et etcv.

# Example
The jinja2 file:
```python
  1 ### python file
  2 
  3 {% set r = "[255,3,0]" %}
  4 {% set b = "[0,255,0]" %}
  5 {% set g = "[0,0,255]" %}
  6 
  7 print( {{ b }} )
  8 
  9 {% for i in range(5) %}
 10 print( {{ r }} )
 11 {% endfor %}
 12 
 13 /** CSS file **/
 14 
 15 {% set color = "rgb(125,110,002)" %}
 16 
 17 .pre
 18 {
 19         color: {{ color }};
 20 }
 21 
 22 #pre
 23 {       
 24         color: {{ color }};
 25 }
```
When the result:
```python
  1 ### python file
  2 
  3 
  4 print( [0,255,0] )
  5 
  6 print( [255,3,0] )
  7 print( [255,3,0] )
  8 print( [255,3,0] )
  9 print( [255,3,0] )
 10 print( [255,3,0] )
 11 
 12 /** CSS file **/
 13 
 14 
 15 .pre
 16 {
 17         color: rgb(125,110,002);
 18 }
 19 
 20 #pre
 21 {
 22         color: rgb(125,110,002);
 23 }
```
