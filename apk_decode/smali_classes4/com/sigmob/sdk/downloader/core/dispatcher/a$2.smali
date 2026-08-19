.class Lcom/sigmob/sdk/downloader/core/dispatcher/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/downloader/core/dispatcher/a;->a(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Collection;

.field final synthetic b:Ljava/util/Collection;

.field final synthetic c:Ljava/util/Collection;

.field final synthetic d:Lcom/sigmob/sdk/downloader/core/dispatcher/a;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/downloader/core/dispatcher/a;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$2;->d:Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$2;->a:Ljava/util/Collection;

    iput-object p3, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$2;->b:Ljava/util/Collection;

    iput-object p4, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$2;->c:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$2;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/f;->F()Lcom/sigmob/sdk/downloader/c;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v4, Lcom/sigmob/sdk/downloader/core/cause/a;->a:Lcom/sigmob/sdk/downloader/core/cause/a;

    invoke-interface {v3, v1, v4, v2}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$2;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/f;->F()Lcom/sigmob/sdk/downloader/c;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v4, Lcom/sigmob/sdk/downloader/core/cause/a;->e:Lcom/sigmob/sdk/downloader/core/cause/a;

    invoke-interface {v3, v1, v4, v2}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$2;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/f;->F()Lcom/sigmob/sdk/downloader/c;

    move-result-object v3

    if-eqz v3, :cond_4

    sget-object v4, Lcom/sigmob/sdk/downloader/core/cause/a;->d:Lcom/sigmob/sdk/downloader/core/cause/a;

    invoke-interface {v3, v1, v4, v2}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V

    goto :goto_2

    :cond_5
    return-void
.end method
