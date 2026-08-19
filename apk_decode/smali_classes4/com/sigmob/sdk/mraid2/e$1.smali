.class Lcom/sigmob/sdk/mraid2/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/mraid2/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid2/e;-><init>(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid2/e;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/mraid2/e;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/e$1;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/mraid2/c;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/e$1;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/e;->a(Lcom/sigmob/sdk/mraid2/e;)Lcom/sigmob/sdk/mraid2/m;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/e$1;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/e;->a(Lcom/sigmob/sdk/mraid2/e;)Lcom/sigmob/sdk/mraid2/m;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e$1;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/e;->b(Lcom/sigmob/sdk/mraid2/e;)Lcom/sigmob/sdk/mraid2/c;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sigmob/sdk/mraid2/m;->a(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Lcom/sigmob/windad/WindAdError;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e$1;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/e;->a(Lcom/sigmob/sdk/mraid2/e;)Lcom/sigmob/sdk/mraid2/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e$1;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/e;->a(Lcom/sigmob/sdk/mraid2/e;)Lcom/sigmob/sdk/mraid2/m;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/mraid2/m;->a(Lcom/sigmob/windad/WindAdError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
