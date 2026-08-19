.class public final Lcom/baidu/oauth/sdkbqt/auth/i;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/oauth/sdkbqt/auth/i$e;,
        Lcom/baidu/oauth/sdkbqt/auth/i$a;,
        Lcom/baidu/oauth/sdkbqt/auth/i$d;,
        Lcom/baidu/oauth/sdkbqt/auth/i$c;,
        Lcom/baidu/oauth/sdkbqt/auth/i$f;,
        Lcom/baidu/oauth/sdkbqt/auth/i$i;,
        Lcom/baidu/oauth/sdkbqt/auth/i$b;,
        Lcom/baidu/oauth/sdkbqt/auth/i$g;,
        Lcom/baidu/oauth/sdkbqt/auth/i$h;
    }
.end annotation


# static fields
.field public static final r:Ljava/lang/String; = "i"


# instance fields
.field public b:Ljava/util/Map;

.field public c:Lcom/baidu/oauth/sdkbqt/auth/i$i;

.field public d:Lcom/baidu/oauth/sdkbqt/auth/i$g;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Landroid/widget/ProgressBar;

.field public k:J

.field public l:Landroid/os/Handler;

.field public m:Lcom/baidu/oauth/sdkbqt/auth/i$h;

.field public n:Lcom/baidu/oauth/sdkbqt/auth/i$f;

.field public o:Lq/d;

.field public p:Lcom/baidu/oauth/sdkbqt/auth/i$c;

.field public q:Landroid/webkit/JsPromptResult;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->b:Ljava/util/Map;

    .line 3
    new-instance p1, Lcom/baidu/oauth/sdkbqt/auth/i$g;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/baidu/oauth/sdkbqt/auth/i$g;-><init>(Lcom/baidu/oauth/sdkbqt/auth/i;Lcom/baidu/oauth/sdkbqt/auth/n;)V

    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->d:Lcom/baidu/oauth/sdkbqt/auth/i$g;

    .line 4
    new-instance p1, Lcom/baidu/oauth/sdkbqt/auth/n;

    invoke-direct {p1, p0}, Lcom/baidu/oauth/sdkbqt/auth/n;-><init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V

    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->l:Landroid/os/Handler;

    .line 5
    new-instance p1, Lcom/baidu/oauth/sdkbqt/auth/i$h;

    invoke-direct {p1, p0, v0}, Lcom/baidu/oauth/sdkbqt/auth/i$h;-><init>(Lcom/baidu/oauth/sdkbqt/auth/i;Lcom/baidu/oauth/sdkbqt/auth/n;)V

    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->m:Lcom/baidu/oauth/sdkbqt/auth/i$h;

    .line 6
    invoke-virtual {p0}, Lcom/baidu/oauth/sdkbqt/auth/i;->B()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->b:Ljava/util/Map;

    .line 9
    new-instance p1, Lcom/baidu/oauth/sdkbqt/auth/i$g;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/baidu/oauth/sdkbqt/auth/i$g;-><init>(Lcom/baidu/oauth/sdkbqt/auth/i;Lcom/baidu/oauth/sdkbqt/auth/n;)V

    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->d:Lcom/baidu/oauth/sdkbqt/auth/i$g;

    .line 10
    new-instance p1, Lcom/baidu/oauth/sdkbqt/auth/n;

    invoke-direct {p1, p0}, Lcom/baidu/oauth/sdkbqt/auth/n;-><init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V

    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->l:Landroid/os/Handler;

    .line 11
    new-instance p1, Lcom/baidu/oauth/sdkbqt/auth/i$h;

    invoke-direct {p1, p0, p2}, Lcom/baidu/oauth/sdkbqt/auth/i$h;-><init>(Lcom/baidu/oauth/sdkbqt/auth/i;Lcom/baidu/oauth/sdkbqt/auth/n;)V

    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->m:Lcom/baidu/oauth/sdkbqt/auth/i$h;

    .line 12
    invoke-virtual {p0}, Lcom/baidu/oauth/sdkbqt/auth/i;->B()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->b:Ljava/util/Map;

    .line 15
    new-instance p1, Lcom/baidu/oauth/sdkbqt/auth/i$g;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/baidu/oauth/sdkbqt/auth/i$g;-><init>(Lcom/baidu/oauth/sdkbqt/auth/i;Lcom/baidu/oauth/sdkbqt/auth/n;)V

    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->d:Lcom/baidu/oauth/sdkbqt/auth/i$g;

    .line 16
    new-instance p1, Lcom/baidu/oauth/sdkbqt/auth/n;

    invoke-direct {p1, p0}, Lcom/baidu/oauth/sdkbqt/auth/n;-><init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V

    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->l:Landroid/os/Handler;

    .line 17
    new-instance p1, Lcom/baidu/oauth/sdkbqt/auth/i$h;

    invoke-direct {p1, p0, p2}, Lcom/baidu/oauth/sdkbqt/auth/i$h;-><init>(Lcom/baidu/oauth/sdkbqt/auth/i;Lcom/baidu/oauth/sdkbqt/auth/n;)V

    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->m:Lcom/baidu/oauth/sdkbqt/auth/i$h;

    .line 18
    invoke-virtual {p0}, Lcom/baidu/oauth/sdkbqt/auth/i;->B()V

    return-void
