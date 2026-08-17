.class Lcom/meishu/sdk/core/view/gif/GifImageView$1;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/view/gif/GifImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/core/view/gif/GifImageView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/view/gif/GifImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView$1;->this$0:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView$1;->this$0:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/core/view/gif/GifImageView;->access$000(Lcom/meishu/sdk/core/view/gif/GifImageView;)Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView$1;->this$0:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/core/view/gif/GifImageView;->access$000(Lcom/meishu/sdk/core/view/gif/GifImageView;)Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView$1;->this$0:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/meishu/sdk/core/view/gif/GifImageView;->access$000(Lcom/meishu/sdk/core/view/gif/GifImageView;)Landroid/graphics/Bitmap;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
