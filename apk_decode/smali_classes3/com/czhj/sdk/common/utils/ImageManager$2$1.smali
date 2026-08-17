.class Lcom/czhj/sdk/common/utils/ImageManager$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/czhj/sdk/common/utils/ImageManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/czhj/sdk/common/utils/ImageManager$2;


# direct methods
.method public constructor <init>(Lcom/czhj/sdk/common/utils/ImageManager$2;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/utils/ImageManager$2$1;->b:Lcom/czhj/sdk/common/utils/ImageManager$2;

    iput-object p2, p0, Lcom/czhj/sdk/common/utils/ImageManager$2$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/czhj/sdk/common/utils/ImageManager$2$1;->b:Lcom/czhj/sdk/common/utils/ImageManager$2;

    iget-object v0, v0, Lcom/czhj/sdk/common/utils/ImageManager$2;->b:Lcom/czhj/sdk/common/utils/ImageManager$BitmapLoadedListener;

    iget-object v1, p0, Lcom/czhj/sdk/common/utils/ImageManager$2$1;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/czhj/sdk/common/utils/ImageManager$BitmapLoadedListener;->onBitmapLoaded(Landroid/graphics/Bitmap;)V

    return-void
.end method
