.class Lcom/sigmob/sdk/videoAd/j$9$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/j$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/j$9;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/videoAd/j$9;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/j$9$1;->a:Lcom/sigmob/sdk/videoAd/j$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$9$1;->a:Lcom/sigmob/sdk/videoAd/j$9;

    iget-object v0, v0, Lcom/sigmob/sdk/videoAd/j$9;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->a(Lcom/sigmob/sdk/videoAd/j;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$9$1;->a:Lcom/sigmob/sdk/videoAd/j$9;

    iget-object v0, v0, Lcom/sigmob/sdk/videoAd/j$9;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->i(Lcom/sigmob/sdk/videoAd/j;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$9$1;->a:Lcom/sigmob/sdk/videoAd/j$9;

    iget-object v0, v0, Lcom/sigmob/sdk/videoAd/j$9;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->b(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/common/am$a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$9$1;->a:Lcom/sigmob/sdk/videoAd/j$9;

    iget-object v0, v0, Lcom/sigmob/sdk/videoAd/j$9;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->b(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/common/am$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/am$a;->a()V

    return-void
.end method

.method public onSelected(ILjava/lang/String;Z)V
    .locals 0

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$9$1;->a:Lcom/sigmob/sdk/videoAd/j$9;

    iget-object p1, p1, Lcom/sigmob/sdk/videoAd/j$9;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->a(Lcom/sigmob/sdk/videoAd/j;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$9$1;->a:Lcom/sigmob/sdk/videoAd/j$9;

    iget-object p1, p1, Lcom/sigmob/sdk/videoAd/j$9;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->i(Lcom/sigmob/sdk/videoAd/j;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$9$1;->a:Lcom/sigmob/sdk/videoAd/j$9;

    iget-object p1, p1, Lcom/sigmob/sdk/videoAd/j$9;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->b(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/common/am$a;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$9$1;->a:Lcom/sigmob/sdk/videoAd/j$9;

    iget-object p1, p1, Lcom/sigmob/sdk/videoAd/j$9;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->b(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/common/am$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/common/am$a;->a()V

    return-void
.end method

.method public onShow()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$9$1;->a:Lcom/sigmob/sdk/videoAd/j$9;

    iget-object v0, v0, Lcom/sigmob/sdk/videoAd/j$9;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->d(Lcom/sigmob/sdk/videoAd/j;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$9$1;->a:Lcom/sigmob/sdk/videoAd/j$9;

    iget-object v0, v0, Lcom/sigmob/sdk/videoAd/j$9;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->b(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/common/am$a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$9$1;->a:Lcom/sigmob/sdk/videoAd/j$9;

    iget-object v0, v0, Lcom/sigmob/sdk/videoAd/j$9;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->b(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/common/am$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/am$a;->b()V

    return-void
.end method
