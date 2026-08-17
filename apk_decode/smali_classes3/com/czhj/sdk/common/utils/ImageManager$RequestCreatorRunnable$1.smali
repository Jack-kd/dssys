.class Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;


# direct methods
.method public constructor <init>(Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable$1;->b:Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;

    iput-object p2, p0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable$1;->b:Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;

    iget-object v0, v0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->d:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable$1;->b:Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->d:Landroid/widget/ImageView;

    return-void
.end method
