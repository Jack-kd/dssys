.class public Lcom/fl/saas/adx/base/activity/FLInterstitialActivity;
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

.method public static startMe(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fl/saas/adx/base/activity/FLInterstitialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-static {p0}, Lcom/fl/saas/K;->a(Landroid/app/Activity;)V

    const/4 p1, 0x1

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

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    :try_start_1
    sget p1, Lcom/fl/saas/R$layout;->fl_adx_activity_interstitial:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    sget p1, Lcom/fl/saas/R$id;->rl_root:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    sget v0, Lcom/fl/saas/R$id;->fl_ad:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fl/saas/adx/base/activity/FLInterstitialActivity;->id:Ljava/lang/String;

    invoke-static {}, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->getInstance()Lcom/fl/saas/adx/base/inner/FLAdTempHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/fl/saas/adx/base/activity/FLInterstitialActivity;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->getInterstitialHelper(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->getAlpha()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    div-double/2addr v2, v4

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Lcom/fl/saas/adx/base/activity/a;

    invoke-direct {p1, p0}, Lcom/fl/saas/adx/base/activity/a;-><init>(Lcom/fl/saas/adx/base/activity/FLInterstitialActivity;)V

    invoke-virtual {v1, p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->setOnAdCloseListener(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper$OnAdCloseListener;)V

    invoke-virtual {v1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->readerAdView()V

    invoke-virtual {v1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->getNativeAdView()Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, p0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->onActivityStart(Landroid/app/Activity;)V

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :goto_2
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_3
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->getInstance()Lcom/fl/saas/adx/base/inner/FLAdTempHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/FLInterstitialActivity;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->removeInterstitialHelper(Ljava/lang/String;)V

    invoke-static {}, Lcom/fl/saas/v;->b()Lcom/fl/saas/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/v;->a()V

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
