.class Lcom/sigmob/sdk/splash/i$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/am$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/splash/i;->m()V
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

    iput-object p1, p0, Lcom/sigmob/sdk/splash/i$9;->a:Lcom/sigmob/sdk/splash/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/splash/i$9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/splash/i$9;->c()V

    return-void
.end method

.method private synthetic b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$9;->a:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/i;->h(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/views/v;

    move-result-object v0

    instance-of v0, v0, Lcom/sigmob/sdk/base/views/ap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$9;->a:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/i;->h(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/views/v;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/views/ap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/ap;->a(F)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/splash/i$9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/splash/i$9;->b()V

    return-void
.end method

.method private synthetic c()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$9;->a:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/i;->e(Lcom/sigmob/sdk/splash/i;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 2
    return-void
.end method

.method public a(F)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$9;->a:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/i;->h(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/views/v;

    move-result-object v0

    instance-of v0, v0, Lcom/sigmob/sdk/base/views/ap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$9;->a:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/i;->h(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/views/v;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/views/ap;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/ap;->a(F)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 4
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$9;->a:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/i;->c(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$9;->a:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/splash/i;->g(Lcom/sigmob/sdk/splash/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$9;->a:Lcom/sigmob/sdk/splash/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/splash/i;->b(Lcom/sigmob/sdk/splash/i;Z)Z

    const-string v0, "x_max_acc"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    const-string v1, "y_max_acc"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    const-string v2, "z_max_acc"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/i$9;->a:Lcom/sigmob/sdk/splash/i;

    invoke-static {v2}, Lcom/sigmob/sdk/splash/i;->c(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sigmob/sdk/base/models/ClickCommon;->x_max_acc:Ljava/lang/String;

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sigmob/sdk/base/models/ClickCommon;->y_max_acc:Ljava/lang/String;

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/sigmob/sdk/base/models/ClickCommon;->z_max_acc:Ljava/lang/String;

    :cond_3
    const-string p1, "2"

    iput-object p1, v2, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    const-string p1, "component"

    iput-object p1, v2, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    const-string p1, "ad"

    iput-object p1, v2, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    iget-object p1, p0, Lcom/sigmob/sdk/splash/i$9;->a:Lcom/sigmob/sdk/splash/i;

    invoke-static {p1}, Lcom/sigmob/sdk/splash/i;->h(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/views/v;

    move-result-object p1

    new-instance v0, Lcom/sigmob/sdk/splash/B;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/splash/B;-><init>(Lcom/sigmob/sdk/splash/i$9;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/sigmob/sdk/splash/i$9;->a:Lcom/sigmob/sdk/splash/i;

    invoke-static {p1}, Lcom/sigmob/sdk/splash/i;->h(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/views/v;

    move-result-object p1

    new-instance v0, Lcom/sigmob/sdk/splash/C;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/splash/C;-><init>(Lcom/sigmob/sdk/splash/i$9;)V

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void
.end method
