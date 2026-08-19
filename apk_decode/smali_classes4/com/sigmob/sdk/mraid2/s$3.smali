.class Lcom/sigmob/sdk/mraid2/s$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/mraid2/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid2/s;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/mraid2/s;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/s$3;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/s$3;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/s;->q(Lcom/sigmob/sdk/mraid2/s;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s$3;->a:Lcom/sigmob/sdk/mraid2/s;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid2/s;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/s$3;->a:Lcom/sigmob/sdk/mraid2/s;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid2/s;->g:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/s$3;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/s;->c(Lcom/sigmob/sdk/mraid2/s;)Lcom/sigmob/sdk/nativead/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sigmob/sdk/mraid2/s;->b(Lcom/sigmob/sdk/mraid2/s;Landroid/app/Dialog;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/s$3;->a:Lcom/sigmob/sdk/mraid2/s;

    new-instance v2, Lcom/sigmob/sdk/nativead/b;

    invoke-direct {v2, p1, v0}, Lcom/sigmob/sdk/nativead/b;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {v1, v2}, Lcom/sigmob/sdk/mraid2/s;->a(Lcom/sigmob/sdk/mraid2/s;Lcom/sigmob/sdk/nativead/b;)Lcom/sigmob/sdk/nativead/b;

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/s$3;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/s;->c(Lcom/sigmob/sdk/mraid2/s;)Lcom/sigmob/sdk/nativead/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/nativead/b;->a()V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/s$3;->a:Lcom/sigmob/sdk/mraid2/s;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/s;->c(Lcom/sigmob/sdk/mraid2/s;)Lcom/sigmob/sdk/nativead/b;

    move-result-object p1

    new-instance v0, Lcom/sigmob/sdk/mraid2/s$3$1;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/mraid2/s$3$1;-><init>(Lcom/sigmob/sdk/mraid2/s$3;)V

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/nativead/b;->a(Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;)V

    :cond_2
    :goto_0
    return-void
.end method
