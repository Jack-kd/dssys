.class Lcom/sigmob/sdk/downloader/core/file/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/downloader/core/file/d;-><init>(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;Lcom/sigmob/sdk/downloader/core/breakpoint/j;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/downloader/core/file/d;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/downloader/core/file/d;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/file/d$1;->a:Lcom/sigmob/sdk/downloader/core/file/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d$1;->a:Lcom/sigmob/sdk/downloader/core/file/d;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/file/d;->g()V

    return-void
.end method
