.class Lcom/sigmob/sdk/newInterstitial/i$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/views/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/newInterstitial/i;->a(Lcom/sigmob/sdk/base/a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/a;

.field final synthetic b:Lcom/sigmob/sdk/newInterstitial/i;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/newInterstitial/i;Lcom/sigmob/sdk/base/a;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$5;->b:Lcom/sigmob/sdk/newInterstitial/i;

    iput-object p2, p0, Lcom/sigmob/sdk/newInterstitial/i$5;->a:Lcom/sigmob/sdk/base/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i$5;->b:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/i;->a(Lcom/sigmob/sdk/newInterstitial/i;)V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i$5;->b:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/i;->f(Lcom/sigmob/sdk/newInterstitial/i;)V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i$5;->b:Lcom/sigmob/sdk/newInterstitial/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sigmob/sdk/newInterstitial/i;->a(Lcom/sigmob/sdk/newInterstitial/i;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i$5;->b:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-virtual {v0}, Lcom/sigmob/sdk/newInterstitial/i;->a()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v2, "fourElements_close"

    invoke-interface {v0, v2, v1}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/Error;)V
    .locals 0

    .line 2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i$5;->b:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/i;->b(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i$5;->b:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/i;->b(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i$5;->b:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/i;->b(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdConfig()Lcom/sigmob/sdk/base/common/i;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/newInterstitial/i$5;->a:Lcom/sigmob/sdk/base/a;

    invoke-virtual {v0, v2, p1, p2, v1}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i$5;->b:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/i;->d(Lcom/sigmob/sdk/newInterstitial/i;)V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i$5;->b:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-virtual {v0}, Lcom/sigmob/sdk/newInterstitial/i;->a()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "fourElements_show"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    return-void
.end method
