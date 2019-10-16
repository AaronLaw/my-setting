# Markdown cheatsheet

## Emphasis

Emphasis, aka italics, with *asterisks* or _underscores_.

Strong emphasis, aka bold, with **asterisks** or __underscores__.

Combined emphasis with **asterisks and _underscores_**.

Strikethrough uses two tildes. ~~Scratch this.~~

----
## List

1. First ordered list item
2. Another item
  * Unordered sub-list. 
3. Actual numbers don't matter, just that it's a number
  1. Ordered sub-list
4. And another item.

   You can have properly indented paragraphs within list items. Notice the blank line above, and the leading spaces (at least one, but we'll use three here to also align the raw Markdown).

   To have a line break without a paragraph, you will need to use two trailing spaces.  
   Note that this line is separate, but within the same paragraph.  
   (This is contrary to the typical GFM line break behaviour, where trailing spaces are not required.)

* Unordered list can use asterisks
- Or minuses
+ Or pluses

----
## Block of code

```javascript
var s = "JavaScript syntax highlighting";
alert(s);
```

```python
s = "Python syntax highlighting"
print s
```

```
No language indicated, so no syntax highlighting. 
But let's throw in a <b>tag</b>.
```
----

## Table

| 1 |   2   |  3    |
| ---- | ---- | ---- |
|   Price   |  399    |   500   |
| Type  |   ABS   |   PBT   |
|    Lighting?  |  Y    |  Y    |

--

| 1 |   2   |  3    |
| ---- | ---- | ---- |
|   Price   |  399    |   500   |
| Type  |   ABS   |   PBT   |
|    Lighting?  |  Y    |  Y    |

--

Colons can be used to align columns.

| Tables        | Are           | Cool  |
| ------------- |:-------------:| -----:|
| col 3 is      | right-aligned | $1600 |
| col 2 is      | centered      |   $12 |
| zebra stripes | are neat      |    $1 |

There must be at least 3 dashes separating each header cell.
The outer pipes (|) are optional, and you don't need to make the 
raw Markdown line up prettily. You can also use inline Markdown.

Markdown | Less | Pretty
--- | --- | ---
*Still* | `renders` | **nicely**
1 | 2 | 3

----



- 書寫一個質能守恒公式[^LaTeX]:

$$E=mc^2$$

- 或者高亮一段 `代碼` [^code]：

```python
import random
@requires_authorization
def hello():
    pass
```

tag: Cmd-Markdon
##Cmd-Markdown##

Reference:

- https://www.zhihu.com/question/19637157/answer/151852635



----



## Reference:
* [Markdown cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)* [从写作、排版、学术、代码四个方向，挑选适合自己的文本编辑器](https://sspai.com/post/43043) -> 如果你对 Markdown 尚不熟悉，可以先阅读[《Markdown 完全入门（上）》](https://sspai.com/post/36610)和 [《Markdown 完全入门（下）》](https://sspai.com/post/36682)