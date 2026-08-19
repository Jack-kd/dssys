.class Lcom/sigmob/sdk/newInterstitial/i$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/newInterstitial/i;->a(Lcom/sigmob/sdk/newInterstitial/SigAdPrivacyInfoView;Lcom/sigmob/sdk/base/a;)V
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

    iput-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$4;->b:Lcom/sigmob/sdk/newInterstitial/i;

    iput-object p2, p0, Lcom/sigmob/sdk/newInterstitial/i$4;->a:Lcom/sigmob/sdk/base/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iput-object p2, p0, Lcom/sigmob/sdk/newInterstitial/i$4;->c:Landroid/view/MotionEvent;

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$4;->b:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->b(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/newInterstitial/i$4;->c:Landroid/view/MotionEvent;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->updateClickMarco(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Z)V

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$4;->b:Lcom/sigmob/sdk/newInterstitial/i;

    iget-object p2, p0, Lcom/sigmob/sdk/newInterstitial/i$4;->a:Lcom/sigmob/sdk/base/a;

    invoke-static {p1, p2}, Lcom/sigmob/sdk/newInterstitial/i;->a(Lcom/sigmob/sdk/newInterstitial/i;Lcom/sigmob/sdk/base/a;)Z

    :cond_2
    :goto_0
    return v0
.end method
