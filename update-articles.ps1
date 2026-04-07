# Morai Website Navigation Upgrade Script
$ErrorActionPreference = "Stop"
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$BASE = "C:\Users\Administrator\.openclaw\workspace\morai-website"

$ARTICLE_ORDER = @(
    "best-ai-agents-2026.html",
    "ai-agent-tools-2026.html",
    "best-ai-coding-tools-2026.html",
    "best-ai-coding-assistants-2026.html",
    "ai-code-review-tools.html",
    "best-ai-chatbots-2026.html",
    "ai-writing-tools.html",
    "best-ai-email-tools-2026.html",
    "best-ai-meeting-tools-2026.html",
    "best-ai-note-taking-tools-2026.html",
    "best-ai-productivity-tools-2026.html",
    "best-ai-seo-tools-2026.html",
    "best-ai-marketing-tools-2026.html",
    "best-ai-translation-tools-2026.html",
    "best-ai-image-editors-2026.html",
    "ai-image-generators.html",
    "best-ai-video-editing-tools-2026.html",
    "best-ai-voice-cloning-tools-2026.html",
    "best-free-ai-tools-2026.html",
    "best-ai-tools-2026.html",
    "ai-for-small-business-guide.html",
    "chatgpt-vs-claude.html",
    "cursor-ai-review.html",
    "claude-3-7-sonnet-review.html"
)

$TITLE_MAP = @{}
$TITLE_MAP["ai-agent-tools-2026.html"] = "AI Agent Tools 2026"
$TITLE_MAP["ai-code-review-tools.html"] = "Best AI Code Review Tools 2026"
$TITLE_MAP["ai-image-generators.html"] = "AI Image Generators 2026"
$TITLE_MAP["ai-writing-tools.html"] = "Best AI Writing Tools 2026"
$TITLE_MAP["best-ai-agents-2026.html"] = "Best AI Agents in 2026"
$TITLE_MAP["best-ai-chatbots-2026.html"] = "Best AI Chatbots 2026"
$TITLE_MAP["best-ai-coding-assistants-2026.html"] = "Best AI Coding Assistants 2026"
$TITLE_MAP["best-ai-coding-tools-2026.html"] = "Best AI Coding Tools 2026"
$TITLE_MAP["best-ai-email-tools-2026.html"] = "Best AI Email Tools 2026"
$TITLE_MAP["best-ai-image-editors-2026.html"] = "Best AI Image Editors 2026"
$TITLE_MAP["best-ai-marketing-tools-2026.html"] = "Best AI Marketing Tools 2026"
$TITLE_MAP["best-ai-meeting-tools-2026.html"] = "Best AI Meeting Tools 2026"
$TITLE_MAP["best-ai-note-taking-tools-2026.html"] = "Best AI Note-Taking Tools 2026"
$TITLE_MAP["best-ai-productivity-tools-2026.html"] = "Best AI Productivity Tools 2026"
$TITLE_MAP["best-ai-seo-tools-2026.html"] = "Best AI SEO Tools 2026"
$TITLE_MAP["best-ai-tools-2026.html"] = "10 AI Tools That Will Genuinely Boost Your Productivity"
$TITLE_MAP["best-ai-translation-tools-2026.html"] = "Best AI Translation Tools 2026"
$TITLE_MAP["best-ai-video-editing-tools-2026.html"] = "Best AI Video Editing Tools 2026"
$TITLE_MAP["best-ai-voice-cloning-tools-2026.html"] = "Best AI Voice Cloning Tools 2026"
$TITLE_MAP["best-free-ai-tools-2026.html"] = "Best Free AI Tools 2026"
$TITLE_MAP["claude-3-7-sonnet-review.html"] = "Claude 3.7 Sonnet Review"
$TITLE_MAP["cursor-ai-review.html"] = "Cursor AI Review"
$TITLE_MAP["chatgpt-vs-claude.html"] = "ChatGPT-5 vs Claude 3.7"
$TITLE_MAP["ai-for-small-business-guide.html"] = "AI for Small Business Guide 2026"

