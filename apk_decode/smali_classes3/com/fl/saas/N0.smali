.class public Lcom/fl/saas/N0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/fl/saas/j;

.field private b:Lcom/fl/saas/o0;

.field private c:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/fl/saas/N0;->c:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Lcom/fl/saas/o0;)Lcom/fl/saas/N0;
    .locals 1

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fl/saas/j;

    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/fl/saas/N0;->b:Lcom/fl/saas/o0;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/fl/saas/N0;->a:Lcom/fl/saas/j;

    invoke-interface {p2, p0}, Lcom/fl/saas/o0;->a(Lcom/fl/saas/N0;)V

    return-object p0

    :cond_0
    const-string p1, "\u89c6\u9891\u5730\u5740\u4e3a\u7a7a"

    invoke-virtual {p0, p1}, Lcom/fl/saas/N0;->a(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/fl/saas/N0;->a:Lcom/fl/saas/j;

    iput-object v0, p0, Lcom/fl/saas/N0;->b:Lcom/fl/saas/o0;

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/fl/saas/N0;->b:Lcom/fl/saas/o0;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/fl/saas/o0;->a(Lcom/fl/saas/adx/base/exception/FLError;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 5
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/fl/saas/N0;->a:Lcom/fl/saas/j;

    if-eqz v1, :cond_0

    const-string v2, "draw_type"

    iget v1, v1, Lcom/fl/saas/j;->N0:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->setAdInfo(Lcom/fl/saas/N0;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/fl/saas/N0;->a(ILjava/lang/String;)V

    return-void
.end method

.method public b()Lcom/fl/saas/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/N0;->a:Lcom/fl/saas/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/fl/saas/N0;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public d()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/N0;->b()Lcom/fl/saas/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/fl/saas/N0;->b()Lcom/fl/saas/j;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/fl/saas/j;->t1:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/fl/saas/N0;->b()Lcom/fl/saas/j;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget v0, v0, Lcom/fl/saas/j;->S:I

    .line 27
    .line 28
    if-lez v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/fl/saas/N0;->b()Lcom/fl/saas/j;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v0, v0, Lcom/fl/saas/j;->p1:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    xor-int/2addr v0, v2

    .line 41
    return v0

    .line 42
    :cond_1
    return v1

    .line 43
    :cond_2
    return v2
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fl/saas/N0;->b:Lcom/fl/saas/o0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/fl/saas/N0;->a:Lcom/fl/saas/j;

    .line 6
    .line 7
    iget v1, v1, Lcom/fl/saas/j;->q1:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    const-string v1, ""

    .line 13
    .line 14
    invoke-interface {v0, v1}, Lcom/fl/saas/o0;->a(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/N0;->b:Lcom/fl/saas/o0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/fl/saas/o0;->onClose()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fl/saas/N0;->b:Lcom/fl/saas/o0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/fl/saas/N0;->a:Lcom/fl/saas/j;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget v1, v1, Lcom/fl/saas/j;->d:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    int-to-double v1, v1

    .line 14
    invoke-interface {v0, v1, v2}, Lcom/fl/saas/o0;->a(D)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fl/saas/N0;->b:Lcom/fl/saas/o0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/fl/saas/N0;->a:Lcom/fl/saas/j;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget v1, v1, Lcom/fl/saas/j;->d:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    int-to-double v1, v1

    .line 14
    invoke-interface {v0, v1, v2}, Lcom/fl/saas/o0;->b(D)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method
