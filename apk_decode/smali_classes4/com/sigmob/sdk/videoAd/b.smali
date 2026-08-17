.class public abstract Lcom/sigmob/sdk/videoAd/b;
.super Lcom/sigmob/sdk/base/common/j;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sigmob/sdk/base/common/k;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/j;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sigmob/sdk/base/common/k;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/j;->d:Lcom/sigmob/sdk/base/common/k;

    invoke-interface {p1}, Lcom/sigmob/sdk/base/common/k;->a()V

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/j;->a(Landroid/content/Context;ILandroid/os/Bundle;)V

    const-string p1, "enablekeepon"

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string v0, "enablescreenlockdisplayad"

    invoke-virtual {p3, v0, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1b

    if-lt p3, v0, :cond_1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p3}, Lm0/d;->a(Landroid/app/Activity;Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p3}, Lm0/g;->a(Landroid/app/Activity;Z)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p3}, Lm0/d;->a(Landroid/app/Activity;Z)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p3, 0x80

    invoke-virtual {p1, p3}, Landroid/view/Window;->addFlags(I)V

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 p2, 0x280000

    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :goto_1
    const-string p2, "optionSetting error"

    invoke-static {p2, p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->d:Lcom/sigmob/sdk/base/common/k;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/j;->c:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/k;->onSetContentView(Landroid/view/View;)V

    return-void
.end method
