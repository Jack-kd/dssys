.class public abstract Lcom/fl/saas/g;
.super Lcom/fl/saas/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/g$b;,
        Lcom/fl/saas/g$a;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private adFillingTime:J

.field private hasBackDisplay:Z

.field private hasCallbackClose:Z

.field private isShow:Z

.field private mAdViewLoadListener:Lcom/fl/saas/g$a;

.field private spreadAd:Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/o;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/fl/saas/adx/util/CommConstant;->getObjTag(Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/fl/saas/g;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/fl/saas/g;->adFillingTime:J

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/fl/saas/g;->hasBackDisplay:Z

    .line 16
    .line 17
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/fl/saas/g;->TAG:Ljava/lang/String;

    const-string v1, "loadAdView"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance p1, Lcom/fl/saas/adx/base/exception/FLError;

    const/16 v0, 0x4fb9

    const-string v1, "container is null"

    invoke-direct {p1, v0, v1}, Lcom/fl/saas/adx/base/exception/FLError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/fl/saas/g;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/g;->mAdViewLoadListener:Lcom/fl/saas/g$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/fl/saas/g$a;->a(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/fl/saas/g;->TAG:Ljava/lang/String;

    const-string v0, "viewGroup AdViewLoad"

    invoke-static {p1, v0}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Lcom/fl/saas/adx/base/exception/FLError;

    const/16 v0, 0x4fb5

    const-string v1, "Ad filling Exception"

    invoke-direct {p1, v0, v1}, Lcom/fl/saas/adx/base/exception/FLError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/fl/saas/g;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method private synthetic a(Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/g;->loadSpreadAd()Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener;->onADLoaded(Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/fl/saas/g;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/g;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/fl/saas/g;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/fl/saas/g;->isShow:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$102(Lcom/fl/saas/g;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/fl/saas/g;->isShow:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$200(Lcom/fl/saas/g;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fl/saas/g;->a(Landroid/view/ViewGroup;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/fl/saas/g;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/fl/saas/g;->adFillingTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic access$400(Lcom/fl/saas/g;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/fl/saas/g;->hasCallbackClose:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$402(Lcom/fl/saas/g;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/fl/saas/g;->hasCallbackClose:Z

    .line 2
    .line 3
    return p1
.end method

.method private synthetic b()V
    .locals 2

    .line 1
    new-instance v0, Lcom/fl/saas/t2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/fl/saas/t2;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/fl/saas/o;->getBuilderFieldOptional(Landroidx/arch/core/util/Function;)Lcom/fl/saas/p0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/view/ViewGroup;

    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/fl/saas/g;->a(Landroid/view/ViewGroup;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static synthetic f(Lcom/fl/saas/g;Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fl/saas/g;->a(Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener;)V

    return-void
.end method

.method public static synthetic g(Lcom/fl/saas/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/g;->b()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/g;->spreadAd:Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->getInstance()Lcom/fl/saas/adx/base/inner/FLAdTempHelper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->getSpreadAd()Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/fl/saas/g;->spreadAd:Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->getInstance()Lcom/fl/saas/adx/base/inner/FLAdTempHelper;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->clearSpreadAd()V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/fl/saas/g;->spreadAd:Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;

    .line 26
    .line 27
    invoke-super {p0}, Lcom/fl/saas/n;->destroy()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public isAdReady()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/fl/saas/g;->isShow:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/fl/saas/g;->adFillingTime:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getBootTime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget-wide v2, p0, Lcom/fl/saas/g;->adFillingTime:J

    .line 18
    .line 19
    sub-long/2addr v0, v2

    .line 20
    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget v2, v2, Lcom/fl/saas/j;->D1:I

    .line 25
    .line 26
    int-to-long v2, v2

    .line 27
    const-wide/16 v4, 0x3e8

    .line 28
    .line 29
    mul-long/2addr v2, v4

    .line 30
    cmp-long v0, v0, v2

    .line 31
    .line 32
    if-gez v0, :cond_0

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    return v0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    return v0
.end method

.method public loadSpreadAd()Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/g;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "loadSpreadAd"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/fl/saas/g;->spreadAd:Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/fl/saas/g$b;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/fl/saas/g$b;-><init>(Lcom/fl/saas/g;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/fl/saas/g;->spreadAd:Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/fl/saas/g;->spreadAd:Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;

    .line 20
    .line 21
    return-object v0
.end method

.method public onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/fl/saas/o;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/fl/saas/g;->hasCallbackClose:Z

    .line 6
    .line 7
    return-void
.end method

.method public onClickedEvent()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/fl/saas/n;->onClickedEvent()V

    invoke-virtual {p0}, Lcom/fl/saas/o;->getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewListener;

    move-result-object v0

    instance-of v1, v0, Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/fl/saas/adx/base/base/listener/InnerSpreadListener;->onAdClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onClickedEvent(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-super {p0}, Lcom/fl/saas/n;->onClickedEvent()V

    invoke-virtual {p0}, Lcom/fl/saas/o;->getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewListener;

    move-result-object v0

    instance-of v1, v0, Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;

    invoke-interface {v0, p1}, Lcom/fl/saas/adx/base/base/listener/InnerSpreadListener;->onAdClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onClosedEvent()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/fl/saas/g;->hasCallbackClose:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/fl/saas/g;->hasCallbackClose:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/fl/saas/o;->getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewListener;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v1, v0, Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/fl/saas/adx/base/base/listener/InnerSpreadListener;->onAdClose()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onShowEvent()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/fl/saas/n;->onShowEvent()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/fl/saas/g;->hasBackDisplay:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/fl/saas/g;->hasBackDisplay:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/fl/saas/o;->getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v1, v0, Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast v0, Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/fl/saas/adx/base/base/listener/InnerSpreadListener;->onAdDisplay()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onSpreadLoadedEvent(Lcom/fl/saas/g$a;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getBootTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/fl/saas/g;->adFillingTime:J

    .line 6
    .line 7
    iput-object p1, p0, Lcom/fl/saas/g;->mAdViewLoadListener:Lcom/fl/saas/g$a;

    .line 8
    .line 9
    invoke-super {p0}, Lcom/fl/saas/n;->onLoadedEvent()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public showAd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fl/saas/g;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "show"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/fl/saas/n;->showAd()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/fl/saas/q2;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/fl/saas/q2;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/fl/saas/o;->getBuilderFieldOptional(Landroidx/arch/core/util/Function;)Lcom/fl/saas/p0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/fl/saas/r2;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/fl/saas/r2;-><init>(Lcom/fl/saas/g;)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Lcom/fl/saas/s2;

    .line 26
    .line 27
    invoke-direct {v2, p0}, Lcom/fl/saas/s2;-><init>(Lcom/fl/saas/g;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public startActivityShow(Landroid/app/Activity;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/g;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "startActivityShow"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/fl/saas/g;->spreadAd:Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->getInstance()Lcom/fl/saas/adx/base/inner/FLAdTempHelper;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/fl/saas/g;->spreadAd:Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->setSpreadAd(Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Landroid/content/Intent;

    .line 24
    .line 25
    const-class v1, Lcom/fl/saas/adx/base/activity/FLSpreadActivity;

    .line 26
    .line 27
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "id"

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v2, v2, Lcom/fl/saas/j;->g:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance p1, Lcom/fl/saas/adx/base/exception/FLError;

    .line 48
    .line 49
    const-string v0, "\u5c55\u793a\u5e7f\u544a\u5931\u8d25"

    .line 50
    .line 51
    const/16 v1, 0x4fb7

    .line 52
    .line 53
    invoke-direct {p1, v1, v0}, Lcom/fl/saas/adx/base/exception/FLError;-><init>(ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/fl/saas/g;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :goto_0
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
