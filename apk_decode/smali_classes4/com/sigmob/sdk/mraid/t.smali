.class public Lcom/sigmob/sdk/mraid/t;
.super Lcom/sigmob/sdk/mraid/n;

# interfaces
.implements Lcom/sigmob/sdk/mraid/n$a;
.implements Lcom/sigmob/sdk/videocache/d;


# static fields
.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3

.field public static final g:I = 0x4

.field public static final h:I = 0x0

.field public static final i:I = 0x1

.field public static final j:I = 0x2

.field public static final k:I = 0x4

.field public static final l:I = 0x8


# instance fields
.field private m:Lcom/sigmob/sdk/mraid/r;

.field private n:Ljava/lang/String;

.field private o:Lcom/sigmob/sdk/mraid/u;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/n;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid/t;)Lcom/sigmob/sdk/mraid/u;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/mraid/t;->o:Lcom/sigmob/sdk/mraid/u;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "127.0.0.1"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "/(.*)"

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/t;->n:Ljava/lang/String;

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->d()Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/t;->n:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->registerCacheListener(Lcom/sigmob/sdk/videocache/d;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/mraid/t;)Lcom/sigmob/sdk/mraid/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/mraid/t;->m:Lcom/sigmob/sdk/mraid/r;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/t;->m:Lcom/sigmob/sdk/mraid/r;

    return-object v0
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0

    .line 3
    new-instance p2, Lcom/sigmob/sdk/mraid/r;

    invoke-direct {p2, p1}, Lcom/sigmob/sdk/mraid/r;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/t;->m:Lcom/sigmob/sdk/mraid/r;

    new-instance p1, Lcom/sigmob/sdk/mraid/t$1;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/mraid/t$1;-><init>(Lcom/sigmob/sdk/mraid/t;)V

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/videoplayer/a;->setVideoPlayerStatusListener(Lcom/sigmob/sdk/videoplayer/k;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/mraid/u;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/sigmob/sdk/mraid/t;->o:Lcom/sigmob/sdk/mraid/u;

    return-void
.end method

.method public a(Ljava/io/File;Ljava/lang/String;I)V
    .locals 0

    .line 5
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 7
    const-string p1, "url"

    invoke-static {p1, p2}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/t;->o:Lcom/sigmob/sdk/mraid/u;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/n;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lcom/sigmob/sdk/mraid/u;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/t;->m:Lcom/sigmob/sdk/mraid/r;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "URL"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "proxy"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "127.0.0.1"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->d()Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->getProxyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/n;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/mraid/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/t;->m:Lcom/sigmob/sdk/mraid/r;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/videoplayer/a;->setUp(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/t;->m:Lcom/sigmob/sdk/mraid/r;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/a;->n()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/t;->m:Lcom/sigmob/sdk/mraid/r;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/t;->m:Lcom/sigmob/sdk/mraid/r;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/t;->m:Lcom/sigmob/sdk/mraid/r;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/t;->m:Lcom/sigmob/sdk/mraid/r;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/a;->r()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/t;->m:Lcom/sigmob/sdk/mraid/r;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/t;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->d()Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/t;->n:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->unregisterCacheListener(Lcom/sigmob/sdk/videocache/d;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/t;->m:Lcom/sigmob/sdk/mraid/r;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/a;->d()V

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 1

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/t;->m:Lcom/sigmob/sdk/mraid/r;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/videoplayer/a;->a(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/t;->m:Lcom/sigmob/sdk/mraid/r;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/a;->d()V

    return-void
.end method

.method public d(Lorg/json/JSONObject;)V
    .locals 0

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/t;->m:Lcom/sigmob/sdk/mraid/r;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/a;->j()V

    return-void
.end method

.method public e(Lorg/json/JSONObject;)V
    .locals 0

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/t;->m:Lcom/sigmob/sdk/mraid/r;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/a;->i()V

    return-void
.end method

.method public f(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/t;->m:Lcom/sigmob/sdk/mraid/r;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "muted"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/t;->m:Lcom/sigmob/sdk/mraid/r;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/videoplayer/a;->setMute(Z)V

    return-void
.end method

.method public g(Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/t;->m:Lcom/sigmob/sdk/mraid/r;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "seekTime"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/t;->m:Lcom/sigmob/sdk/mraid/r;

    double-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/videoplayer/a;->a(I)V

    return-void
.end method

.method public h(Lorg/json/JSONObject;)V
    .locals 8

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/t;->m:Lcom/sigmob/sdk/mraid/r;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "frame"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "x"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-int v1, v4

    const-string v4, "y"

    invoke-virtual {p1, v4, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-int v2, v2

    const-string v3, "w"

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-virtual {p1, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-int v3, v6

    const-string v6, "h"

    invoke-virtual {p1, v6, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-int p1, v4

    if-lez v3, :cond_2

    int-to-float v3, v3

    invoke-static {v3, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v3

    :cond_2
    if-lez p1, :cond_3

    int-to-float p1, p1

    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    :cond_3
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v3, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/t;->m:Lcom/sigmob/sdk/mraid/r;

    int-to-float v1, v1

    invoke-static {v1, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setX(F)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/t;->m:Lcom/sigmob/sdk/mraid/r;

    int-to-float v1, v2

    invoke-static {v1, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/t;->m:Lcom/sigmob/sdk/mraid/r;

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/t;->m:Lcom/sigmob/sdk/mraid/r;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_4
    :goto_0
    return-void
.end method
