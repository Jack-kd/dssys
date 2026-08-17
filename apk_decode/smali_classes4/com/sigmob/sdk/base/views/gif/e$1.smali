.class Lcom/sigmob/sdk/base/views/gif/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/views/gif/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/gif/e;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/views/gif/e;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/gif/e$1;->a:Lcom/sigmob/sdk/base/views/gif/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/e$1;->a:Lcom/sigmob/sdk/base/views/gif/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/views/gif/e;->a(Lcom/sigmob/sdk/base/views/gif/e;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/e$1;->a:Lcom/sigmob/sdk/base/views/gif/e;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/views/gif/e;->a(Lcom/sigmob/sdk/base/views/gif/e;Lcom/sigmob/sdk/base/views/gif/a;)Lcom/sigmob/sdk/base/views/gif/a;

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/e$1;->a:Lcom/sigmob/sdk/base/views/gif/e;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/views/gif/e;->a(Lcom/sigmob/sdk/base/views/gif/e;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/e$1;->a:Lcom/sigmob/sdk/base/views/gif/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/views/gif/e;->a(Lcom/sigmob/sdk/base/views/gif/e;Z)Z

    return-void
.end method
