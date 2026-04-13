# -*- coding: utf-8 -*-
"""
MORAI.TOP Article Generator
用法: python generate.py "Article Title" "subtitle" < article_content.txt
或者直接调用 generate_article() 函数
"""
import sys, os, re

TEMPLATE_FILE = 'template.html'
OUTPUT_DIR = '.'
BAIDU_SCRIPT = """<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?d1d9d04b764a3f8f5a92e975825446e6";
  var s = document.getElementsByTagName("script")[0];
  s.parentNode.insertBefore(hm, s);
})();
</script>"""

RELATED_ARTICLES = """
        <li><a href="best-ai-tools-2026.html">Best AI Tools 2026: Complete Guide</a></li>
        <li><a href="ai-agent-tools-2026.html">Top AI Agent Tools 2026</a></li>
        <li><a href="best-free-ai-tools-2026.html">Best Free AI Tools 2026</a></li>"""

def generate(filename, title, description, subtitle, date, read_time, 
             breadcrumb_last, content, toc_items='', tags='', key_points='',
             verdict='', related=RELATED_ARTICLES):
    """生成文章HTML文件"""
    
    with open(TEMPLATE_FILE, 'r', encoding='utf-8') as f:
        html = f.read()
    
    # 替换占位符
    replacements = {
        '<!-- ARTICLE TITLE -->': title,
        '<!-- ARTICLE DESCRIPTION -->': description,
        '<!-- FILENAME -->': filename,
        '<!-- ARTICLE SUBTITLE -->': subtitle,
        '<!-- DATE -->': date,
        '<!-- READ TIME -->': read_time,
        '<!-- BREADCRUMB LAST -->': breadcrumb_last,
        '<!-- ARTICLE CONTENT -->': content,
        '<!-- TOC ITEMS -->': toc_items,
        '<!-- TAGS -->': tags,
        '<!-- KEY POINTS -->': key_points,
        '<!-- BAIDU_SCRIPT -->': BAIDU_SCRIPT,
        '<!-- RELATED ARTICLES -->': related,
        '<!-- VERDICT SECTION -->': verdict,
    }
    
    for placeholder, value in replacements.items():
        html = html.replace(placeholder, value)
    
    output_path = os.path.join(OUTPUT_DIR, filename)
    with open(output_path, 'w', encoding='utf-8') as f:
        f.write(html)
    
    print(f'Generated: {output_path}')


if __name__ == '__main__':
    if len(sys.argv) < 3:
        print(__doc__)
        sys.exit(1)
    
    title = sys.argv[1]
    subtitle = sys.argv[2] if len(sys.argv) > 2 else ''
    filename = sys.argv[3] if len(sys.argv) > 3 else title.lower().replace(' ', '-') + '.html'
    
    # 读取标准输入作为内容
    if not sys.stdin.isatty():
        content = sys.stdin.read()
    else:
        content = '<p>文章内容...</p>'
    
    # 生成文件名
    if not filename.endswith('.html'):
        filename += '.html'
    
    import datetime
    date = datetime.datetime.now().strftime('%B %d, %Y').replace(' 0', ' ')
    read_time = max(1, len(content) // 500)
    description = subtitle or title
    
    generate(filename, title, description, subtitle, date, read_time,
             title, content)
