.class Lcom/sigmob/sdk/newInterstitial/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/sdk/common/utils/ImageManager$BitmapLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/newInterstitial/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/newInterstitial/h;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/newInterstitial/h;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/newInterstitial/h$1;->a:Lcom/sigmob/sdk/newInterstitial/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapLoadFailed()V
    .locals 0

    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/h$1;->a:Lcom/sigmob/sdk/newInterstitial/h;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/blurkit/a;->a(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {}, Lcom/sigmob/sdk/base/blurkit/a;->a()Lcom/sigmob/sdk/base/blurkit/a;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/base/blurkit/a;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/h$1;->a:Lcom/sigmob/sdk/newInterstitial/h;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/h;->a(Lcom/sigmob/sdk/newInterstitial/h;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
