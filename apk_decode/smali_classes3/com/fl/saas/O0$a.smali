.class Lcom/fl/saas/O0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/O0;->handle(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fl/saas/O0;


# direct methods
.method public constructor <init>(Lcom/fl/saas/O0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/O0$a;->a:Lcom/fl/saas/O0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/fl/saas/O0$a;->a:Lcom/fl/saas/O0;

    invoke-static {p1}, Lcom/fl/saas/O0;->b(Lcom/fl/saas/O0;)V

    return-void
.end method

.method public a(Lcom/fl/saas/N0;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/fl/saas/N0;->b()Lcom/fl/saas/j;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/O0$a;->a:Lcom/fl/saas/O0;

    invoke-virtual {p1}, Lcom/fl/saas/N0;->b()Lcom/fl/saas/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fl/saas/n;->setAdSource(Lcom/fl/saas/j;)Lcom/fl/saas/n;

    iget-object v0, p0, Lcom/fl/saas/O0$a;->a:Lcom/fl/saas/O0;

    invoke-static {v0, p1}, Lcom/fl/saas/O0;->a(Lcom/fl/saas/O0;Lcom/fl/saas/N0;)Lcom/fl/saas/N0;

    iget-object v0, p0, Lcom/fl/saas/O0$a;->a:Lcom/fl/saas/O0;

    invoke-virtual {p1}, Lcom/fl/saas/N0;->b()Lcom/fl/saas/j;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/fl/saas/O0;->a(Lcom/fl/saas/O0;Lcom/fl/saas/j;)Lcom/fl/saas/j;

    iget-object p1, p0, Lcom/fl/saas/O0$a;->a:Lcom/fl/saas/O0;

    invoke-static {p1}, Lcom/fl/saas/O0;->a(Lcom/fl/saas/O0;)Lcom/fl/saas/j;

    move-result-object p1

    iget-object v0, p0, Lcom/fl/saas/O0$a;->a:Lcom/fl/saas/O0;

    invoke-virtual {v0}, Lcom/fl/saas/n;->isHot()Z

    move-result v0

    iput-boolean v0, p1, Lcom/fl/saas/j;->j0:Z

    iget-object p1, p0, Lcom/fl/saas/O0$a;->a:Lcom/fl/saas/O0;

    invoke-static {p1}, Lcom/fl/saas/O0;->a(Lcom/fl/saas/O0;)Lcom/fl/saas/j;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/O0$a;->a:Lcom/fl/saas/O0;

    invoke-static {p1}, Lcom/fl/saas/O0;->a(Lcom/fl/saas/O0;)Lcom/fl/saas/j;

    move-result-object p1

    iget-object p1, p1, Lcom/fl/saas/j;->P0:Lcom/fl/saas/j$c;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/O0$a;->a:Lcom/fl/saas/O0;

    invoke-static {p1}, Lcom/fl/saas/O0;->a(Lcom/fl/saas/O0;)Lcom/fl/saas/j;

    move-result-object p1

    iget-object p1, p1, Lcom/fl/saas/j;->P0:Lcom/fl/saas/j$c;

    iget-object p1, p1, Lcom/fl/saas/j$c;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/O0$a;->a:Lcom/fl/saas/O0;

    invoke-virtual {p1}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object p1

    iget-object v0, p0, Lcom/fl/saas/O0$a;->a:Lcom/fl/saas/O0;

    invoke-static {v0}, Lcom/fl/saas/O0;->a(Lcom/fl/saas/O0;)Lcom/fl/saas/j;

    move-result-object v0

    iget-object v0, v0, Lcom/fl/saas/j;->P0:Lcom/fl/saas/j$c;

    iget-object v0, v0, Lcom/fl/saas/j$c;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/fl/saas/j;->z:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/fl/saas/O0$a;->a:Lcom/fl/saas/O0;

    invoke-virtual {p1}, Lcom/fl/saas/h;->onLoadedEvent()V

    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x0

    const-string v0, "S2SRewardVideoADManager is null"

    invoke-static {p1, v0}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fl/saas/O0$a;->a(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method public a(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/fl/saas/O0$a;->b(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "FLSDK-S2S-Video"

    const-string v0, "onADClick"

    invoke-static {p1, v0}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fl/saas/O0$a;->a:Lcom/fl/saas/O0;

    invoke-virtual {p1}, Lcom/fl/saas/h;->onClickedEvent()V

    return-void
.end method

.method public b(D)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/fl/saas/O0$a;->a:Lcom/fl/saas/O0;

    invoke-static {p1}, Lcom/fl/saas/O0;->c(Lcom/fl/saas/O0;)V

    return-void
.end method

.method public b(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/fl/saas/O0$a;->a:Lcom/fl/saas/O0;

    invoke-static {v0, p1}, Lcom/fl/saas/O0;->a(Lcom/fl/saas/O0;Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method public onClose()V
    .locals 2

    .line 1
    const-string v0, "FLSDK-S2S-Video"

    .line 2
    .line 3
    const-string v1, "onADClose"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/fl/saas/O0$a;->a:Lcom/fl/saas/O0;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/fl/saas/O0;->d(Lcom/fl/saas/O0;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
