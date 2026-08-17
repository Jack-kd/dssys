.class Lcom/sigmob/sdk/nativead/x$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/am$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/nativead/x;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/nativead/x;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/nativead/x;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/x$1;->a:Lcom/sigmob/sdk/nativead/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/nativead/x$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/x$1;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x$1;->a:Lcom/sigmob/sdk/nativead/x;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/x;->b(Lcom/sigmob/sdk/nativead/x;)Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const-string v1, "5"

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x$1;->a:Lcom/sigmob/sdk/nativead/x;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/x;->d(Lcom/sigmob/sdk/nativead/x;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 2
    return-void
.end method

.method public a(F)V
    .locals 0

    .line 3
    return-void
.end method

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

    .line 4
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x$1;->a:Lcom/sigmob/sdk/nativead/x;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/x;->a(Lcom/sigmob/sdk/nativead/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x$1;->a:Lcom/sigmob/sdk/nativead/x;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/nativead/x;->a(Lcom/sigmob/sdk/nativead/x;Z)Z

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

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/sigmob/sdk/nativead/x$1;->a:Lcom/sigmob/sdk/nativead/x;

    invoke-static {v3}, Lcom/sigmob/sdk/nativead/x;->b(Lcom/sigmob/sdk/nativead/x;)Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_x:Ljava/lang/String;

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x$1;->a:Lcom/sigmob/sdk/nativead/x;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/x;->b(Lcom/sigmob/sdk/nativead/x;)Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_y:Ljava/lang/String;

    :cond_2
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x$1;->a:Lcom/sigmob/sdk/nativead/x;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/x;->b(Lcom/sigmob/sdk/nativead/x;)Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_z:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x$1;->a:Lcom/sigmob/sdk/nativead/x;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/x;->b(Lcom/sigmob/sdk/nativead/x;)Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_time:Ljava/lang/String;

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/x$1;->a:Lcom/sigmob/sdk/nativead/x;

    invoke-static {p1}, Lcom/sigmob/sdk/nativead/x;->c(Lcom/sigmob/sdk/nativead/x;)Lcom/sigmob/sdk/base/views/v;

    move-result-object p1

    new-instance v0, Lcom/sigmob/sdk/nativead/U;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/nativead/U;-><init>(Lcom/sigmob/sdk/nativead/x$1;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void
.end method
