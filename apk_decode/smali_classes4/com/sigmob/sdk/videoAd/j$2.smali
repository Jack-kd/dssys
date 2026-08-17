.class Lcom/sigmob/sdk/videoAd/j$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/j;->g(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field a:Landroid/view/MotionEvent;

.field final synthetic b:Lcom/sigmob/sdk/videoAd/j;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/videoAd/j;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/j$2;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mCompanionAdsWidget click"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$2;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->c(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    const-string v1, "companion_click"

    invoke-static {p1, p2, v1, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$2;->a:Landroid/view/MotionEvent;

    if-nez p1, :cond_0

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/j$2;->a:Landroid/view/MotionEvent;

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$2;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->c(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object p1

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j$2;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/j;->I(Lcom/sigmob/sdk/videoAd/j;)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_PROGRESS_"

    invoke-virtual {p1, v2, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j$2;->a:Landroid/view/MotionEvent;

    invoke-virtual {p1, v1, p2, v0}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->updateClickMarco(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Z)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$2;->b:Lcom/sigmob/sdk/videoAd/j;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j$2;->a:Landroid/view/MotionEvent;

    invoke-static {v1, p2, v0}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->getCoordinate(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Z)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sigmob/sdk/videoAd/j;->h:Ljava/lang/String;

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$2;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->q(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoAd/f;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$2;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/j;->z()V

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$2;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->c(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    const-string p2, "0"

    iput-object p2, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    const-string p2, "companion"

    iput-object p2, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    const-string p2, "ad"

    iput-object p2, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$2;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->v(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object p1

    sget-object p2, Lcom/sigmob/sdk/base/a;->a:Lcom/sigmob/sdk/base/a;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j$2;->b:Lcom/sigmob/sdk/videoAd/j;

    iget-object v1, v1, Lcom/sigmob/sdk/videoAd/j;->h:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v0}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/j$2;->a:Landroid/view/MotionEvent;

    :cond_3
    :goto_0
    return v0
.end method
