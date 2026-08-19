.class Lcom/sigmob/sdk/downloader/core/dispatcher/a$a$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/downloader/core/dispatcher/a$a;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/downloader/f;

.field final synthetic b:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

.field final synthetic c:Lcom/sigmob/sdk/downloader/core/dispatcher/a$a;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/downloader/core/dispatcher/a$a;Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$a$7;->c:Lcom/sigmob/sdk/downloader/core/dispatcher/a$a;

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$a$7;->a:Lcom/sigmob/sdk/downloader/f;

    iput-object p3, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$a$7;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$a$7;->a:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/f;->F()Lcom/sigmob/sdk/downloader/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$a$7;->a:Lcom/sigmob/sdk/downloader/f;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a$a$7;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V

    :cond_0
    return-void
.end method
