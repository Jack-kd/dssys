.class Lcom/sigmob/sdk/base/views/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/views/af$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/g;->setAdUnit(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/g;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/views/g;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/g$1;->a:Lcom/sigmob/sdk/base/views/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/views/g$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/g$1;->d()V

    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/base/views/g$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/g$1;->c()V

    return-void
.end method

.method private synthetic c()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/g$1;->a:Lcom/sigmob/sdk/base/views/g;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->c(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/sigmob/sdk/videoplayer/c;->h(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic d()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/g$1;->a:Lcom/sigmob/sdk/base/views/g;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->c(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/sigmob/sdk/videoplayer/c;->j(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/views/O;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/base/views/O;-><init>(Lcom/sigmob/sdk/base/views/g$1;)V

    invoke-static {v0}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory;->MainThreadRun(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/views/P;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/base/views/P;-><init>(Lcom/sigmob/sdk/base/views/g$1;)V

    invoke-static {v0}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory;->MainThreadRun(Ljava/lang/Runnable;)V

    return-void
.end method
