.class Lcom/sigmob/sdk/downloader/core/dispatcher/a$a$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/downloader/core/dispatcher/a$a;->a(Lcom/sigmob/sdk/downloader/f;IILjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/downloader/f;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Lcom/sigmob/sdk/downloader/core/dispatcher/a$a;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/downloader/core/dispatcher/a$a;Lcom/sigmob/sdk/downloader/f;IILjava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$a$9;->e:Lcom/sigmob/sdk/downloader/core/dispatcher/a$a;

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$a$9;->a:Lcom/sigmob/sdk/downloader/f;

    iput p3, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$a$9;->b:I

    iput p4, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$a$9;->c:I

    iput-object p5, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$a$9;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$a$9;->a:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/f;->F()Lcom/sigmob/sdk/downloader/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$a$9;->a:Lcom/sigmob/sdk/downloader/f;

    iget v2, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$a$9;->b:I

    iget v3, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$a$9;->c:I

    iget-object v4, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$a$9;->d:Ljava/util/Map;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;IILjava/util/Map;)V

    :cond_0
    return-void
.end method
