.class Lcom/sigmob/sdk/newInterstitial/i$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/newInterstitial/i;->a(Landroid/widget/Button;Lcom/sigmob/sdk/base/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/a;

.field final synthetic b:Lcom/sigmob/sdk/newInterstitial/i;

.field private c:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/newInterstitial/i;Lcom/sigmob/sdk/base/a;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$2;->b:Lcom/sigmob/sdk/newInterstitial/i;

    iput-object p2, p0, Lcom/sigmob/sdk/newInterstitial/i$2;->a:Lcom/sigmob/sdk/base/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object p2, p0, Lcom/sigmob/sdk/newInterstitial/i$2;->c:Landroid/view/MotionEvent;

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$2;->b:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->b(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/sigmob/sdk/newInterstitial/i$2;->c:Landroid/view/MotionEvent;

    invoke-virtual {p1, v2, p2, v0}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->updateClickMarco(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Z)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->getCoordinate()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iget-object p2, p0, Lcom/sigmob/sdk/newInterstitial/i$2;->b:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p2}, Lcom/sigmob/sdk/newInterstitial/i;->b(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p2

    const-string v2, "btn"

    iput-object v2, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    iget-object p2, p0, Lcom/sigmob/sdk/newInterstitial/i$2;->b:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p2}, Lcom/sigmob/sdk/newInterstitial/i;->b(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p2

    iget-object v2, p0, Lcom/sigmob/sdk/newInterstitial/i$2;->a:Lcom/sigmob/sdk/base/a;

    sget-object v3, Lcom/sigmob/sdk/base/a;->h:Lcom/sigmob/sdk/base/a;

    if-ne v2, v3, :cond_2

    const-string v2, "ad"

    goto :goto_1

    :cond_2
    const-string v2, "endcard"

    :goto_1
    iput-object v2, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    iget-object p2, p0, Lcom/sigmob/sdk/newInterstitial/i$2;->b:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p2}, Lcom/sigmob/sdk/newInterstitial/i;->b(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p2

    iget-object v2, p0, Lcom/sigmob/sdk/newInterstitial/i$2;->b:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {v2}, Lcom/sigmob/sdk/newInterstitial/i;->b(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->noHasDownloadDialog()Z

    move-result v2

    iput-boolean v2, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    iget-object p2, p0, Lcom/sigmob/sdk/newInterstitial/i$2;->b:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p2}, Lcom/sigmob/sdk/newInterstitial/i;->b(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdConfig()Lcom/sigmob/sdk/base/common/i;

    move-result-object p2

    iget-object v2, p0, Lcom/sigmob/sdk/newInterstitial/i$2;->a:Lcom/sigmob/sdk/base/a;

    invoke-virtual {p2, v2, p1, v1}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Z)V

    :cond_3
    :goto_2
    return v0
.end method
