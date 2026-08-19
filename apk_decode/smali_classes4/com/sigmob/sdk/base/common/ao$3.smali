.class Lcom/sigmob/sdk/base/common/ao$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/ap$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/ao;->b(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/an;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/sigmob/sdk/base/common/ao;

.field final synthetic d:Landroid/net/Uri;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/sigmob/sdk/base/common/ao;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/common/ao;Lcom/sigmob/sdk/base/common/an;Landroid/content/Context;Lcom/sigmob/sdk/base/common/ao;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/ao$3;->f:Lcom/sigmob/sdk/base/common/ao;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/ao$3;->a:Lcom/sigmob/sdk/base/common/an;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/ao$3;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/sigmob/sdk/base/common/ao$3;->c:Lcom/sigmob/sdk/base/common/ao;

    iput-object p5, p0, Lcom/sigmob/sdk/base/common/ao$3;->d:Landroid/net/Uri;

    iput-object p6, p0, Lcom/sigmob/sdk/base/common/ao$3;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/common/ao$3;Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/base/common/ao$3;->b(Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;)V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ao$3;->f:Lcom/sigmob/sdk/base/common/ao;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/ao;->b(Lcom/sigmob/sdk/base/common/ao;)Lcom/sigmob/sdk/base/common/ao$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sigmob/sdk/base/common/ao$b;->b(Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/base/common/ao$3;Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/base/common/ao$3;->c(Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ao$3;->f:Lcom/sigmob/sdk/base/common/ao;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/ao;->b(Lcom/sigmob/sdk/base/common/ao;)Lcom/sigmob/sdk/base/common/ao$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sigmob/sdk/base/common/ao$b;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static synthetic c(Lcom/sigmob/sdk/base/common/ao$3;Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/base/common/ao$3;->d(Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ao$3;->f:Lcom/sigmob/sdk/base/common/ao;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/ao;->b(Lcom/sigmob/sdk/base/common/ao;)Lcom/sigmob/sdk/base/common/ao$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sigmob/sdk/base/common/ao$b;->b(Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static synthetic d(Lcom/sigmob/sdk/base/common/ao$3;Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/base/common/ao$3;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;)V

    return-void
.end method

.method private synthetic d(Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ao$3;->f:Lcom/sigmob/sdk/base/common/ao;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/ao;->b(Lcom/sigmob/sdk/base/common/ao;)Lcom/sigmob/sdk/base/common/ao$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sigmob/sdk/base/common/ao$b;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ao$3;->a:Lcom/sigmob/sdk/base/common/an;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/sigmob/sdk/base/common/an;->c:Lcom/sigmob/sdk/base/common/an;

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/sigmob/sdk/base/common/ao$3;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/ao$3;->c:Lcom/sigmob/sdk/base/common/ao;

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/ao$3;->f:Lcom/sigmob/sdk/base/common/ao;

    invoke-static {v4}, Lcom/sigmob/sdk/base/common/ao;->a(Lcom/sigmob/sdk/base/common/ao;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/sigmob/sdk/base/common/an;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/sigmob/sdk/base/common/ao;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAds;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/base/common/S;

    invoke-direct {v2, p0, p1, v0}, Lcom/sigmob/sdk/base/common/S;-><init>(Lcom/sigmob/sdk/base/common/ao$3;Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAds;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/base/common/T;

    invoke-direct {v2, p0, p1, v0}, Lcom/sigmob/sdk/base/common/T;-><init>(Lcom/sigmob/sdk/base/common/ao$3;Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/ao$3;->a:Lcom/sigmob/sdk/base/common/an;

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/ao$3;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ao$3;->d:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/ao$3;->c:Lcom/sigmob/sdk/base/common/ao;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/ao$3;->f:Lcom/sigmob/sdk/base/common/ao;

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/ao;->a(Lcom/sigmob/sdk/base/common/ao;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/sigmob/sdk/base/common/an;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/sigmob/sdk/base/common/ao;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAds;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/ao$3;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ao$3;->a:Lcom/sigmob/sdk/base/common/an;

    new-instance v1, Lcom/sigmob/sdk/base/common/P;

    invoke-direct {v1, p0, p2, v0}, Lcom/sigmob/sdk/base/common/P;-><init>(Lcom/sigmob/sdk/base/common/ao$3;Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAds;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/ao$3;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/ao$3;->a:Lcom/sigmob/sdk/base/common/an;

    new-instance v1, Lcom/sigmob/sdk/base/common/Q;

    invoke-direct {v1, p0, p2, v0}, Lcom/sigmob/sdk/base/common/Q;-><init>(Lcom/sigmob/sdk/base/common/ao$3;Ljava/lang/String;Lcom/sigmob/sdk/base/common/an;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
