.class Lcom/sigmob/sdk/downloader/core/dispatcher/a$a$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/downloader/core/dispatcher/a$a;->a(Lcom/sigmob/sdk/downloader/f;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/downloader/f;

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Lcom/sigmob/sdk/downloader/core/dispatcher/a$a;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/downloader/core/dispatcher/a$a;Lcom/sigmob/sdk/downloader/f;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$a$10;->d:Lcom/sigmob/sdk/downloader/core/dispatcher/a$a;

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$a$10;->a:Lcom/sigmob/sdk/downloader/f;

    iput p3, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$a$10;->b:I

    iput-wide p4, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$a$10;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$a$10;->a:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/f;->F()Lcom/sigmob/sdk/downloader/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$a$10;->a:Lcom/sigmob/sdk/downloader/f;

    iget v2, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$a$10;->b:I

    iget-wide v3, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$a$10;->c:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;IJ)V

    :cond_0
    return-void
.end method
