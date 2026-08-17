.class Lcom/sigmob/sdk/downloader/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/sdk/common/utils/ImageManager$BitmapLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/downloader/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/downloader/h;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/downloader/h;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/h$1;->a:Lcom/sigmob/sdk/downloader/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapLoadFailed()V
    .locals 0

    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/h$1;->a:Lcom/sigmob/sdk/downloader/h;

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/h;->b(Lcom/sigmob/sdk/downloader/h;)Landroid/widget/RemoteViews;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/h$1;->a:Lcom/sigmob/sdk/downloader/h;

    invoke-static {v1}, Lcom/sigmob/sdk/downloader/h;->a(Lcom/sigmob/sdk/downloader/h;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "sig_download_notification_icon"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    return-void
.end method