$CAT_MAP = @{}
$CAT_MAP["ai-agent-tools-2026.html"] = @{cat="AI Tools";catHref="/ai-tools.html";emoji="[Tools]"}
$CAT_MAP["ai-code-review-tools.html"] = @{cat="AI Tools";catHref="/ai-tools.html";emoji="[Tools]"}
$CAT_MAP["ai-image-generators.html"] = @{cat="AI Tools";catHref="/ai-tools.html";emoji="[Tools]"}
$CAT_MAP["ai-writing-tools.html"] = @{cat="AI Tools";catHref="/ai-tools.html";emoji="[Tools]"}
$CAT_MAP["best-ai-agents-2026.html"] = @{cat="AI Tools";catHref="/ai-tools.html";emoji="[Tools]"}
$CAT_MAP["best-ai-chatbots-2026.html"] = @{cat="AI Tools";catHref="/ai-tools.html";emoji="[Tools]"}
$CAT_MAP["best-ai-coding-assistants-2026.html"] = @{cat="AI Tools";catHref="/ai-tools.html";emoji="[Tools]"}
$CAT_MAP["best-ai-coding-tools-2026.html"] = @{cat="AI Tools";catHref="/ai-tools.html";emoji="[Tools]"}
$CAT_MAP["best-ai-email-tools-2026.html"] = @{cat="AI Tools";catHref="/ai-tools.html";emoji="[Tools]"}
$CAT_MAP["best-ai-image-editors-2026.html"] = @{cat="AI Tools";catHref="/ai-tools.html";emoji="[Tools]"}
$CAT_MAP["best-ai-marketing-tools-2026.html"] = @{cat="AI Tools";catHref="/ai-tools.html";emoji="[Tools]"}
$CAT_MAP["best-ai-meeting-tools-2026.html"] = @{cat="AI Tools";catHref="/ai-tools.html";emoji="[Tools]"}
$CAT_MAP["best-ai-note-taking-tools-2026.html"] = @{cat="AI Tools";catHref="/ai-tools.html";emoji="[Tools]"}
$CAT_MAP["best-ai-productivity-tools-2026.html"] = @{cat="AI Tools";catHref="/ai-tools.html";emoji="[Tools]"}
$CAT_MAP["best-ai-seo-tools-2026.html"] = @{cat="AI Tools";catHref="/ai-tools.html";emoji="[Tools]"}
$CAT_MAP["best-ai-tools-2026.html"] = @{cat="AI Tools";catHref="/ai-tools.html";emoji="[Tools]"}
$CAT_MAP["best-ai-translation-tools-2026.html"] = @{cat="AI Tools";catHref="/ai-tools.html";emoji="[Tools]"}
$CAT_MAP["best-ai-video-editing-tools-2026.html"] = @{cat="AI Tools";catHref="/ai-tools.html";emoji="[Tools]"}
$CAT_MAP["best-ai-voice-cloning-tools-2026.html"] = @{cat="AI Tools";catHref="/ai-tools.html";emoji="[Tools]"}
$CAT_MAP["best-free-ai-tools-2026.html"] = @{cat="AI Tools";catHref="/ai-tools.html";emoji="[Tools]"}
$CAT_MAP["claude-3-7-sonnet-review.html"] = @{cat="Reviews";catHref="/ai-reviews.html";emoji="[Review]"}
$CAT_MAP["cursor-ai-review.html"] = @{cat="Reviews";catHref="/ai-reviews.html";emoji="[Review]"}
$CAT_MAP["chatgpt-vs-claude.html"] = @{cat="Comparisons";catHref="/ai-comparisons.html";emoji="[Compare]"}
$CAT_MAP["ai-for-small-business-guide.html"] = @{cat="Guides";catHref="/ai-guides.html";emoji="[Guide]"}

