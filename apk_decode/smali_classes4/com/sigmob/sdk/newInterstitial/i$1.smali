.class Lcom/sigmob/sdk/newInterstitial/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/views/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/newInterstitial/i;-><init>(Landroid/app/Activity;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Lcom/sigmob/sdk/base/common/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/newInterstitial/i;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/newInterstitial/i;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$1;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i$1;->a:Lcom/sigmob/sdk/newInterstitial/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sigmob/sdk/newInterstitial/i;->a(Lcom/sigmob/sdk/newInterstitial/i;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i$1;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/i;->a(Lcom/sigmob/sdk/newInterstitial/i;)V

    return-void
.end method

.method public a(Ljava/lang/Error;)V
    .locals 0

    .line 2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$1;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->b(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    const-string p2, "appinfo"

    iput-object p2, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$1;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->b(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$1;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->c(Lcom/sigmob/sdk/newInterstitial/i;)V

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$1;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-virtual {p1}, Lcom/sigmob/sdk/newInterstitial/i;->a()Lcom/sigmob/sdk/base/common/ah;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "click"

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i$1;->a:Lcom/sigmob/sdk/newInterstitial/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/newInterstitial/i;->a(Lcom/sigmob/sdk/newInterstitial/i;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i$1;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/i;->d(Lcom/sigmob/sdk/newInterstitial/i;)V

    return-void
.end method
