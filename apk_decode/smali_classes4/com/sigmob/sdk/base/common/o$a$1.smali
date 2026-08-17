.class Lcom/sigmob/sdk/base/common/o$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/o$a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/o$a;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/common/o$a;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/o$a$1;->a:Lcom/sigmob/sdk/base/common/o$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/o$a$1;->a:Lcom/sigmob/sdk/base/common/o$a;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/o$a;->a(Lcom/sigmob/sdk/base/common/o$a;)Lcom/sigmob/sdk/downloader/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/f;->n()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/o$a$1;->a:Lcom/sigmob/sdk/base/common/o$a;

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/o$a;->b(Lcom/sigmob/sdk/base/common/o$a;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/base/common/q;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method