$HOT_ARTICLES = @(
    @{title="Best AI Coding Tools 2026";href="/best-ai-coding-tools-2026.html"},
    @{title="Best AI Agents in 2026";href="/best-ai-agents-2026.html"},
    @{title="ChatGPT-5 vs Claude 3.7";href="/chatgpt-vs-claude.html"},
    @{title="Best AI Chatbots 2026";href="/best-ai-chatbots-2026.html"},
    @{title="AI for Small Business Guide";href="/ai-for-small-business-guide.html"}
)
$LATEST_ARTICLES = @(
    @{title="Claude 3.7 Sonnet Review";href="/claude-3-7-sonnet-review.html"},
    @{title="Cursor AI Review";href="/cursor-ai-review.html"},
    @{title="Best AI Voice Cloning Tools";href="/best-ai-voice-cloning-tools-2026.html"},
    @{title="Best AI Video Editing Tools";href="/best-ai-video-editing-tools-2026.html"},
    @{title="Best AI Marketing Tools";href="/best-ai-marketing-tools-2026.html"}
)

$CSS_EXTRA = "/* ARTICLE LAYOUT AND NAVIGATION */`n.article-layout{display:grid;grid-template-columns:1fr 280px;gap:2rem;align-items:start;max-width:1100px;margin:0 auto;padding:2rem 1rem}`n.article-main{min-width:0}`n.sidebar{position:sticky;top:80px}`n.sidebar-widget{background:white;border-radius:12px;padding:1.2rem;box-shadow:0 2px 8px rgba(0,0,0,0.06);margin-bottom:1.2rem}`n.sidebar-widget h4{font-size:0.78rem;text-transform:uppercase;letter-spacing:0.08em;color:#667eea;margin-bottom:0.8rem;border-bottom:2px solid #eee;padding-bottom:0.5rem;font-weight:700}`n.sidebar-widget ul{list-style:none;margin:0;padding:0}`n.sidebar-widget li{margin-bottom:0.5rem}`n.sidebar-widget li a{color:#555;font-size:0.87rem;line-height:1.4;display:block}`n.sidebar-widget li a:hover{color:#667eea}`n.sidebar-nav-cat{display:flex;flex-direction:column;gap:0.3rem}`n.sidebar-nav-cat a{padding:0.5rem 0.8rem;border-radius:8px;color:#555;font-size:0.9rem;font-weight:500}`n.sidebar-nav-cat a:hover{background:#f0f0ff;color:#667eea}`n.breadcrumb{max-width:800px;margin:0 auto 0;padding:0.8rem 1rem;font-size:0.82rem;color:#999}`n.breadcrumb a{color:#999}`n.breadcrumb a:hover{color:#667eea}`n.breadcrumb .sep{margin:0 0.3rem}`n.breadcrumb .current{color:#667eea}`n.article-header{color:white;padding:2.5rem 1rem 2rem;text-align:center}`n.article-header-inner{max-width:800px;margin:0 auto}`n.article-category-tag{display:inline-block;background:rgba(255,255,255,0.25);color:white;padding:0.25rem 1rem;border-radius:50px;font-size:0.75rem;font-weight:600;text-transform:uppercase;letter-spacing:0.05em;margin-bottom:0.8rem}`n.article-header h1{font-size:2rem;margin-bottom:0.4rem;line-height:1.3}`n.article-subtitle{font-size:1rem;opacity:0.9;margin-bottom:1rem}`n.article-meta-row{font-size:0.82rem;opacity:0.85;display:flex;align-items:center;justify-content:center;gap:0.4rem;flex-wrap:wrap}`n.prev-next-nav{display:grid;grid-template-columns:1fr 1fr;gap:1rem;margin:2rem 0 1rem}`n.prev-article,.next-article{background:white;border-radius:12px;padding:1.2rem;box-shadow:0 2px 8px rgba(0,0,0,0.06)}`n.prev-article{text-align:left}`n.next-article{text-align:right}`n.pn-label{display:block;font-size:0.73rem;text-transform:uppercase;letter-spacing:0.08em;color:#667eea;margin-bottom:0.3rem;font-weight:700}`n.prev-article a,.next-article a{color:#333;font-weight:600;font-size:0.93rem}`n.prev-article a:hover,.next-article a:hover{color:#667eea}`n.article-footer-extra{margin-top:2rem;padding-top:1.5rem;border-top:1px solid #eee}`n.share-section{margin-bottom:1.5rem}`n.share-section h4{font-size:0.9rem;color:#555;margin-bottom:0.8rem;font-weight:600}`n.share-buttons{display:flex;gap:0.5rem;flex-wrap:wrap}`n.share-btn{padding:0.5rem 1rem;border-radius:8px;font-size:0.85rem;font-weight:600;color:white;transition:opacity 0.3s;display:inline-block}`n.share-btn:hover{opacity:0.8;color:white}`n.share-twitter{background:#000}`n.share-facebook{background:#1877f2}`n.share-linkedin{background:#0a66c2}`n.back-to-top{display:inline-block;background:#f0f0ff;color:#667eea;padding:0.6rem 1.2rem;border-radius:50px;font-weight:600;font-size:0.9rem;transition:background 0.3s}`n.back-to-top:hover{background:#e0e0ff;color:#667eea;text-decoration:none}`n.related-articles{background:#f8f9fa;border-radius:12px;padding:1.5rem;margin-top:2rem}`n.related-articles h3{color:#667eea;margin-bottom:1rem;font-size:1.05rem;font-weight:700}`n.related-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(210px,1fr));gap:0.8rem}`n.related-card a{display:block;background:white;border-radius:10px;padding:1rem;transition:transform 0.3s,box-shadow 0.3s;border:1px solid #eee;text-decoration:none}`n.related-card a:hover{transform:translateY(-2px);box-shadow:0 4px 12px rgba(0,0,0,0.08);text-decoration:none}`n.related-tag{display:inline-block;background:#f0f0ff;color:#667eea;font-size:0.7rem;padding:0.1rem 0.5rem;border-radius:50px;margin-bottom:0.3rem;text-transform:uppercase;font-weight:700}`n.related-title{display:block;color:#333;font-weight:600;font-size:0.88rem;line-height:1.4}`n@media(max-width:900px){.article-layout{grid-template-columns:1fr}.sidebar{display:none}.prev-next-nav{grid-template-columns:1fr}.next-article{text-align:left}}`n@media(max-width:600px){.article-header h1{font-size:1.6rem}.breadcrumb{font-size:0.78rem}}"

