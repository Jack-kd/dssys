.class Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;


# direct methods
.method public constructor <init>(Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable$2;->a:Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable$2;->a:Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;

    iget v1, v0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->c:I

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->d:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method
