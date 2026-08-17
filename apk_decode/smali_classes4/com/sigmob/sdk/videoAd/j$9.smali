.class Lcom/sigmob/sdk/videoAd/j$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/videoAd/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/j;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/videoAd/j;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/j$9;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$9;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->g(Lcom/sigmob/sdk/videoAd/j;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$9;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->c(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$9;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->h(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/nativead/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoAd/j;->a(Lcom/sigmob/sdk/videoAd/j;Landroid/app/Dialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$9;->a:Lcom/sigmob/sdk/videoAd/j;

    new-instance v1, Lcom/sigmob/sdk/nativead/b;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/j$9;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v2}, Lcom/sigmob/sdk/videoAd/j;->c(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/sigmob/sdk/nativead/b;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoAd/j;->a(Lcom/sigmob/sdk/videoAd/j;Lcom/sigmob/sdk/nativead/b;)Lcom/sigmob/sdk/nativead/b;

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$9;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->h(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/nativead/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/nativead/b;->a()V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$9;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->h(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/nativead/b;

    move-result-object p1

    new-instance v0, Lcom/sigmob/sdk/videoAd/j$9$1;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videoAd/j$9$1;-><init>(Lcom/sigmob/sdk/videoAd/j$9;)V

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/nativead/b;->a(Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;)V

    :cond_1
    :goto_0
    return-void
.end method