function Get-Related($filename) {
    $cards = ""
    switch -Regex ($filename) {
        "coding|agent|code-review" {
            $cards = "<div class=""related-card""><a href=""/ai-agent-tools-2026.html""><span class=""related-tag"">AI Tools</span><span class=""related-title"">AI Agent Tools 2026</span></a></div><div class=""related-card""><a href=""/best-ai-coding-assistants-2026.html""><span class=""related-tag"">AI Tools</span><span class=""related-title"">Best AI Coding Assistants 2026</span></a></div><div class=""related-card""><a href=""/ai-for-small-business-guide.html""><span class=""related-tag"">Guide</span><span class=""related-title"">AI for Small Business Guide 2026</span></a></div>"
        }
        "image|video|voice|editor" {
            $cards = "<div class=""related-card""><a href=""/ai-image-generators.html""><span class=""related-tag"">AI Tools</span><span class=""related-title"">AI Image Generators 2026</span></a></div><div class=""related-card""><a href=""/best-ai-video-editing-tools-2026.html""><span class=""related-tag"">AI Tools</span><span class=""related-title"">Best AI Video Editing Tools 2026</span></a></div><div class=""related-card""><a href=""/best-ai-voice-cloning-tools-2026.html""><span class=""related-tag"">AI Tools</span><span class=""related-title"">Best AI Voice Cloning Tools 2026</span></a></div>"
        }
        "chatbot|chatgpt|claude|comparison" {
            $cards = "<div class=""related-card""><a href=""/best-ai-chatbots-2026.html""><span class=""related-tag"">AI Tools</span><span class=""related-title"">Best AI Chatbots 2026</span></a></div><div class=""related-card""><a href=""/claude-3-7-sonnet-review.html""><span class=""related-tag"">Reviews</span><span class=""related-title"">Claude 3.7 Sonnet Review</span></a></div><div class=""related-card""><a href=""/cursor-ai-review.html""><span class=""related-tag"">Reviews</span><span class=""related-title"">Cursor AI Review</span></a></div>"
        }
        "email|meeting|note|productivity|seo|marketing|translation|free|ai-tools" {
            $cards = "<div class=""related-card""><a href=""/best-ai-chatbots-2026.html""><span class=""related-tag"">AI Tools</span><span class=""related-title"">Best AI Chatbots 2026</span></a></div><div class=""related-card""><a href=""/best-ai-productivity-tools-2026.html""><span class=""related-tag"">AI Tools</span><span class=""related-title"">Best AI Productivity Tools 2026</span></a></div><div class=""related-card""><a href=""/ai-for-small-business-guide.html""><span class=""related-tag"">Guide</span><span class=""related-title"">AI for Small Business Guide 2026</span></a></div>"
        }
        "guide|business" {
            $cards = "<div class=""related-card""><a href=""/best-ai-productivity-tools-2026.html""><span class=""related-tag"">AI Tools</span><span class=""related-title"">Best AI Productivity Tools 2026</span></a></div><div class=""related-card""><a href=""/best-free-ai-tools-2026.html""><span class=""related-tag"">AI Tools</span><span class=""related-title"">Best Free AI Tools 2026</span></a></div><div class=""related-card""><a href=""/best-ai-agents-2026.html""><span class=""related-tag"">AI Tools</span><span class=""related-title"">Best AI Agents in 2026</span></a></div>"
        }
        "review" {
            $cards = "<div class=""related-card""><a href=""/chatgpt-vs-claude.html""><span class=""related-tag"">Comparisons</span><span class=""related-title"">ChatGPT-5 vs Claude 3.7</span></a></div><div class=""related-card""><a href=""/best-ai-coding-tools-2026.html""><span class=""related-tag"">AI Tools</span><span class=""related-title"">Best AI Coding Tools 2026</span></a></div><div class=""related-card""><a href=""/best-ai-agents-2026.html""><span class=""related-tag"">AI Tools</span><span class=""related-title"">Best AI Agents in 2026</span></a></div>"
        }
        default {
            $cards = "<div class=""related-card""><a href=""/best-ai-agents-2026.html""><span class=""related-tag"">AI Tools</span><span class=""related-title"">Best AI Agents in 2026</span></a></div><div class=""related-card""><a href=""/best-ai-tools-2026.html""><span class=""related-tag"">AI Tools</span><span class=""related-title"">10 AI Tools That Will Boost Your Productivity</span></a></div><div class=""related-card""><a href=""/ai-for-small-business-guide.html""><span class=""related-tag"">Guide</span><span class=""related-title"">AI for Small Business Guide 2026</span></a></div>"
        }
    }
    return "<div class=""related-articles""><h3>Related Articles</h3><div class=""related-grid"">" + $cards + "</div></div>"
}

