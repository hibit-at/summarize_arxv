# Summarize arXiv paper with figures

arXiv の論文を検索してPDFと書誌データ、chatGPTによる要約情報をxmlファイルとして保存する`query_arxiv.py` と、保存したxmlファイル（群）から 図を抜き出して marp 形式ファイル として保存する `mkmd.py`　から成る。

## 準備

`local.py` を生成し、その中で OpenAI のAPIキーを設定する。
```python
API_KEY='sk-###############'
```

※ `query_arxiv.py` 中に直接ハードコーディングしても良いですが、セキュリティ上の観点から上の方法を推奨します。

## uasge:

- arXivから論文を検索、xml形式で保存し、要約を作成
```console
$ python query_arxiv.py  [-d directory] [-n num-papers] [-y from-year] "search keywords"  
```

- IDを直接指定したい場合は、`-i` にIDを指定（`keyword` はxmlの `query` として保存されます）
```console
$ python query_arxiv.py [-i arxiv_id] "keyword" 
```

- ダウンロードした情報からスライド(markdown)を作成
```
$ python mkmd.py [-o output.md] [-d directory] "keyword"
```

directory はxmlファイルが保存されるディレクトリ

生成された ***.md ファイルは marp (https://marketplace.visualstudio.com/items?itemName=marp-team.marp-vscode ) に準拠しているので、　VS Codeで読み込めばスライド形式として閲覧したり、PDFファイルとして保存することができます：

（生成例）
<img src="./gen.png" width="480">




