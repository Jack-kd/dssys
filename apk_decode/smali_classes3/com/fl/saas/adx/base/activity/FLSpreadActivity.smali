.class public Lcom/fl/saas/adx/base/activity/FLSpreadActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/fl/saas/R$layout;->fl_adx_activity_spread:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fl/saas/adx/base/activity/FLSpreadActivity;->id:Ljava/lang/String;

    invoke-static {}, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->getInstance()Lcom/fl/saas/adx/base/inner/FLAdTempHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/FLSpreadActivity;->id:Ljava/lang/String;

    new-instance v1, Lcom/fl/saas/adx/base/activity/b;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/activity/b;-><init>(Lcom/fl/saas/adx/base/activity/FLSpreadActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->addSpreadListener(Ljava/lang/String;Lcom/fl/saas/adx/base/inner/FLAdTempHelper$SpreadActivityListener;)V

    invoke-static {p0}, Lcom/fl/saas/K;->a(Landroid/app/Activity;)V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/fl/saas/K;->a(Landroid/app/Activity;Z)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_1

    invoke-static {p0}, Lcom/fl/saas/adx/util/DeviceUtil;->getOrientation(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    :goto_0
    sget p1, Lcom/fl/saas/R$id;->fl_root:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->getInstance()Lcom/fl/saas/adx/base/inner/FLAdTempHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->getSpreadAd()Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {v0, p1}, Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;->show(Landroid/view/ViewGroup;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->getInstance()Lcom/fl/saas/adx/base/inner/FLAdTempHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/FLSpreadActivity;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->removeSpreadListener(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
