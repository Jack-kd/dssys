.class Lcom/sigmob/sdk/nativead/ab$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/sdk/common/utils/ImageManager$BitmapLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/nativead/ab;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/windad/natives/WindNativeAdData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/nativead/ab;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/nativead/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/ab$1;->a:Lcom/sigmob/sdk/nativead/ab;

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

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$1;->a:Lcom/sigmob/sdk/nativead/ab;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/nativead/ab;->a(Lcom/sigmob/sdk/nativead/ab;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-void
.end method
