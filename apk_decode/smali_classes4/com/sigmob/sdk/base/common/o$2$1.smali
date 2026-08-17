.class Lcom/sigmob/sdk/base/common/o$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/o$2;->a(Lcom/sigmob/sdk/downloader/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/downloader/f;

.field final synthetic b:Lcom/sigmob/sdk/base/common/o$2;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/common/o$2;Lcom/sigmob/sdk/downloader/f;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/o$2$1;->b:Lcom/sigmob/sdk/base/common/o$2;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/o$2$1;->a:Lcom/sigmob/sdk/downloader/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/o$2$1;->b:Lcom/sigmob/sdk/base/common/o$2;

    iget-object v0, v0, Lcom/sigmob/sdk/base/common/o$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/o$2$1;->a:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/f;->n()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/base/common/q;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method
