.class Lcom/sigmob/sdk/nativead/x$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/am$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/nativead/x;->f()V
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

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/x$2;->a:Lcom/sigmob/sdk/nativead/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/nativead/x$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/x$2;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x$2;->a:Lcom/sigmob/sdk/nativead/x;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/x;->a(Lcom/sigmob/sdk/nativead/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x$2;->a:Lcom/sigmob/sdk/nativead/x;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/x;->b(Lcom/sigmob/sdk/nativead/x;)Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const-string v1, "2"

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x$2;->a:Lcom/sigmob/sdk/nativead/x;

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

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/x$2;->a:Lcom/sigmob/sdk/nativead/x;

    invoke-static {v2}, Lcom/sigmob/sdk/nativead/x;->b(Lcom/sigmob/sdk/nativead/x;)Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/x$2;->a:Lcom/sigmob/sdk/nativead/x;

    invoke-static {v2}, Lcom/sigmob/sdk/nativead/x;->b(Lcom/sigmob/sdk/nativead/x;)Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sigmob/sdk/base/models/ClickCommon;->x_max_acc:Ljava/lang/String;

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x$2;->a:Lcom/sigmob/sdk/nativead/x;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/x;->b(Lcom/sigmob/sdk/nativead/x;)Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x$2;->a:Lcom/sigmob/sdk/nativead/x;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/x;->b(Lcom/sigmob/sdk/nativead/x;)Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->y_max_acc:Ljava/lang/String;

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x$2;->a:Lcom/sigmob/sdk/nativead/x;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/x;->b(Lcom/sigmob/sdk/nativead/x;)Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/x$2;->a:Lcom/sigmob/sdk/nativead/x;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/x;->b(Lcom/sigmob/sdk/nativead/x;)Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->z_max_acc:Ljava/lang/String;

    :cond_2
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/x$2;->a:Lcom/sigmob/sdk/nativead/x;

    invoke-static {p1}, Lcom/sigmob/sdk/nativead/x;->c(Lcom/sigmob/sdk/nativead/x;)Lcom/sigmob/sdk/base/views/v;

    move-result-object p1

    new-instance v0, Lcom/sigmob/sdk/nativead/V;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/nativead/V;-><init>(Lcom/sigmob/sdk/nativead/x$2;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
