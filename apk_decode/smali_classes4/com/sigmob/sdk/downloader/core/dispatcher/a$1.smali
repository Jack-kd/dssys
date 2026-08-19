.class Lcom/sigmob/sdk/downloader/core/dispatcher/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/downloader/core/dispatcher/a;->a(Ljava/util/Collection;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Collection;

.field final synthetic b:Ljava/lang/Exception;

.field final synthetic c:Lcom/sigmob/sdk/downloader/core/dispatcher/a;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/downloader/core/dispatcher/a;Ljava/util/Collection;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$1;->c:Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$1;->a:Ljava/util/Collection;

    iput-object p3, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$1;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$1;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/f;->F()Lcom/sigmob/sdk/downloader/c;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/sigmob/sdk/downloader/core/cause/a;->b:Lcom/sigmob/sdk/downloader/core/cause/a;

    iget-object v4, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$1;->b:Ljava/lang/Exception;

    invoke-interface {v2, v1, v3, v4}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    return-void
.end method
