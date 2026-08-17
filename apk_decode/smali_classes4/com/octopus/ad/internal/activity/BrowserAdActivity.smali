.class public Lcom/octopus/ad/internal/activity/BrowserAdActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:Landroid/webkit/WebView;

.field private d:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->a:Ljava/util/LinkedList;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/activity/BrowserAdActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->c:Landroid/webkit/WebView;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 11
    iget v0, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->b:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/activity/BrowserAdActivity;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-static {p1}, Lcom/octopus/ad/internal/c/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 7
    iget p1, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->b:I

    if-nez p1, :cond_2

    .line 8
    invoke-direct {p0}, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->a()V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 9
    :cond_2
    :goto_1
    iget p1, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 10
    :goto_2
    const-string v0, "OctopusAd"

    const-string v1, "An Exception Caught"

    invoke-static {v0, v1, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/activity/BrowserAdActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/octopus/ad/internal/activity/BrowserAdActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->d:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 1
    const-string v0, "...........................backPressed..........................."

    .line 2
    .line 3
    const-string v1, "OctopusAd"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->c:Landroid/webkit/WebView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->c:Landroid/webkit/WebView;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 21
    .line 22
    .line 23
    const-string v0, " mWebView.goBack()"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-direct {p0}, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->a()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/octopus/ad/R$layout;->oct_activity_in_app_browser:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->a:Ljava/util/LinkedList;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/webkit/WebView;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->c:Landroid/webkit/WebView;

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->a()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "REPEAT_NUM"

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput p1, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->b:I

    .line 40
    .line 41
    sget p1, Lcom/octopus/ad/R$id;->tv_title:I

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroid/widget/TextView;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->d:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/4 v0, -0x1

    .line 60
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 61
    .line 62
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 69
    .line 70
    .line 71
    sget p1, Lcom/octopus/ad/R$id;->web_view:I

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Landroid/webkit/WebView;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Landroid/view/ViewGroup;

    .line 95
    .line 96
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->c:Landroid/webkit/WebView;

    .line 104
    .line 105
    invoke-static {p1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->c:Landroid/webkit/WebView;

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->c:Landroid/webkit/WebView;

    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const/4 v0, 0x1

    .line 120
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->c:Landroid/webkit/WebView;

    .line 124
    .line 125
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 130
    .line 131
    .line 132
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->c:Landroid/webkit/WebView;

    .line 136
    .line 137
    invoke-virtual {v2, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 138
    .line 139
    .line 140
    sget p1, Lcom/octopus/ad/R$id;->progress_bar:I

    .line 141
    .line 142
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    check-cast p1, Landroid/widget/ProgressBar;

    .line 147
    .line 148
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->c:Landroid/webkit/WebView;

    .line 149
    .line 150
    new-instance v1, Lcom/octopus/ad/internal/activity/BrowserAdActivity$1;

    .line 151
    .line 152
    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/activity/BrowserAdActivity$1;-><init>(Lcom/octopus/ad/internal/activity/BrowserAdActivity;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->c:Landroid/webkit/WebView;

    .line 159
    .line 160
    new-instance v1, Lcom/octopus/ad/internal/activity/BrowserAdActivity$2;

    .line 161
    .line 162
    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/activity/BrowserAdActivity$2;-><init>(Lcom/octopus/ad/internal/activity/BrowserAdActivity;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->c:Landroid/webkit/WebView;

    .line 169
    .line 170
    new-instance v1, Lcom/octopus/ad/internal/activity/BrowserAdActivity$3;

    .line 171
    .line 172
    invoke-direct {v1, p0, p1}, Lcom/octopus/ad/internal/activity/BrowserAdActivity$3;-><init>(Lcom/octopus/ad/internal/activity/BrowserAdActivity;Landroid/widget/ProgressBar;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 176
    .line 177
    .line 178
    sget p1, Lcom/octopus/ad/R$id;->close_iv:I

    .line 179
    .line 180
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    check-cast p1, Landroid/widget/ImageView;

    .line 185
    .line 186
    new-instance v0, Lcom/octopus/ad/internal/activity/BrowserAdActivity$4;

    .line 187
    .line 188
    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/activity/BrowserAdActivity$4;-><init>(Lcom/octopus/ad/internal/activity/BrowserAdActivity;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    .line 193
    .line 194
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/octopus/ad/internal/q;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    const-string v1, "dpForbid"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->c:Landroid/webkit/WebView;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->c:Landroid/webkit/WebView;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->c:Landroid/webkit/WebView;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->c:Landroid/webkit/WebView;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
