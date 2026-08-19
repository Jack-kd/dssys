.class Lcom/sigmob/sdk/mraid/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/am$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/o;->a(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/am$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/o;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/mraid/o;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/o$1;->a:Lcom/sigmob/sdk/mraid/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/o$1;->a:Lcom/sigmob/sdk/mraid/o;

    iget-object v1, v0, Lcom/sigmob/sdk/mraid/o;->d:Lcom/sigmob/sdk/mraid2/j;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/sigmob/sdk/mraid/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "twist"

    const-string v4, "began"

    invoke-interface {v1, v0, v3, v4, v2}, Lcom/sigmob/sdk/mraid2/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public a(F)V
    .locals 0

    .line 2
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 3
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/o$1;->a:Lcom/sigmob/sdk/mraid/o;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid/o;->d:Lcom/sigmob/sdk/mraid2/j;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "turn_x"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    const-string v2, "turn_y"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const-string v3, "turn_z"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    const-string v4, "turn_time"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    const-string v4, "x"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "y"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "z"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "time"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/o$1;->a:Lcom/sigmob/sdk/mraid/o;

    iget-object v1, p1, Lcom/sigmob/sdk/mraid/o;->d:Lcom/sigmob/sdk/mraid2/j;

    iget-object p1, p1, Lcom/sigmob/sdk/mraid/n;->a:Ljava/lang/String;

    const-string v2, "twist"

    const-string v3, "end"

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/sigmob/sdk/mraid2/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_1
    :goto_0
    return-void
.end method