.end method

.method public static synthetic C(Lcom/baidu/oauth/sdkbqt/auth/i;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/baidu/oauth/sdkbqt/auth/i;->L()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D(Lcom/baidu/oauth/sdkbqt/auth/i;)Lcom/baidu/oauth/sdkbqt/auth/i$h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->m:Lcom/baidu/oauth/sdkbqt/auth/i$h;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic G(Lcom/baidu/oauth/sdkbqt/auth/i;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->k:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic I(Lcom/baidu/oauth/sdkbqt/auth/i;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->e:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic K(Lcom/baidu/oauth/sdkbqt/auth/i;)Lcom/baidu/oauth/sdkbqt/auth/i$i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->c:Lcom/baidu/oauth/sdkbqt/auth/i$i;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic M(Lcom/baidu/oauth/sdkbqt/auth/i;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->j:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic O(Lcom/baidu/oauth/sdkbqt/auth/i;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->b:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic P(Lcom/baidu/oauth/sdkbqt/auth/i;)Landroid/webkit/JsPromptResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->q:Landroid/webkit/JsPromptResult;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic Q(Lcom/baidu/oauth/sdkbqt/auth/i;)Lcom/baidu/oauth/sdkbqt/auth/i$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->p:Lcom/baidu/oauth/sdkbqt/auth/i$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic R(Lcom/baidu/oauth/sdkbqt/auth/i;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic S(Lcom/baidu/oauth/sdkbqt/auth/i;)Lcom/baidu/oauth/sdkbqt/auth/i$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->n:Lcom/baidu/oauth/sdkbqt/auth/i$f;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic T(Lcom/baidu/oauth/sdkbqt/auth/i;)Lcom/baidu/oauth/sdkbqt/auth/i$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->d:Lcom/baidu/oauth/sdkbqt/auth/i$g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic U(Lcom/baidu/oauth/sdkbqt/auth/i;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->f:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic a(Lcom/baidu/oauth/sdkbqt/auth/i;Landroid/webkit/JsPromptResult;)Landroid/webkit/JsPromptResult;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->q:Landroid/webkit/JsPromptResult;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic b(Lcom/baidu/oauth/sdkbqt/auth/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static d(Ljava/util/Map;Z)Ljava/lang/String;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_4

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-gtz v3, :cond_2

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const-string v3, "?"

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    :goto_1
    const-string v3, "&"

    .line 57
    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :goto_2
    const-string v3, "="

    .line 62
    .line 63
    if-nez v1, :cond_3

    .line 64
    .line 65
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception v4

    .line 73
    goto :goto_3

    .line 74
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    const-string v5, "UTF-8"

    .line 85
    .line 86
    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0
.end method

.method public static synthetic k(Lcom/baidu/oauth/sdkbqt/auth/i;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/baidu/oauth/sdkbqt/auth/i;->J()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p(Lcom/baidu/oauth/sdkbqt/auth/i;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->l:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic s(Lcom/baidu/oauth/sdkbqt/auth/i;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic u(Lcom/baidu/oauth/sdkbqt/auth/i;)Lq/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->o:Lq/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic x()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/oauth/sdkbqt/auth/i;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic z(Lcom/baidu/oauth/sdkbqt/auth/i;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->h:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "javascript:(function(){if(window.Pass&&Pass.client&&Pass.client.%s){ Pass.client.%s()}}())"

    .line 2
    .line 3
    filled-new-array {p1, p1}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final B()V
    .locals 2

    .line 1
    const-wide/32 v0, 0x15f90

    .line 2
    .line 3
    .line 4
    iput-wide v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->k:J

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/baidu/oauth/sdkbqt/auth/i;->H()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/baidu/oauth/sdkbqt/auth/d;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/baidu/oauth/sdkbqt/auth/d;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/baidu/oauth/sdkbqt/auth/d;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput-boolean v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->h:Z

    .line 27
    .line 28
    new-instance v0, Lcom/baidu/oauth/sdkbqt/auth/x;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/baidu/oauth/sdkbqt/auth/x;-><init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/baidu/oauth/sdkbqt/auth/y;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/baidu/oauth/sdkbqt/auth/y;-><init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/baidu/oauth/sdkbqt/auth/i;->E()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final E()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->b:Ljava/util/Map;

    .line 2
    .line 3
    new-instance v1, Lcom/baidu/oauth/sdkbqt/auth/B;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/baidu/oauth/sdkbqt/auth/B;-><init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "sapi_action_check_method_support"

    .line 9
    .line 10
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->b:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v1, Lcom/baidu/oauth/sdkbqt/auth/C;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/baidu/oauth/sdkbqt/auth/C;-><init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V

    .line 18
    .line 19
    .line 20
    const-string v2, "finish"

    .line 21
    .line 22
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->b:Ljava/util/Map;

    .line 26
    .line 27
    new-instance v1, Lcom/baidu/oauth/sdkbqt/auth/D;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/baidu/oauth/sdkbqt/auth/D;-><init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V

    .line 30
    .line 31
    .line 32
    const-string v2, "back"

    .line 33
    .line 34
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->b:Ljava/util/Map;

    .line 38
    .line 39
    new-instance v1, Lcom/baidu/oauth/sdkbqt/auth/e;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/baidu/oauth/sdkbqt/auth/e;-><init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V

    .line 42
    .line 43
    .line 44
    const-string v2, "action_set_title"

    .line 45
    .line 46
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->b:Ljava/util/Map;

    .line 50
    .line 51
    new-instance v1, Lcom/baidu/oauth/sdkbqt/auth/f;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/baidu/oauth/sdkbqt/auth/f;-><init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V

    .line 54
    .line 55
    .line 56
    const-string v2, "sapi_goBack"

    .line 57
    .line 58
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->b:Ljava/util/Map;

    .line 62
    .line 63
    new-instance v1, Lcom/baidu/oauth/sdkbqt/auth/g;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lcom/baidu/oauth/sdkbqt/auth/g;-><init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V

    .line 66
    .line 67
    .line 68
    const-string v2, "oauth_sso_hash"

    .line 69
    .line 70
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->b:Ljava/util/Map;

    .line 74
    .line 75
    new-instance v1, Lcom/baidu/oauth/sdkbqt/auth/o;

    .line 76
    .line 77
    invoke-direct {v1, p0}, Lcom/baidu/oauth/sdkbqt/auth/o;-><init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V

    .line 78
    .line 79
    .line 80
    const-string v2, "authorized_response"

    .line 81
    .line 82
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->b:Ljava/util/Map;

    .line 86
    .line 87
    new-instance v1, Lcom/baidu/oauth/sdkbqt/auth/q;

    .line 88
    .line 89
    invoke-direct {v1, p0}, Lcom/baidu/oauth/sdkbqt/auth/q;-><init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V

    .line 90
    .line 91
    .line 92
    const-string v2, "oauth_call_baidu"

    .line 93
    .line 94
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final F(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/oauth/sdkbqt/auth/t;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/baidu/oauth/sdkbqt/auth/t;-><init>(Lcom/baidu/oauth/sdkbqt/auth/i;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lo/g;->h(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string v0, "javascript:"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/baidu/oauth/sdkbqt/auth/i;->L()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final H()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v1

    .line 11
    invoke-static {v1}, Lo/d;->c(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0}, Lcom/baidu/oauth/sdkbqt/auth/i;->N()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final J()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/baidu/oauth/sdkbqt/auth/i;->stopLoading()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/baidu/oauth/sdkbqt/auth/v;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/baidu/oauth/sdkbqt/auth/v;-><init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final L()V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/oauth/sdkbqt/auth/w;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/baidu/oauth/sdkbqt/auth/w;-><init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final N()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const-string v3, ""

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v1, v3

    .line 21
    :goto_0
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_1

    .line 28
    .line 29
    move-object v3, v2

    .line 30
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v4, "bdoa_2.0.6.10_Android_"

    .line 36
    .line 37
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-static {v4}, Lo/g;->m(Landroid/content/Context;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v4, "_"

    .line 52
    .line 53
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-static {v5}, Lo/g;->j(Landroid/content/Context;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v0, " "

    .line 96
    .line 97
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    return-object v0
.end method

.method public final c(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "redirect_uri"

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const-string v2, "1"

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string p1, "silentAuth"

    .line 17
    .line 18
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    const-string p1, "response_type"

    .line 22
    .line 23
    const-string v3, "code"

    .line 24
    .line 25
    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    const-string p1, "display"

    .line 29
    .line 30
    const-string v3, "mobile"

    .line 31
    .line 32
    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/baidu/oauth/sdkbqt/auth/b;->b()Lcom/baidu/oauth/sdkbqt/auth/a;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/oauth/sdkbqt/auth/a;->f()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v4, "UTF-8"

    .line 46
    .line 47
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception v3

    .line 56
    sget-object v4, Lcom/baidu/oauth/sdkbqt/auth/i;->r:Ljava/lang/String;

    .line 57
    .line 58
    const-string v5, "Failed to encode redirect_uri"

    .line 59
    .line 60
    filled-new-array {v5, v3}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {v4, v3}, Lo/d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/baidu/oauth/sdkbqt/auth/a;->f()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    :goto_0
    const-string v0, "scope"

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/baidu/oauth/sdkbqt/auth/a;->g()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    const-string v0, "eh2_pg"

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/baidu/oauth/sdkbqt/auth/a;->e()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    const-string v0, "eh3_pgs"

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/baidu/oauth/sdkbqt/auth/a;->d()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/baidu/oauth/sdkbqt/auth/a;->i()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    const-string v2, "0"

    .line 109
    .line 110
    :goto_1
    const-string v0, "eh1_us1"

    .line 111
    .line 112
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    :cond_2
    const-string v0, "login_type"

    .line 116
    .line 117
    const-string v2, "sms"

    .line 118
    .line 119
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    const-string v0, "client_id"

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/baidu/oauth/sdkbqt/auth/a;->a()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    const-string p1, "state"

    .line 132
    .line 133
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->i:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v0, "L29hdXRoLzIuMC9hdXRob3JpemU="

    .line 144
    .line 145
    invoke-static {v0}, Lo/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v0, "?"

    .line 153
    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-static {v1}, Lo/g;->b(Ljava/util/HashMap;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    return-object p1
.end method

.method public destroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->g:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->l:Landroid/os/Handler;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->m:Lcom/baidu/oauth/sdkbqt/auth/i$h;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final e(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->e:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->e:Landroid/view/View;

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->e:Landroid/view/View;

    .line 12
    .line 13
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public f(Landroid/widget/ProgressBar;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->j:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->j:Landroid/widget/ProgressBar;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    :cond_1
    :goto_0
    return-void
.end method

.method public g(Lcom/baidu/oauth/sdkbqt/auth/i$b;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBlockNetworkLoads()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Lcom/baidu/oauth/sdkbqt/auth/i$b;->c:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->loadUrl(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public h(Lcom/baidu/oauth/sdkbqt/auth/i$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->p:Lcom/baidu/oauth/sdkbqt/auth/i$c;

    .line 2
    .line 3
    return-void
.end method

.method public i(Lcom/baidu/oauth/sdkbqt/auth/i$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->n:Lcom/baidu/oauth/sdkbqt/auth/i$f;

    .line 2
    .line 3
    return-void
.end method

.method public j(Lcom/baidu/oauth/sdkbqt/auth/i$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->c:Lcom/baidu/oauth/sdkbqt/auth/i$i;

    .line 2
    .line 3
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->i:Ljava/lang/String;

    .line 2
    .line 3
    new-instance p1, Lcom/baidu/oauth/sdkbqt/auth/k;

    .line 4
    .line 5
    invoke-direct {p1}, Lcom/baidu/oauth/sdkbqt/auth/k;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/baidu/oauth/sdkbqt/auth/s;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/baidu/oauth/sdkbqt/auth/s;-><init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/baidu/oauth/sdkbqt/auth/k;->a(Lq/c;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/baidu/oauth/sdkbqt/auth/i;->m(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public m(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->F(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public n(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/baidu/oauth/sdkbqt/auth/k;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/oauth/sdkbqt/auth/k;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/baidu/oauth/sdkbqt/auth/r;

    .line 7
    .line 8
    invoke-direct {v1, p0, p2, p1}, Lcom/baidu/oauth/sdkbqt/auth/r;-><init>(Lcom/baidu/oauth/sdkbqt/auth/i;Ljava/util/Map;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/baidu/oauth/sdkbqt/auth/k;->a(Lq/c;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public o(Lq/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->o:Lq/d;

    .line 2
    .line 3
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->j:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 10
    .line 11
    iput p1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 12
    .line 13
    iput p2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 14
    .line 15
    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->j:Landroid/widget/ProgressBar;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public overScrollBy(IIIIIIIIZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->e:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->f:Landroid/view/View;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_2
    invoke-super/range {p0 .. p9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public q()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/app/Activity;

    .line 12
    .line 13
    invoke-static {v0}, Lo/g;->f(Landroid/app/Activity;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/oauth/sdkbqt/auth/i;->v()V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->e:Landroid/view/View;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->f:Landroid/view/View;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/oauth/sdkbqt/auth/i;->v()V

    .line 44
    .line 45
    .line 46
    :cond_3
    return-void
.end method

.method public final r(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->f:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->f:Landroid/view/View;

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->f:Landroid/view/View;

    .line 12
    .line 13
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public reload()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->d:Lcom/baidu/oauth/sdkbqt/auth/i$g;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/baidu/oauth/sdkbqt/auth/i$g;->a:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/baidu/oauth/sdkbqt/auth/i;->loadUrl(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->reload()V

    .line 12
    .line 13
    .line 14
    :goto_0
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->d:Lcom/baidu/oauth/sdkbqt/auth/i$g;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/baidu/oauth/sdkbqt/auth/i$g;->a()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public scrollTo(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->e:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->f:Landroid/view/View;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    invoke-super {p0, v0, v0}, Landroid/view/View;->scrollTo(II)V

    .line 23
    .line 24
    .line 25
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public stopLoading()V
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->i:Ljava/lang/String;

    .line 2
    .line 3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->c(Ljava/lang/Boolean;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->loadUrl(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->n:Lcom/baidu/oauth/sdkbqt/auth/i$f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/baidu/oauth/sdkbqt/auth/u;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/baidu/oauth/sdkbqt/auth/u;-><init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->i:Ljava/lang/String;

    .line 2
    .line 3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->c(Ljava/lang/Boolean;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->loadUrl(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final y(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "redirect_uri"

    .line 2
    .line 3
    const-string v1, "UTF-8"

    .line 4
    .line 5
    const-string v2, "sso_hash"

    .line 6
    .line 7
    new-instance v3, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "response_type"

    .line 13
    .line 14
    const-string v5, "sso_auth_code"

    .line 15
    .line 16
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    const-string v4, "display"

    .line 20
    .line 21
    const-string v5, "mobile"

    .line 22
    .line 23
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v4

    .line 35
    sget-object v5, Lcom/baidu/oauth/sdkbqt/auth/i;->r:Ljava/lang/String;

    .line 36
    .line 37
    const-string v6, "Failed to encode sso_hash"

    .line 38
    .line 39
    filled-new-array {v6, v4}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v5, v4}, Lo/d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-static {}, Lcom/baidu/oauth/sdkbqt/auth/b;->b()Lcom/baidu/oauth/sdkbqt/auth/a;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string v2, "1"

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    :try_start_1
    invoke-virtual {p1}, Lcom/baidu/oauth/sdkbqt/auth/a;->f()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {v4, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catch_1
    move-exception v1

    .line 70
    sget-object v4, Lcom/baidu/oauth/sdkbqt/auth/i;->r:Ljava/lang/String;

    .line 71
    .line 72
    const-string v5, "Failed to encode redirect_uri"

    .line 73
    .line 74
    filled-new-array {v5, v1}, [Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v4, v1}, Lo/d;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/baidu/oauth/sdkbqt/auth/a;->f()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    :goto_1
    const-string v0, "scope"

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/baidu/oauth/sdkbqt/auth/a;->g()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    const-string v0, "client_id"

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/baidu/oauth/sdkbqt/auth/a;->a()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/baidu/oauth/sdkbqt/auth/a;->i()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    .line 112
    move-object v0, v2

    .line 113
    goto :goto_2

    .line 114
    :cond_0
    const-string v0, "0"

    .line 115
    .line 116
    :goto_2
    const-string v1, "eh1_us1"

    .line 117
    .line 118
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    const-string v0, "eh2_pg"

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/baidu/oauth/sdkbqt/auth/a;->e()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    const-string v0, "eh3_pgs"

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/baidu/oauth/sdkbqt/auth/a;->d()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    :cond_1
    const-string p1, "client"

    .line 140
    .line 141
    const-string v0, "android"

    .line 142
    .line 143
    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    const-string p1, "clientfrom"

    .line 147
    .line 148
    const-string v0, "native"

    .line 149
    .line 150
    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    const-string p1, "suppcheck"

    .line 154
    .line 155
    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    const-string p1, "state"

    .line 159
    .line 160
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i;->i:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v0, "L29hdXRoLzIuMC9hdXRob3JpemU="

    .line 171
    .line 172
    invoke-static {v0}, Lo/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v0, "?"

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-static {v3}, Lo/g;->b(Ljava/util/HashMap;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    return-object p1
.end method
