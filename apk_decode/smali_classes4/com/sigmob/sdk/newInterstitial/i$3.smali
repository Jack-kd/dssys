.class Lcom/sigmob/sdk/newInterstitial/i$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/newInterstitial/i;->t()V
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

    iput-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$3;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i$3;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/i;->e(Lcom/sigmob/sdk/newInterstitial/i;)V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i$3;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-virtual {v0}, Lcom/sigmob/sdk/newInterstitial/i;->a()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "show_close"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i$3;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/i;->e(Lcom/sigmob/sdk/newInterstitial/i;)V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i$3;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-virtual {v0}, Lcom/sigmob/sdk/newInterstitial/i;->a()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "show_skip"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    return-void
.end method
