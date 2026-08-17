.class Lcom/sigmob/sdk/base/views/gif/e$2;
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

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/gif/e$2;->a:Lcom/sigmob/sdk/base/views/gif/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/e$2;->a:Lcom/sigmob/sdk/base/views/gif/e;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/gif/e;->a(Lcom/sigmob/sdk/base/views/gif/e;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/e$2;->a:Lcom/sigmob/sdk/base/views/gif/e;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/gif/e;->a(Lcom/sigmob/sdk/base/views/gif/e;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/e$2;->a:Lcom/sigmob/sdk/base/views/gif/e;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/gif/e;->a(Lcom/sigmob/sdk/base/views/gif/e;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
