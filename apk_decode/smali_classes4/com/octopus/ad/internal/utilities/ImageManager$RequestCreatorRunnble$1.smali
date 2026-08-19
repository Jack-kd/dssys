.class Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;

.field final synthetic val$bm:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble$1;->this$1:Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble$1;->val$bm:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble$1;->this$1:Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->imageView:Landroid/widget/ImageView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble$1;->val$bm:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