function Update-File($filepath) {
    $filename = Split-Path $filepath -Leaf
    $url = "/" + $filename

    $content = Get-Content $filepath -Raw -Encoding UTF8
    if ($content -match 'class="article-layout"') {
        Write-Host "  [SKIP] $filename - already has article-layout" -ForegroundColor Yellow
        return
    }

    $headerBg = "linear-gradient(135deg, #667eea 0%, #764ba2 100%)"
    if ($content -match 'header\s*\{[^}]*background\s*:\s*([^;]+)') {
        $found = $matches[1].Trim()
        if ($found -match 'linear-gradient') { $headerBg = $found }
    }

    $h1Title = $TITLE_MAP[$filename]
    if (-not $h1Title) {
        $m = [regex]::Match($content, '<h1>([^<]+)</h1>')
        if ($m.Success) { $h1Title = $m.Groups[1].Value } else { $h1Title = $filename }
    }

    $subtitle = ""
    $m = [regex]::Match($content, '<header[^>]*>.*?<p>([^<]+)</p>', [System.Text.RegularExpressions.RegexOptions]::Singleline)
    if ($m.Success) { $subtitle = $m.Groups[1].Value.Trim() }

    $articleDate = "2026"
    if ($content -match '"datePublished"\s*:\s*"([^"]+)"') {
        try { $articleDate = [DateTime]::Parse($matches[1]).ToString("MMMM d, yyyy") } catch {}
    }

    $readTime = "5 min read"
    if ($content -match '(\d+)\s*min\s*read') { $readTime = $matches[1] + " min read" }
    else {
        $plain = $content -replace '<[^>]+>', ''
        $words = (($plain -split '\s+') | Where-Object { $_ -ne '' }).Count
        $readTime = [Math]::Max(1, [Math]::Ceiling($words / 200)).ToString() + " min read"
    }

    $catInfo = $CAT_MAP[$filename]
    if (-not $catInfo) { $catInfo = @{cat="AI Tools";catHref="/ai-tools.html";emoji="[Tools]"} }

    $idx = $ARTICLE_ORDER.IndexOf($filename)
    $prevFile = if ($idx -gt 0) { $ARTICLE_ORDER[$idx - 1] } else { $null }
    $nextFile = if ($idx -lt $ARTICLE_ORDER.Count - 1 -and $idx -ge 0) { $ARTICLE_ORDER[$idx + 1] } else { $null }
    $prevTitle = if ($prevFile -and $TITLE_MAP[$prevFile]) { $TITLE_MAP[$prevFile] } else { "" }
    $nextTitle = if ($nextFile -and $TITLE_MAP[$nextFile]) { $TITLE_MAP[$nextFile] } else { "" }

    $breadcrumbHtml = "<div class=""breadcrumb""><a href=""/"">Home</a> <span class=""sep"">/</span> <a href=""" + $catInfo.catHref + """>" + $catInfo.cat + "</a> <span class=""sep"">/</span> <span class=""current"">" + $h1Title + "</span></div>"

    $hotItems = ""
    foreach ($a in $HOT_ARTICLES) { $hotItems += "<li><a href=""" + $a.href + """>" + $a.title + "</a></li>" }
    $latestItems = ""
    foreach ($a in $LATEST_ARTICLES) { $latestItems += "<li><a href=""" + $a.href + """>" + $a.title + "</a></li>" }
    $sidebarHtml = "<aside class=""sidebar""><div class=""sidebar-widget""><h4>Categories</h4><div class=""sidebar-nav-cat""><a href=""/ai-tools.html"">AI Tools</a><a href=""/ai-reviews.html"">Reviews</a><a href=""/ai-comparisons.html"">Comparisons</a><a href=""/ai-guides.html"">Guides</a></div></div><div class=""sidebar-widget""><h4>Popular Articles</h4><ul>" + $hotItems + "</ul></div><div class=""sidebar-widget""><h4>Latest Articles</h4><ul>" + $latestItems + "</ul></div></aside>"

    $prevNextHtml = ""
    if ($prevFile -or $nextFile) {
        $prevBlock = if ($prevFile) { "<div class=""prev-article""><span class=""pn-label"">&lt;- Previous</span><a href=""/" + $prevFile + """>" + $prevTitle + "</a></div>" } else { "<div class=""prev-article""></div>" }
        $nextBlock = if ($nextFile) { "<div class=""next-article""><span class=""pn-label"">Next -&gt;</span><a href=""/" + $nextFile + """>" + $nextTitle + "</a></div>" } else { "<div class=""next-article""></div>" }
        $prevNextHtml = "<div class=""prev-next-nav"">" + $prevBlock + $nextBlock + "</div>"
    }

    $relatedHtml = Get-Related $filename

    $shareUrl = "https://morai.top" + $url
    $footerExtraHtml = "<div class=""article-footer-extra""><div class=""share-section""><h4>Share this article</h4><div class=""share-buttons""><a href=""https://twitter.com/intent/tweet?url=" + [Uri]::EscapeDataString($shareUrl) + "&text=" + [Uri]::EscapeDataString($h1Title) + """ target=""_blank"" rel=""nofollow"" class=""share-btn share-twitter"">Twitter</a><a href=""https://www.facebook.com/sharer/sharer.php?u=" + [Uri]::EscapeDataString($shareUrl) + """ target=""_blank"" rel=""nofollow"" class=""share-btn share-facebook"">Facebook</a><a href=""https://www.linkedin.com/shareArticle?mini=true&url=" + [Uri]::EscapeDataString($shareUrl) + """ target=""_blank"" rel=""nofollow"" class=""share-btn share-linkedin"">LinkedIn</a></div></div><a href=""#"" class=""back-to-top"" onclick=""window.scrollTo({top:0,behavior:'smooth'});return false;"">Back to top</a></div>"

    $newHeader = "<header class=""article-header"" style=""background: " + $headerBg + "; text-align:center;""><div class=""article-header-inner""><div class=""article-category-tag"">" + $catInfo.emoji + " " + $catInfo.cat + "</div><h1>" + $h1Title + "</h1>"
    if ($subtitle) { $newHeader += "<p class=""article-subtitle"">" + $subtitle + "</p>" }
    $newHeader += "<div class=""article-meta-row""><span>" + $articleDate + "</span><span> | </span><span>" + $readTime + "</span><span> | </span><span>By Morai</span></div></div></header>"

    $content = [regex]::Replace($content, '<header[^>]*>.*?</header>', $newHeader, [System.Text.RegularExpressions.RegexOptions]::Singleline)

    $styleEndIdx = $content.IndexOf('</style>')
    if ($styleEndIdx -gt 0) {
        $content = $content.Insert($styleEndIdx, $CSS_EXTRA + "`n")
    }

    $navEndIdx = $content.IndexOf('</nav>')
    if ($navEndIdx -gt 0) {
        $content = $content.Insert($navEndIdx + 6, "`n" + $breadcrumbHtml)
    }

    $content = $content.Replace('<div class="container">', '<div class="article-layout"><div class="article-main"><div class="container">')

    $lastArtIdx = $content.LastIndexOf('</article>')
    if ($lastArtIdx -gt 0) {
        $after = $content.Substring($lastArtIdx + 10)
        $divIdx = $after.IndexOf('</div>')
        if ($divIdx -gt 0) {
            $closePos = $lastArtIdx + 10 + $divIdx + 6
            $content = $content.Insert($closePos, "`n" + $sidebarHtml + "`n</div></div>")
        }
    }

    if ($content -match '<div class="related">') {
        $content = [regex]::Replace($content, '<div class="related">.*?</div>\s*', $relatedHtml + "`n", [System.Text.RegularExpressions.RegexOptions]::Singleline)
    } else {
        $lastArt2 = $content.LastIndexOf('</article>')
        if ($lastArt2 -gt 0) {
            $content = $content.Insert($lastArt2, "`n" + $relatedHtml)
        }
    }

    $footerIdx = $content.IndexOf('<footer>')
    if ($footerIdx -gt 0) {
        $content = $content.Insert($footerIdx, $prevNextHtml + "`n" + $footerExtraHtml + "`n")
    }

    $content | Set-Content -Path $filepath -Encoding UTF8 -NoNewline
    Write-Host "  [OK] $filename" -ForegroundColor Green
}

$allHtml = Get-ChildItem $BASE -Filter "*.html" | Where-Object { $_.Name -ne "index.html" }
$total = $allHtml.Count
$done = 0
Write-Host "Morai Navigation Upgrade - Processing $total files..."
foreach ($file in $allHtml) {
    $done++
    Write-Host "[$done/$total] $($file.Name)..."
    try {
        Update-File $file.FullName
    } catch {
        Write-Host "  [ERROR] $($_.Exception.Message)" -ForegroundColor Red
    }
}
Write-Host "Done! All articles updated."
