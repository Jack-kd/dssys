.class Lcom/sigmob/sdk/downloader/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/downloader/a;->a(Lcom/sigmob/sdk/downloader/c;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/sigmob/sdk/downloader/c;

.field final synthetic c:Lcom/sigmob/sdk/downloader/a;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/downloader/a;Ljava/util/List;Lcom/sigmob/sdk/downloader/c;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/a$1;->c:Lcom/sigmob/sdk/downloader/a;

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/a$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/sigmob/sdk/downloader/a$1;->b:Lcom/sigmob/sdk/downloader/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/downloader/f;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/a$1;->c:Lcom/sigmob/sdk/downloader/a;

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/a;->a()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$1;->c:Lcom/sigmob/sdk/downloader/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/f;->s()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/downloader/a;->a(Lcom/sigmob/sdk/downloader/a;Z)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sigmob/sdk/downloader/a$1;->b:Lcom/sigmob/sdk/downloader/c;

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/downloader/f;->c(Lcom/sigmob/sdk/downloader/c;)V

    goto :goto_0

    :cond_1
    return-void
.end method
