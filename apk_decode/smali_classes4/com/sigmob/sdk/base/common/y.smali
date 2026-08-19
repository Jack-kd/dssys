.class public abstract Lcom/sigmob/sdk/base/common/y;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/sigmob/sdk/base/common/p;

.field protected b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private c:Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/common/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/y;->a:Lcom/sigmob/sdk/base/common/p;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/sigmob/sdk/base/common/p;)V
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/y;->a:Lcom/sigmob/sdk/base/common/p;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/y;->a:Lcom/sigmob/sdk/base/common/p;

    const/4 p2, 0x0

    const-string v0, "ad unit is unavailable."

    invoke-interface {p1, p2, v0}, Lcom/sigmob/sdk/base/common/p;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p2, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/y;->a:Lcom/sigmob/sdk/base/common/p;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p1, v0, v1}, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;-><init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/p;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/y;->c:Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;

    invoke-virtual {p2, p2}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public a(Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ")V"
        }
    .end annotation

    .line 2
    iput-object p2, p0, Lcom/sigmob/sdk/base/common/y;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/y;->a:Lcom/sigmob/sdk/base/common/p;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/y;->a(Lcom/sigmob/sdk/base/common/p;)V

    return-void
.end method

.method public abstract a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 1

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/h;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->destroy()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/y;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/y;->c:Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/y;->c:Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;

    invoke-virtual {p1, p1}, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->b(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method
