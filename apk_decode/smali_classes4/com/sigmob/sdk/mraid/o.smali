.class public abstract Lcom/sigmob/sdk/mraid/o;
.super Lcom/sigmob/sdk/mraid/n;


# instance fields
.field protected c:Lcom/sigmob/sdk/base/common/am$a;

.field protected d:Lcom/sigmob/sdk/mraid2/j;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/n;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/am$a;
    .locals 3

    .line 1
    new-instance v0, Lcom/sigmob/sdk/base/common/am$a;

    new-instance v1, Lcom/sigmob/sdk/mraid/o$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid/o$1;-><init>(Lcom/sigmob/sdk/mraid/o;)V

    sget-object v2, Lcom/sigmob/sdk/base/common/am$d;->b:Lcom/sigmob/sdk/base/common/am$d;

    invoke-direct {v0, p1, v1, v2}, Lcom/sigmob/sdk/base/common/am$a;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/common/am$c;Lcom/sigmob/sdk/base/common/am$d;)V

    return-object v0
.end method

.method public abstract a(F)V
.end method

.method public a(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/am$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/am$a;->c(I)V

    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .locals 1

    .line 3
    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const-string p1, "Motion type is not support."

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/o;->c(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/am$a;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/am$a;

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/o;->d(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/am$a;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/am$a;

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/o;->a(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/am$a;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/am$a;

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/o;->b(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/am$a;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/am$a;

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "twist"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "swing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "slope"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "shake"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string p1, "Motion type is not support."

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/o;->a(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/am$a;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/am$a;

    return-void

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/o;->c(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/am$a;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/am$a;

    return-void

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/o;->d(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/am$a;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/am$a;

    return-void

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid/o;->b(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/am$a;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/am$a;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x6854f06 -> :sswitch_3
        0x68755ab -> :sswitch_2
        0x68c3efe -> :sswitch_1
        0x69a5727 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/sigmob/sdk/mraid2/j;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/sigmob/sdk/mraid/o;->d:Lcom/sigmob/sdk/mraid2/j;

    return-void
.end method

.method public b(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/am$a;
    .locals 3

    .line 1
    new-instance v0, Lcom/sigmob/sdk/base/common/am$a;

    new-instance v1, Lcom/sigmob/sdk/mraid/o$2;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid/o$2;-><init>(Lcom/sigmob/sdk/mraid/o;)V

    sget-object v2, Lcom/sigmob/sdk/base/common/am$d;->d:Lcom/sigmob/sdk/base/common/am$d;

    invoke-direct {v0, p1, v1, v2}, Lcom/sigmob/sdk/base/common/am$a;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/common/am$c;Lcom/sigmob/sdk/base/common/am$d;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/am$a;->a(I)V

    return-object v0
.end method

.method public abstract b(F)V
.end method

.method public b(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/am$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/am$a;->b(I)V

    return-void
.end method

.method public c(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/am$a;
    .locals 3

    .line 1
    new-instance v0, Lcom/sigmob/sdk/base/common/am$a;

    new-instance v1, Lcom/sigmob/sdk/mraid/o$3;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid/o$3;-><init>(Lcom/sigmob/sdk/mraid/o;)V

    sget-object v2, Lcom/sigmob/sdk/base/common/am$d;->a:Lcom/sigmob/sdk/base/common/am$d;

    invoke-direct {v0, p1, v1, v2}, Lcom/sigmob/sdk/base/common/am$a;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/common/am$c;Lcom/sigmob/sdk/base/common/am$d;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/am$a;->a(I)V

    return-object v0
.end method

.method public c(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/am$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/am$a;->d(I)V

    return-void
.end method

.method public d(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/am$a;
    .locals 3

    .line 1
    new-instance v0, Lcom/sigmob/sdk/base/common/am$a;

    new-instance v1, Lcom/sigmob/sdk/mraid/o$4;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid/o$4;-><init>(Lcom/sigmob/sdk/mraid/o;)V

    sget-object v2, Lcom/sigmob/sdk/base/common/am$d;->c:Lcom/sigmob/sdk/base/common/am$d;

    invoke-direct {v0, p1, v1, v2}, Lcom/sigmob/sdk/base/common/am$a;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/common/am$c;Lcom/sigmob/sdk/base/common/am$d;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/am$a;->a(I)V

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/am$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/am$a;->a()V

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/am$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/am$a;->e(I)V

    return-void
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/o;->c:Lcom/sigmob/sdk/base/common/am$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/am$a;->f(I)V

    return-void
.end method
