.class Lcom/sigmob/sdk/mraid2/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/mraid2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid2/c;


# direct methods
.method private constructor <init>(Lcom/sigmob/sdk/mraid2/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/c$a;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sigmob/sdk/mraid2/c;Lcom/sigmob/sdk/mraid2/c$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid2/c$a;-><init>(Lcom/sigmob/sdk/mraid2/c;)V

    return-void
.end method

.method private synthetic a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$a;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->c(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/sigmob/sdk/videoplayer/c;->h(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid2/c$a;->a()V

    return-void
.end method

.method private synthetic b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$a;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->c(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/sigmob/sdk/videoplayer/c;->j(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/mraid2/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid2/c$a;->b()V

    return-void
.end method


# virtual methods
.method public canInstallByVid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$a;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid2/c;->getAdUnitList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/rtb/Ad;

    move-result-object v4

    iget-object v4, v4, Lcom/sigmob/sdk/base/models/rtb/Ad;->vid:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_3

    return v2

    :cond_3
    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getApkName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getApkMd5()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p1, ""

    :goto_2
    move-object p2, p1

    goto :goto_3

    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".apk"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :goto_3
    invoke-virtual {v3, p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->canInstall(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public canOpen(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/o;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public canOpenByVid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$a;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid2/c;->getAdUnitList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/rtb/Ad;

    move-result-object v3

    iget-object v3, v3, Lcom/sigmob/sdk/base/models/rtb/Ad;->vid:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->canOpen()Z

    move-result p1

    return p1

    :cond_3
    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/o;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public hideSystemUI()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/sigmob/sdk/mraid2/A;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/mraid2/A;-><init>(Lcom/sigmob/sdk/mraid2/c$a;)V

    invoke-static {v0}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory;->MainThreadRun(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isOpenListReport()Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/o;->S()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/base/services/b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/o;->L()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onOpenListReport()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/sigmob/sdk/base/services/b;->c()V

    return-void
.end method

.method public showSystemUI()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/sigmob/sdk/mraid2/z;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/mraid2/z;-><init>(Lcom/sigmob/sdk/mraid2/c$a;)V

    invoke-static {v0}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory;->MainThreadRun(Ljava/lang/Runnable;)V

    return-void
.end method
