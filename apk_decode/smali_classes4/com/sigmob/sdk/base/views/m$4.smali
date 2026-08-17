.class Lcom/sigmob/sdk/base/views/m$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/sdk/common/utils/ImageManager$BitmapLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/m;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/m;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/views/m;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/m$4;->a:Lcom/sigmob/sdk/base/views/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapLoadFailed()V
    .locals 0

    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/m$4;->a:Lcom/sigmob/sdk/base/views/m;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/m;->c(Lcom/sigmob/sdk/base/views/m;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/m$4;->a:Lcom/sigmob/sdk/base/views/m;

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/m;->c(Lcom/sigmob/sdk/base/views/m;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/m$4;->a:Lcom/sigmob/sdk/base/views/m;

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/m;->d(Lcom/sigmob/sdk/base/views/m;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/m$4;->a:Lcom/sigmob/sdk/base/views/m;

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/m;->e(Lcom/sigmob/sdk/base/views/m;)V

    :cond_0
    return-void
.end method
