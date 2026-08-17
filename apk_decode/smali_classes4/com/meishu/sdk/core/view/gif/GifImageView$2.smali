.class Lcom/meishu/sdk/core/view/gif/GifImageView$2;
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
    iput-object p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView$2;->this$0:Lcom/meishu/sdk/core/view/gif/GifImageView;

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
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView$2;->this$0:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/view/gif/GifImageView;->access$002(Lcom/meishu/sdk/core/view/gif/GifImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView$2;->this$0:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/view/gif/GifImageView;->access$102(Lcom/meishu/sdk/core/view/gif/GifImageView;Lcom/meishu/sdk/core/view/gif/GifDecoder;)Lcom/meishu/sdk/core/view/gif/GifDecoder;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView$2;->this$0:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/view/gif/GifImageView;->access$202(Lcom/meishu/sdk/core/view/gif/GifImageView;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView$2;->this$0:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/view/gif/GifImageView;->access$302(Lcom/meishu/sdk/core/view/gif/GifImageView;Z)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
