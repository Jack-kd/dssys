.class Lcom/sigmob/sdk/splash/i$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/splash/i;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/splash/i;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/splash/i;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/splash/i$8;->a:Lcom/sigmob/sdk/splash/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$8;->a:Lcom/sigmob/sdk/splash/i;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$8;->a:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/i;->c(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$8;->a:Lcom/sigmob/sdk/splash/i;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/sigmob/sdk/splash/i$8;->a:Lcom/sigmob/sdk/splash/i;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, p0, Lcom/sigmob/sdk/splash/i$8;->a:Lcom/sigmob/sdk/splash/i;

    invoke-static {v2}, Lcom/sigmob/sdk/splash/i;->c(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    int-to-float v3, v3

    invoke-static {v3, v0}, Lcom/czhj/sdk/common/utils/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sigmob/sdk/base/models/ClickCommon;->adarea_x:Ljava/lang/String;

    const/4 v3, 0x1

    aget v1, v1, v3

    int-to-float v1, v1

    invoke-static {v1, v0}, Lcom/czhj/sdk/common/utils/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/sigmob/sdk/base/models/ClickCommon;->adarea_y:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/i$8;->a:Lcom/sigmob/sdk/splash/i;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, v0}, Lcom/czhj/sdk/common/utils/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/sigmob/sdk/base/models/ClickCommon;->adarea_w:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/i$8;->a:Lcom/sigmob/sdk/splash/i;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, v0}, Lcom/czhj/sdk/common/utils/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sigmob/sdk/base/models/ClickCommon;->adarea_h:Ljava/lang/String;

    return-void
.end method
