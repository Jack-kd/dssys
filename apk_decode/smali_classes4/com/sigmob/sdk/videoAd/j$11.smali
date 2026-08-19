.class Lcom/sigmob/sdk/videoAd/j$11;
.super Lcom/sigmob/sdk/base/common/am$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/j;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/j;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/videoAd/j;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/j$11;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/am$b;-><init>()V

    return-void
.end method

.method private synthetic b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$11;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->l(Lcom/sigmob/sdk/videoAd/j;)V

    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/videoAd/j$11;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j$11;->b()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$11;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->c(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$11;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->j(Lcom/sigmob/sdk/videoAd/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$11;->a:Lcom/sigmob/sdk/videoAd/j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoAd/j;->b(Lcom/sigmob/sdk/videoAd/j;Z)Z

    const-string v0, "turn_x"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    const-string v1, "turn_y"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    const-string v2, "turn_z"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const-string v3, "turn_time"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/j$11;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v3}, Lcom/sigmob/sdk/videoAd/j;->c(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_x:Ljava/lang/String;

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_y:Ljava/lang/String;

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_z:Ljava/lang/String;

    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_time:Ljava/lang/String;

    const-string p1, "5"

    iput-object p1, v3, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$11;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->k(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/v;

    move-result-object p1

    new-instance v0, Lcom/sigmob/sdk/videoAd/D;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videoAd/D;-><init>(Lcom/sigmob/sdk/videoAd/j$11;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void
.end method
