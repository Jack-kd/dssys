.class public abstract Lcom/fl/saas/e;
.super Lcom/fl/saas/o;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private canCallback:Z

.field private canCallbackClose:Z

.field private countDownTextView:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

.field private hasBackDisplay:Z

.field private hasCloseInterstitialAd:Z

.field private hasReturnCloseEvent:Z

.field private haveShowCloseView:Z

.field private isIntersReady:Z

.field private responseTime:J

.field private showActivityName:Ljava/lang/String;

.field private showTime:J

.field private topActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/fl/saas/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/fl/saas/adx/util/CommConstant;->getClassTag(Ljava/lang/Class;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/fl/saas/e;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/o;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/fl/saas/e;->canCallback:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/fl/saas/e;->canCallbackClose:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/fl/saas/e;->hasBackDisplay:Z

    .line 11
    .line 12
    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/fl/saas/e;->b()V

    return-void
.end method

.method private synthetic a(Ljava/lang/Integer;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/e;->countDownTextView:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->unOnVisibilityChanged()V

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/fl/saas/a2;

    invoke-direct {v0, p0}, Lcom/fl/saas/a2;-><init>(Lcom/fl/saas/e;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 4

    .line 4
    :try_start_0
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/fl/saas/e;->activityRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/fl/saas/e;->topActivityRef:Ljava/lang/ref/WeakReference;

    sget-object v1, Lcom/fl/saas/e;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAutoCloseViewTopActivity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/fl/saas/e;->showAutoCloseView(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :goto_1
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fl/saas/e;->showActivityName:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/e;->topActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/e;->showActivityName:Ljava/lang/String;

    iget-object v2, p0, Lcom/fl/saas/e;->topActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method private static synthetic b(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u70b9\u51fb\u5173\u95ed\u5e7f\u544a  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "S"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/e;->countDownTextView:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->getVisibilityState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/e;->topActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/fl/saas/e;->closeInterstitialAd(Landroid/app/Activity;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/e;->countDownTextView:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    new-instance v1, Lcom/fl/saas/Z1;

    invoke-direct {v1, p0}, Lcom/fl/saas/Z1;-><init>(Lcom/fl/saas/e;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->setOnVisibilityChanged(Lcom/fl/saas/B;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :goto_0
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/fl/saas/e;->b()V

    return-void
.end method

.method private static synthetic b(Landroid/app/Activity;)Z
    .locals 0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic c(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "S\u540e\u81ea\u52a8\u5173\u95ed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/fl/saas/e;->showTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/fl/saas/e;->showTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/e;->topActivityRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sget-object v2, Lcom/fl/saas/e;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeViewActivity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fl/saas/e;->countDownTextView:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/fl/saas/e;->countDownTextView:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/fl/saas/e;->selfCloseInterstitialAd()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0}, Lcom/fl/saas/e;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeViewTopActivityName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeViewShowActivityName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/fl/saas/e;->showActivityName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fl/saas/e;->showActivityName:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/fl/saas/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/fl/saas/adx/util/ViewHelper;->getTopView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getTopActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/fl/saas/e;->showActivityName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/fl/saas/e;->onClosedEvent()V

    iput-object v1, p0, Lcom/fl/saas/e;->countDownTextView:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    iput-object v1, p0, Lcom/fl/saas/e;->topActivityRef:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/fl/saas/e;->activityRef:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_3
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/fl/saas/e;->countDownTextView:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    iput-object v1, p0, Lcom/fl/saas/e;->topActivityRef:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/fl/saas/e;->activityRef:Ljava/lang/ref/WeakReference;

    :cond_6
    :goto_4
    return-void
.end method

.method private synthetic c(Landroid/app/Activity;)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fl/saas/e;->activityRef:Ljava/lang/ref/WeakReference;

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fl/saas/e;->showActivityName:Ljava/lang/String;

    sget-object p1, Lcom/fl/saas/e;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showActivityName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fl/saas/e;->showActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/fl/saas/S1;

    invoke-direct {p1, p0}, Lcom/fl/saas/S1;-><init>(Lcom/fl/saas/e;)V

    const-wide/16 v0, 0x32

    invoke-static {v0, v1, p1}, Lcom/fl/saas/adx/util/DeviceUtil;->postUIDelayed(JLjava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/e;->activityRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/Activity;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/fl/saas/e;->activityRef:Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/app/Activity;

    .line 24
    .line 25
    const-string v1, "activity"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/app/ActivityManager;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 44
    .line 45
    invoke-static {v0}, LH/c;->a(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    const-string v0, ""

    .line 61
    .line 62
    return-object v0
.end method

.method private synthetic e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/e;->topActivityRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/Activity;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/fl/saas/e;->closeInterstitialAd(Landroid/app/Activity;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic f()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/fl/saas/e;->hasCloseInterstitialAd:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fl/saas/e;->a(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic f(Lcom/fl/saas/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/e;->c()V

    return-void
.end method

.method private synthetic g()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/fl/saas/e;->activityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/e;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/e;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/fl/saas/e;->showInterstitial(Landroid/app/Activity;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/fl/saas/e;->requiresActivityDetection()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x4fb4

    const-string v1, "request show but Activity is null or invalid"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fl/saas/o;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fl/saas/e;->showInterstitial(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic g(Lcom/fl/saas/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/e;->h()V

    return-void
.end method

.method private synthetic h()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/fl/saas/e;->requiresActivityDetection()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4fb4

    const-string v1, "request show but Activity is null or invalid"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fl/saas/o;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fl/saas/e;->showInterstitial(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic h(Landroid/app/Activity;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/fl/saas/e;->b(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/fl/saas/e;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fl/saas/e;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic j(Lcom/fl/saas/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/e;->e()V

    return-void
.end method

.method public static synthetic k(Lcom/fl/saas/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/e;->f()V

    return-void
.end method

.method public static synthetic l(Lcom/fl/saas/e;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fl/saas/e;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/fl/saas/e;->c(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/fl/saas/e;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fl/saas/e;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic o(Lcom/fl/saas/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/e;->b()V

    return-void
.end method

.method public static synthetic p(Lcom/fl/saas/e;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fl/saas/e;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/fl/saas/e;->b(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lcom/fl/saas/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/e;->g()V

    return-void
.end method


# virtual methods
.method public checkReRequest(Landroid/app/Activity;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/fl/saas/n;->changeReRequestCount()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/fl/saas/o;->reRequest()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/fl/saas/e;->closeInterstitialAd(Landroid/app/Activity;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/fl/saas/j;->m()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/fl/saas/e;->closeInterstitialAd(Landroid/app/Activity;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_0
    return-void
.end method

.method public closeInterstitialAd(Landroid/app/Activity;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/fl/saas/e;->hasCloseInterstitialAd:Z

    .line 5
    .line 6
    if-nez p1, :cond_2

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-ne p1, v0, :cond_1

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/fl/saas/e;->c()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    new-instance p1, Landroid/os/Handler;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/fl/saas/Y1;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/fl/saas/Y1;-><init>(Lcom/fl/saas/e;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void
.end method

.method public closeTopCountDownView()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/fl/saas/e;->hasCloseInterstitialAd:Z

    .line 3
    .line 4
    sget-object v0, Lcom/fl/saas/e;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "closeTopCountDownView"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/e;->topActivityRef:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/app/Activity;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/fl/saas/e;->countDownTextView:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/fl/saas/e;->countDownTextView:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    .line 38
    .line 39
    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/fl/saas/e;->countDownTextView:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/fl/saas/e;->topActivityRef:Ljava/lang/ref/WeakReference;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/fl/saas/e;->activityRef:Ljava/lang/ref/WeakReference;

    .line 53
    .line 54
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/fl/saas/n;->destroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/fl/saas/e;->activityRef:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/fl/saas/e;->topActivityRef:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/fl/saas/e;->countDownTextView:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    .line 10
    .line 11
    return-void
.end method

.method public final isIntersReady()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    .line 4
    .line 5
    move-result-wide v1

    .line 6
    iget-wide v3, p0, Lcom/fl/saas/e;->responseTime:J

    .line 7
    .line 8
    sub-long/2addr v1, v3

    .line 9
    const-wide/16 v3, 0x3e8

    .line 10
    .line 11
    div-long/2addr v1, v3

    .line 12
    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iget v3, v3, Lcom/fl/saas/j;->D1:I

    .line 17
    .line 18
    int-to-long v3, v3

    .line 19
    cmp-long v1, v1, v3

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-gez v1, :cond_0

    .line 23
    .line 24
    move v1, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v1, v0

    .line 27
    :goto_0
    iget-boolean v3, p0, Lcom/fl/saas/e;->isIntersReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    return v2

    .line 34
    :cond_1
    return v0

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    return v0
.end method

.method public onClickedEvent()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/fl/saas/n;->onClickedEvent()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/fl/saas/e;->haveShowCloseView:Z

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/fl/saas/e;->canCallback:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/fl/saas/o;->getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v1, v0, Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast v0, Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;

    .line 20
    .line 21
    const-string v1, ""

    .line 22
    .line 23
    invoke-interface {v0, v1}, Lcom/fl/saas/adx/base/base/listener/InnerInterstitialListener;->onAdClick(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public onClosedEvent()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/fl/saas/e;->hasCloseInterstitialAd:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/fl/saas/e;->hasReturnCloseEvent:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/fl/saas/e;->hasReturnCloseEvent:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/fl/saas/e;->closeTopCountDownView()V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/fl/saas/e;->canCallbackClose:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/fl/saas/o;->getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewListener;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    instance-of v1, v0, Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    check-cast v0, Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/fl/saas/adx/base/base/listener/InnerInterstitialListener;->onAdClosed()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public onLoadedEvent()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/fl/saas/e;->isIntersReady:Z

    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/fl/saas/e;->responseTime:J

    .line 9
    .line 10
    invoke-super {p0}, Lcom/fl/saas/n;->onLoadedEvent()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onShowEvent()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/fl/saas/e;->showTime:J

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/fl/saas/e;->isIntersReady:Z

    .line 9
    .line 10
    invoke-super {p0}, Lcom/fl/saas/n;->onShowEvent()V

    .line 11
    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/fl/saas/e;->canCallback:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/fl/saas/e;->hasBackDisplay:Z

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    iput-boolean v1, p0, Lcom/fl/saas/e;->hasBackDisplay:Z

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/fl/saas/o;->getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewListener;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    instance-of v2, v1, Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    check-cast v1, Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;

    .line 33
    .line 34
    invoke-interface {v1}, Lcom/fl/saas/adx/base/base/listener/InnerInterstitialListener;->onAdDisplay()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/fl/saas/e;->a(Z)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Landroid/os/Handler;

    .line 44
    .line 45
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lcom/fl/saas/X1;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/fl/saas/X1;-><init>(Lcom/fl/saas/e;)V

    .line 55
    .line 56
    .line 57
    const-wide/16 v2, 0x1f4

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :goto_1
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public requiresActivityDetection()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract selfCloseInterstitialAd()Z
.end method

.method public setCanCallBack(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/fl/saas/e;->canCallback:Z

    .line 2
    .line 3
    return-void
.end method

.method public setCanCallBackClose(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/fl/saas/e;->canCallbackClose:Z

    .line 2
    .line 3
    return-void
.end method

.method public showAd()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/fl/saas/n;->showAd()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/fl/saas/n;->isReRequest()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/fl/saas/e;->showInterstitialAd(Landroid/app/Activity;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/fl/saas/o;->getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    instance-of v1, v0, Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    check-cast v0, Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/fl/saas/adx/base/base/listener/InnerInterstitialListener;->onAdReady()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public showAutoCloseView(Landroid/app/Activity;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_5

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/fl/saas/e;->haveShowCloseView:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    :try_start_0
    iput-boolean v0, p0, Lcom/fl/saas/e;->haveShowCloseView:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/fl/saas/j;->f()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-lez v1, :cond_1

    .line 27
    .line 28
    move v2, v0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v2, 0x0

    .line 31
    :goto_0
    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Lcom/fl/saas/j;->u()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    if-eqz v3, :cond_5

    .line 42
    .line 43
    :cond_2
    new-instance v4, Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    .line 44
    .line 45
    invoke-direct {v4, p1}, Lcom/fl/saas/adx/base/widget/CountDownProgressView;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    iput-object v4, p0, Lcom/fl/saas/e;->countDownTextView:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    .line 49
    .line 50
    invoke-virtual {v4, v1}, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->setCount(I)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 54
    .line 55
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 56
    .line 57
    .line 58
    const/high16 v4, 0x41a00000    # 20.0f

    .line 59
    .line 60
    invoke-static {v4}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    int-to-float v5, v5

    .line 65
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 66
    .line 67
    .line 68
    const-string v5, "#60000000"

    .line 69
    .line 70
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 75
    .line 76
    .line 77
    const/high16 v5, 0x40000000    # 2.0f

    .line 78
    .line 79
    invoke-static {v5}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    const-string v6, "#D9D9D9"

    .line 84
    .line 85
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 90
    .line 91
    .line 92
    iget-object v5, p0, Lcom/fl/saas/e;->countDownTextView:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    .line 93
    .line 94
    invoke-virtual {v5, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/fl/saas/e;->countDownTextView:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    .line 98
    .line 99
    invoke-virtual {v1, v4}, Landroid/view/View;->setElevation(F)V

    .line 100
    .line 101
    .line 102
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    .line 103
    .line 104
    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 105
    .line 106
    .line 107
    const/16 v4, 0x8

    .line 108
    .line 109
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 110
    .line 111
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 112
    .line 113
    const/high16 v0, 0x43200000    # 160.0f

    .line 114
    .line 115
    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 120
    .line 121
    const/high16 v0, 0x42000000    # 32.0f

    .line 122
    .line 123
    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 128
    .line 129
    const/16 v0, 0x51

    .line 130
    .line 131
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 132
    .line 133
    const/high16 v0, 0x42a00000    # 80.0f

    .line 134
    .line 135
    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 140
    .line 141
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iget-object v0, p0, Lcom/fl/saas/e;->countDownTextView:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    .line 146
    .line 147
    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    .line 149
    .line 150
    if-eqz v2, :cond_4

    .line 151
    .line 152
    if-eqz v3, :cond_3

    .line 153
    .line 154
    iget-object p1, p0, Lcom/fl/saas/e;->countDownTextView:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    .line 155
    .line 156
    new-instance v0, Lcom/fl/saas/g2;

    .line 157
    .line 158
    invoke-direct {v0}, Lcom/fl/saas/g2;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->setOnTick(Landroidx/arch/core/util/Function;)Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lcom/fl/saas/e;->countDownTextView:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    .line 165
    .line 166
    new-instance v0, Lcom/fl/saas/T1;

    .line 167
    .line 168
    invoke-direct {v0, p0}, Lcom/fl/saas/T1;-><init>(Lcom/fl/saas/e;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :catchall_0
    move-exception p1

    .line 176
    goto :goto_2

    .line 177
    :cond_3
    iget-object p1, p0, Lcom/fl/saas/e;->countDownTextView:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    .line 178
    .line 179
    new-instance v0, Lcom/fl/saas/U1;

    .line 180
    .line 181
    invoke-direct {v0}, Lcom/fl/saas/U1;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->setOnTick(Landroidx/arch/core/util/Function;)Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    .line 185
    .line 186
    .line 187
    :goto_1
    iget-object p1, p0, Lcom/fl/saas/e;->countDownTextView:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    .line 188
    .line 189
    new-instance v0, Lcom/fl/saas/V1;

    .line 190
    .line 191
    invoke-direct {v0, p0}, Lcom/fl/saas/V1;-><init>(Lcom/fl/saas/e;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->setFinish(Ljava/lang/Runnable;)Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    .line 195
    .line 196
    .line 197
    iget-object p1, p0, Lcom/fl/saas/e;->countDownTextView:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    .line 198
    .line 199
    invoke-virtual {p1}, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->start()V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :cond_4
    iget-object p1, p0, Lcom/fl/saas/e;->countDownTextView:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    .line 204
    .line 205
    const-string v0, "    \u70b9\u51fb\u5173\u95ed\u5e7f\u544a    "

    .line 206
    .line 207
    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->setText(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget-object p1, p0, Lcom/fl/saas/e;->countDownTextView:Lcom/fl/saas/adx/base/widget/CountDownProgressView;

    .line 211
    .line 212
    new-instance v0, Lcom/fl/saas/W1;

    .line 213
    .line 214
    invoke-direct {v0, p0}, Lcom/fl/saas/W1;-><init>(Lcom/fl/saas/e;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :goto_2
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 222
    .line 223
    .line 224
    :cond_5
    :goto_3
    return-void
.end method

.method public abstract showInterstitial(Landroid/app/Activity;)V
.end method

.method public final showInterstitialAd(Landroid/app/Activity;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/fl/saas/b2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/fl/saas/b2;-><init>()V

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
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0, v2}, Lcom/fl/saas/p0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-lez v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lcom/fl/saas/j;->f()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2, v0}, Lcom/fl/saas/j;->b(I)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iput-boolean v1, p0, Lcom/fl/saas/e;->isIntersReady:Z

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/fl/saas/n;->reportRequestShow()V

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lcom/fl/saas/p0;->b(Ljava/lang/Object;)Lcom/fl/saas/p0;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v0, Lcom/fl/saas/c2;

    .line 54
    .line 55
    invoke-direct {v0}, Lcom/fl/saas/c2;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/x0;)Lcom/fl/saas/p0;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-instance v0, Lcom/fl/saas/d2;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lcom/fl/saas/d2;-><init>(Lcom/fl/saas/e;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/b1;)Lcom/fl/saas/p0;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    new-instance v0, Lcom/fl/saas/e2;

    .line 72
    .line 73
    invoke-direct {v0, p0}, Lcom/fl/saas/e2;-><init>(Lcom/fl/saas/e;)V

    .line 74
    .line 75
    .line 76
    new-instance v1, Lcom/fl/saas/f2;

    .line 77
    .line 78
    invoke-direct {v1, p0}, Lcom/fl/saas/f2;-><init>(Lcom/fl/saas/e;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0, v1}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;Ljava/lang/Runnable;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method
