.class public abstract Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/api/mixNative/NativeAd;
.implements Lcom/fl/saas/adx/base/interfaces/MixNativeCycleDataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$EcpmMapper;,
        Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;,
        Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$WinAdInfoMapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fl/saas/adx/api/mixNative/NativeAd;",
        "Lcom/fl/saas/adx/base/interfaces/MixNativeCycleDataListener;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private fC0:Z

.field private fE0:Z

.field private fP0:Z

.field private hasDestroy:Z

.field private hasRelease:Z

.field public isNativeReady:Z

.field private isReportExposure:Z

.field private mAdInfoMapper:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;

.field private mCanRefresh:Z

.field private mClickCallBackListener:Lcom/fl/saas/adx/api/mixNative/NativeClickCallbackListener;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mEcpmMapper:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$EcpmMapper;

.field private mEventListener:Lcom/fl/saas/adx/api/mixNative/NativeEventListener;

.field private mNativeAd:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mNativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

.field private mNativeMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

.field private mR0:Ljava/lang/Runnable;

.field private mReportEventListener:Lcom/fl/saas/D0;

.field private mSx:Lcom/fl/saas/c1;

.field private mTimer:Ljava/util/Timer;

.field private mWinAdInfoMapper:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$WinAdInfoMapper;

.field private nativeAdViewVisibility:Z

.field private onNativeReleaseListener:Lcom/fl/saas/adx/base/manager/MixNativeManager$OnNativeReleaseListener;

.field private refreshNativeAD:Lcom/fl/saas/adx/api/mixNative/NativeAd;

.field private requestParams:Lcom/fl/saas/adx/api/AdParams;

.field public responseTime:J

.field private selfRenderView:Landroid/view/View;

.field private showActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private tE1:J

.field private tS1:J

.field private tT0:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Native"

    invoke-static {v0, p0}, Lcom/fl/saas/adx/util/CommConstant;->getObjTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->isReportExposure:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->nativeAdViewVisibility:Z

    iput-boolean v1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mCanRefresh:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->hasDestroy:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->hasRelease:Z

    :try_start_0
    iput-boolean v1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->isNativeReady:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->responseTime:J

    iput-object p2, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mNativeAd:Ljava/lang/Object;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mContext:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mNativeAd:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->init(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;Lcom/fl/saas/adx/api/mixNative/NativeEventListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mNativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/fl/saas/adx/api/mixNative/NativeEventListener;->onAdClicked(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic access$000(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->nativeAdViewVisibility:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->nativeAdViewVisibility:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->pAcRs()V

    return-void
.end method

.method public static synthetic access$200(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->pAcP()V

    return-void
.end method

.method public static synthetic access$300(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->stopRefresh()V

    return-void
.end method

.method public static synthetic access$400(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->pC0()V

    return-void
.end method

.method public static synthetic access$500(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->showActivityRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->showActivityRef:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Lcom/fl/saas/adx/api/AdParams;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->requestParams:Lcom/fl/saas/adx/api/AdParams;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Lcom/fl/saas/adx/api/mixNative/NativeAd;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->refreshNativeAD:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    return-object p0
.end method

.method public static synthetic access$702(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;Lcom/fl/saas/adx/api/mixNative/NativeAd;)Lcom/fl/saas/adx/api/mixNative/NativeAd;
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->refreshNativeAD:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    return-object p1
.end method

.method public static synthetic access$800(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Lcom/fl/saas/p0;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getEventListener()Lcom/fl/saas/p0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$900(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Lcom/fl/saas/adx/api/mixNative/NativeAdView;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mNativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    return-object p0
.end method

.method public static synthetic b(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;Lcom/fl/saas/adx/base/exception/FLError;Lcom/fl/saas/adx/api/mixNative/NativeEventListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mNativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/fl/saas/adx/api/mixNative/NativeEventListener;->onAdFailed(Lcom/fl/saas/adx/api/mixNative/NativeAdView;Lcom/fl/saas/adx/base/exception/FLError;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic c(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;Lcom/fl/saas/adx/api/mixNative/NativeEventListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mNativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/fl/saas/adx/api/mixNative/NativeEventListener;->onAdVideoEnd(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private checkDataUpdate()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mNativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$1;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$1;-><init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->setOnViewWindowChangedListener(Lcom/fl/saas/adx/base/widget/VisibilityLayout$OnViewWindowChangedListener;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->checkRefreshAd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method private checkRefreshAd()V
    .locals 8

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->isNativeExpress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mCanRefresh:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mAdInfoMapper:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;->getSource()Lcom/fl/saas/j;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mAdInfoMapper:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;

    invoke-interface {v0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;->getSource()Lcom/fl/saas/j;

    move-result-object v0

    iget v1, v0, Lcom/fl/saas/j;->e0:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, v0, Lcom/fl/saas/j;->f0:I

    if-lez v1, :cond_1

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mTimer:Ljava/util/Timer;

    new-instance v3, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;

    invoke-direct {v3, p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;-><init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V

    iget v0, v0, Lcom/fl/saas/j;->f0:I

    int-to-long v0, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    move-wide v6, v4

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->render(Ljava/lang/Object;Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;JLcom/fl/saas/adx/api/mixNative/NativeEventListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mNativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 2
    .line 3
    invoke-interface {p3, p0, p1, p2}, Lcom/fl/saas/adx/api/mixNative/NativeEventListener;->onAdVideoProgress(Lcom/fl/saas/adx/api/mixNative/NativeAdView;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private eAcT()V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->fC0:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->fE0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->fE0:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mR0:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->eSx()V

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->pJ0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method private eSx()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mSx:Lcom/fl/saas/c1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/c1;->d()V

    :cond_0
    return-void
.end method

.method public static synthetic f(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;Lcom/fl/saas/adx/api/mixNative/NativeEventListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mNativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/fl/saas/adx/api/mixNative/NativeEventListener;->onAdImpressed(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic g(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;Lcom/fl/saas/adx/api/mixNative/NativeEventListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mNativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/fl/saas/adx/api/mixNative/NativeEventListener;->onAdVideoStart(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private gSx()Lcom/fl/saas/c1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mSx:Lcom/fl/saas/c1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/fl/saas/c1;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/fl/saas/c1;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mSx:Lcom/fl/saas/c1;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mSx:Lcom/fl/saas/c1;

    .line 13
    .line 14
    return-object v0
.end method

.method private getEventListener()Lcom/fl/saas/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fl/saas/p0;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mEventListener:Lcom/fl/saas/adx/api/mixNative/NativeEventListener;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/fl/saas/p0;->b(Ljava/lang/Object;)Lcom/fl/saas/p0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private getReportEventListener()Lcom/fl/saas/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fl/saas/p0;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mReportEventListener:Lcom/fl/saas/D0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/fl/saas/p0;->b(Ljava/lang/Object;)Lcom/fl/saas/p0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static synthetic h(Lcom/fl/saas/adx/base/widget/InclineView$InclineListener;Lcom/fl/saas/adx/base/innterNative/ActionView$Type;Landroid/view/View;III)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0, p3, p4, p5}, Lcom/fl/saas/adx/base/widget/InclineView$InclineListener;->onIncline(III)V

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->Spread:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    .line 7
    .line 8
    if-eq p1, p0, :cond_1

    .line 9
    .line 10
    invoke-static {p2}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    :cond_1
    return-void
.end method

.method public static synthetic i(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Lcom/fl/saas/adx/api/mixNative/NativeMaterial;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAdOpt()Lcom/fl/saas/p0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/fl/saas/adx/base/innterNative/i;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/innterNative/i;-><init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Landroidx/arch/core/util/Function;)Lcom/fl/saas/p0;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lcom/fl/saas/p0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    .line 20
    .line 21
    return-object p0
.end method

.method public static synthetic j(Lcom/fl/saas/adx/base/widget/ShakeView$ShakeListener;Lcom/fl/saas/adx/base/innterNative/ActionView$Type;Landroid/view/View;III)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0, p3, p4, p5}, Lcom/fl/saas/adx/base/widget/ShakeView$ShakeListener;->onShake(III)V

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->Spread:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    .line 7
    .line 8
    if-eq p1, p0, :cond_1

    .line 9
    .line 10
    invoke-static {p2}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    :cond_1
    return-void
.end method

.method public static synthetic k(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->eAcT()V

    return-void
.end method

.method public static synthetic l(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;Lcom/fl/saas/adx/api/mixNative/NativeEventListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mNativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/fl/saas/adx/api/mixNative/NativeEventListener;->onAdClose(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic m(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;Lcom/fl/saas/adx/api/mixNative/NativeEventListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mNativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/fl/saas/adx/api/mixNative/NativeEventListener;->onAdClicked(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private pAcD()V
    .locals 5

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->fC0:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->fE0:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->fP0:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mR0:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->tT0:J

    iget-wide v3, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->tE1:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->eAcT()V

    return-void

    :cond_1
    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->removePostUI(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mR0:Ljava/lang/Runnable;

    invoke-static {v1, v2, v0}, Lcom/fl/saas/adx/util/DeviceUtil;->postUIDelayed(JLjava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private pAcP()V
    .locals 6

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->fC0:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->fE0:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->fP0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mR0:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->fP0:Z

    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->removePostUI(Ljava/lang/Runnable;)V

    iget-wide v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->tE1:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->tS1:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->tE1:J

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->eSx()V

    :cond_1
    :goto_0
    return-void
.end method

.method private pAcRs()V
    .locals 2

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->fC0:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->fE0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mR0:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->fP0:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->fP0:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->tS1:J

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->sSx()V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->pAcD()V

    :cond_1
    :goto_0
    return-void
.end method

.method private pC0()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->tT0:J

    iput-wide v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->tE1:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->fP0:Z

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mR0:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->removePostUI(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mR0:Ljava/lang/Runnable;

    :cond_0
    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->eSx()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mSx:Lcom/fl/saas/c1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/fl/saas/c1;->c()V

    iput-object v1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mSx:Lcom/fl/saas/c1;

    :cond_1
    return-void
.end method

.method private pS0()V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mAdInfoMapper:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;->getSource()Lcom/fl/saas/j;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mAdInfoMapper:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;

    invoke-interface {v0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;->getSource()Lcom/fl/saas/j;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/fl/saas/j;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->fC0:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->fE0:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->pC0()V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->sSx()V

    iget v0, v0, Lcom/fl/saas/j;->B2:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->tT0:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->tE1:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->tS1:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->fP0:Z

    new-instance v0, Lcom/fl/saas/adx/base/innterNative/m;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/innterNative/m;-><init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mR0:Ljava/lang/Runnable;

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->nativeAdViewVisibility:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->fP0:Z

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->eSx()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->pAcD()V

    :cond_2
    :goto_0
    return-void
.end method

.method private sSx()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mAdInfoMapper:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;->getSource()Lcom/fl/saas/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/j;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->gSx()Lcom/fl/saas/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/c1;->b()V

    :cond_0
    return-void
.end method

.method private stopRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method


# virtual methods
.method public biddingResultUpload(ZII)V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->TAG:Ljava/lang/String;

    const-string v1, "biddingResultUpload"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    instance-of v0, p0, Lcom/fl/saas/adx/base/bidding/BiddingResult;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/fl/saas/adx/base/bidding/BiddingResult;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/fl/saas/adx/base/bidding/BiddingResult;->biddingResult(ZIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    iget-object p2, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "biddingResultUploadError:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bindContainer(Landroid/view/ViewGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mNativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    if-nez v0, :cond_0

    const/16 p1, 0x4fb5

    const-string v0, "NativeAdView is null"

    invoke-static {p1, v0}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->onAdFailedEvent(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->TAG:Ljava/lang/String;

    const-string v1, "bindContainer"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->selfRenderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/fl/saas/adx/util/ViewHelper;->getMatchParent()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mNativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mNativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->selfRenderView:Landroid/view/View;

    invoke-static {v0}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->selfRenderView:Landroid/view/View;

    invoke-static {}, Lcom/fl/saas/adx/util/ViewHelper;->getMatchParent()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public abstract createNativeMaterial(Ljava/lang/Object;)Lcom/fl/saas/adx/api/mixNative/NativeMaterial;
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/fl/saas/adx/api/mixNative/NativeMaterial;"
        }
    .end annotation
.end method

.method public destroy()V
    .locals 3

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->hasDestroy:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->hasDestroy:Z

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->refreshNativeAD:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->release()V

    iput-object v1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->refreshNativeAD:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mNativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->unOnVisibilityChanged()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mNativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->unOnVisibilityRatioChanged()V

    :cond_2
    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->stopRefresh()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mNativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mCanRefresh:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mNativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    invoke-static {v0}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mNativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->detachedView()V

    :cond_3
    iput-object v1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mEventListener:Lcom/fl/saas/adx/api/mixNative/NativeEventListener;

    iput-object v1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mClickCallBackListener:Lcom/fl/saas/adx/api/mixNative/NativeClickCallbackListener;

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->pC0()V

    return-void
.end method

.method public gVx()F
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mSx:Lcom/fl/saas/c1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/c1;->e()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public gVy()F
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mSx:Lcom/fl/saas/c1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/c1;->f()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public gVz()F
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mSx:Lcom/fl/saas/c1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/c1;->g()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAdInfo()Lcom/fl/saas/adx/base/bean/AdInfo;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mAdInfoMapper:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;->getAdInfo()Lcom/fl/saas/adx/base/bean/AdInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdMaterial()Lcom/fl/saas/adx/api/mixNative/NativeMaterial;
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mNativeMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-static {v0}, Lcom/fl/saas/p0;->b(Ljava/lang/Object;)Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/innterNative/r;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/innterNative/r;-><init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->b(Lcom/fl/saas/b1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    iput-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mNativeMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    return-object v0
.end method

.method public getAreaShakesView()Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/fl/saas/R$layout;->fl_adx_view_area_shake_spread:I

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/ViewHelper;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/fl/saas/R$id;->iv_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableDiskCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableMemoryCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v2

    const-string v3, "https://creative.medproad.com/medpro/imgs/944e91c4ed73a3267d43f9b9eee5bea.png"

    invoke-virtual {v2, v1, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->showActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->showActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->showActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_2
    return-object v0

    :goto_1
    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public getCycleNativeAd()Lcom/fl/saas/adx/api/mixNative/NativeAd;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getECPM()I
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mEcpmMapper:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$EcpmMapper;

    invoke-static {v0}, Lcom/fl/saas/p0;->b(Ljava/lang/Object;)Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/innterNative/n;

    invoke-direct {v1}, Lcom/fl/saas/adx/base/innterNative/n;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Landroidx/arch/core/util/Function;)Lcom/fl/saas/p0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getInterstitalShakesView()Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/fl/saas/R$layout;->fl_adx_view_shake_interstital:I

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/ViewHelper;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getNativeAd()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mNativeAd:Ljava/lang/Object;

    return-object v0
.end method

.method public getNativeAdOpt()Lcom/fl/saas/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fl/saas/p0;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mNativeAd:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/fl/saas/p0;->b(Ljava/lang/Object;)Lcom/fl/saas/p0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getNativeAdView()Lcom/fl/saas/adx/api/mixNative/NativeAdView;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mNativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    return-object v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mAdInfoMapper:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;->getSource()Lcom/fl/saas/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mAdInfoMapper:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;

    invoke-interface {v0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;->getSource()Lcom/fl/saas/j;

    move-result-object v0

    iget-object v0, v0, Lcom/fl/saas/j;->g:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSelfRenderView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->selfRenderView:Landroid/view/View;

    return-object v0
.end method

.method public getShakeTipsView()Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/fl/saas/R$layout;->fl_adx_view_shake_template:I

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/ViewHelper;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSpreadInlineView()Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/fl/saas/R$layout;->fl_adx_view_incline_spread:I

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/ViewHelper;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSpreadShakesView(Z)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/fl/saas/R$layout;->fl_adx_view_shake_type_spread:I

    :goto_0
    invoke-static {p1, v0}, Lcom/fl/saas/adx/util/ViewHelper;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/fl/saas/R$layout;->fl_adx_view_shake_spread:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSpreadSlidingTwistingView(IZILcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView$SlidingListener;)Landroid/view/View;
    .locals 2

    new-instance v0, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;->setScale_type(I)V

    invoke-virtual {v0, p3, p4}, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;->setSlidingListener(ILcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView$SlidingListener;)V

    invoke-virtual {v0, p2}, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;->createView(Z)V

    return-object v0
.end method

.method public getSpreadSlidingView(IILcom/fl/saas/adx/base/widget/FingerSlidingView$SlidingListener;)Landroid/view/View;
    .locals 2

    new-instance v0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fl/saas/adx/base/widget/FingerSlidingView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->setScale_type(I)V

    invoke-virtual {v0, p2, p3}, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->setSlidingListener(ILcom/fl/saas/adx/base/widget/FingerSlidingView$SlidingListener;)V

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->createView()V

    return-object v0
.end method

.method public getTemplateShakesView()Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/fl/saas/R$layout;->fl_adx_view_shake_template:I

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/ViewHelper;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTipsView(I)Landroid/view/View;
    .locals 4

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x438c0000    # 280.0f

    invoke-static {v1}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v1

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v2}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v2

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    const/high16 p1, 0x43960000    # 300.0f

    invoke-static {p1}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v1

    const/high16 p1, 0x42b40000    # 90.0f

    :goto_0
    invoke-static {p1}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v2

    goto :goto_1

    :cond_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    const/high16 p1, 0x43a00000    # 320.0f

    invoke-static {p1}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v1

    const/high16 p1, 0x42c80000    # 100.0f

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x51

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    sget p1, Lcom/fl/saas/R$drawable;->fl_adx_shake_bg_template:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    const-string p1, "\u70b9\u51fb\u8df3\u8f6c\u8be6\u60c5\u9875\u9762\u6216\u7b2c\u4e09\u65b9\u5e94\u7528>"

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "#ffffff"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method

.method public getWinAdInfo()Lcom/fl/saas/adx/base/widget/WinAdInfo;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mWinAdInfoMapper:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$WinAdInfoMapper;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$WinAdInfoMapper;->getAdInfo()Lcom/fl/saas/adx/base/widget/WinAdInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract init(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public isReady()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mAdInfoMapper:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;->getSource()Lcom/fl/saas/j;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->responseTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-object v3, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mAdInfoMapper:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;

    invoke-interface {v3}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;->getSource()Lcom/fl/saas/j;

    move-result-object v3

    iget v3, v3, Lcom/fl/saas/j;->D1:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-gez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-boolean v3, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->isNativeReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    return v0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_2
    return v0
.end method

.method public isShakeType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public listenInclineView(Landroid/view/View;ZLcom/fl/saas/adx/base/innterNative/ActionView$Type;ILcom/fl/saas/adx/base/widget/InclineView$InclineListener;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/fl/saas/R$id;->yd_incline_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/adx/base/widget/InclineView;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p2}, Lcom/fl/saas/adx/base/widget/InclineView;->setCallback(Z)V

    new-instance p2, Lcom/fl/saas/adx/base/innterNative/g;

    invoke-direct {p2, p5, p3, p1}, Lcom/fl/saas/adx/base/innterNative/g;-><init>(Lcom/fl/saas/adx/base/widget/InclineView$InclineListener;Lcom/fl/saas/adx/base/innterNative/ActionView$Type;Landroid/view/View;)V

    invoke-virtual {v0, p4, p2}, Lcom/fl/saas/adx/base/widget/InclineView;->setInclineListener(ILcom/fl/saas/adx/base/widget/InclineView$InclineListener;)V

    return-void
.end method

.method public listenShakeView(Landroid/view/View;ZLcom/fl/saas/adx/base/innterNative/ActionView$Type;ILcom/fl/saas/adx/base/widget/ShakeView$ShakeListener;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/fl/saas/R$id;->yd_shake_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/adx/base/widget/ShakeView;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p2}, Lcom/fl/saas/adx/base/widget/ShakeView;->setCallback(Z)V

    new-instance p2, Lcom/fl/saas/adx/base/innterNative/p;

    invoke-direct {p2, p5, p3, p1}, Lcom/fl/saas/adx/base/innterNative/p;-><init>(Lcom/fl/saas/adx/base/widget/ShakeView$ShakeListener;Lcom/fl/saas/adx/base/innterNative/ActionView$Type;Landroid/view/View;)V

    invoke-virtual {v0, p4, p2}, Lcom/fl/saas/adx/base/widget/ShakeView;->setShakeListener(ILcom/fl/saas/adx/base/widget/ShakeView$ShakeListener;)V

    return-void
.end method

.method public onAdClickedCallBackEvent(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->TAG:Ljava/lang/String;

    const-string v1, "onAdClickedCallBackEvent"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getReportEventListener()Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/innterNative/e;

    invoke-direct {v1}, Lcom/fl/saas/adx/base/innterNative/e;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mClickCallBackListener:Lcom/fl/saas/adx/api/mixNative/NativeClickCallbackListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/fl/saas/adx/api/mixNative/NativeClickCallbackListener;->onAdClicked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAdClickedEvent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->TAG:Ljava/lang/String;

    const-string v1, "onAdClickedEvent"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getReportEventListener()Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/innterNative/e;

    invoke-direct {v1}, Lcom/fl/saas/adx/base/innterNative/e;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getEventListener()Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/innterNative/f;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/innterNative/f;-><init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->fC0:Z

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->pC0()V

    return-void
.end method

.method public onAdClickedEvent(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->TAG:Ljava/lang/String;

    const-string v1, "onAdClickedEvent"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getReportEventListener()Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/innterNative/e;

    invoke-direct {v1}, Lcom/fl/saas/adx/base/innterNative/e;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getEventListener()Lcom/fl/saas/p0;

    move-result-object p1

    new-instance v1, Lcom/fl/saas/adx/base/innterNative/h;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/innterNative/h;-><init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V

    invoke-virtual {p1, v1}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    :cond_0
    iput-boolean v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->fC0:Z

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->pC0()V

    return-void
.end method

.method public onAdCloseEvent()V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->TAG:Ljava/lang/String;

    const-string v1, "onAdCloseEvent"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->stopRefresh()V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getEventListener()Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/innterNative/b;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/innterNative/b;-><init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    return-void
.end method

.method public onAdFailedEvent(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 3

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdFailed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getEventListener()Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/innterNative/l;

    invoke-direct {v1, p0, p1}, Lcom/fl/saas/adx/base/innterNative/l;-><init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;Lcom/fl/saas/adx/base/exception/FLError;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    return-void
.end method

.method public onAdImpressedEvent()V
    .locals 4

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdImpressedEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->isReportExposure:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getEventListener()Lcom/fl/saas/p0;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->checkDataUpdate()V

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->isReportExposure:Z

    if-nez v0, :cond_1

    iput-boolean v3, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->isReportExposure:Z

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getReportEventListener()Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/innterNative/c;

    invoke-direct {v1}, Lcom/fl/saas/adx/base/innterNative/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getEventListener()Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/innterNative/d;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/innterNative/d;-><init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->pS0()V

    :cond_1
    return-void
.end method

.method public onAdVideoEndEvent()V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->TAG:Ljava/lang/String;

    const-string v1, "onAdVideoEndEvent"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getEventListener()Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/innterNative/o;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/innterNative/o;-><init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    return-void
.end method

.method public onAdVideoProgress(J)V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->TAG:Ljava/lang/String;

    const-string v1, "onAdVideoProgress"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getEventListener()Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/innterNative/q;

    invoke-direct {v1, p0, p1, p2}, Lcom/fl/saas/adx/base/innterNative/q;-><init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;J)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    return-void
.end method

.method public onAdVideoStartEvent()V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->TAG:Ljava/lang/String;

    const-string v1, "onAdVideoStartEvent"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getEventListener()Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/innterNative/a;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/innterNative/a;-><init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    return-void
.end method

.method public onDetachedVideo()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public pJ0()V
    .locals 0

    return-void
.end method

.method public prepare(Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;)V
    .locals 3

    const/16 v0, 0x4fb5

    :try_start_0
    iget-object v1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mNativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    if-nez v1, :cond_0

    const-string p1, "Please execute the renderAdContainer() method first."

    invoke-static {v0, p1}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->onAdFailedEvent(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "prepareInfo is null"

    const/16 v1, 0x4fb4

    invoke-static {v1, p1}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->showActivityRef:Ljava/lang/ref/WeakReference;

    :cond_2
    invoke-direct {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getReportEventListener()Lcom/fl/saas/p0;

    move-result-object v1

    new-instance v2, Lcom/fl/saas/adx/base/innterNative/j;

    invoke-direct {v2}, Lcom/fl/saas/adx/base/innterNative/j;-><init>()V

    invoke-virtual {v1, v2}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAdOpt()Lcom/fl/saas/p0;

    move-result-object v1

    new-instance v2, Lcom/fl/saas/adx/base/innterNative/k;

    invoke-direct {v2, p0, p1}, Lcom/fl/saas/adx/base/innterNative/k;-><init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;)V

    invoke-virtual {v1, v2}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->onAdFailedEvent(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method public release()V
    .locals 2

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->hasRelease:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->hasRelease:Z

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->destroy()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->onNativeReleaseListener:Lcom/fl/saas/adx/base/manager/MixNativeManager$OnNativeReleaseListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/fl/saas/adx/base/manager/MixNativeManager$OnNativeReleaseListener;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->onNativeReleaseListener:Lcom/fl/saas/adx/base/manager/MixNativeManager$OnNativeReleaseListener;

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract render(Ljava/lang/Object;Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;",
            ")V"
        }
    .end annotation
.end method

.method public renderAdContainer(Lcom/fl/saas/adx/api/mixNative/NativeAdView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mNativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    iput-object p2, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->selfRenderView:Landroid/view/View;

    return-void
.end method

.method public setAdInfoMapper(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mAdInfoMapper:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;

    return-void
.end method

.method public setCanRefresh(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mCanRefresh:Z

    return-void
.end method

.method public setClickCallBackListener(Lcom/fl/saas/adx/api/mixNative/NativeClickCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mClickCallBackListener:Lcom/fl/saas/adx/api/mixNative/NativeClickCallbackListener;

    return-void
.end method

.method public setCycleNativeAd(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/fl/saas/adx/api/mixNative/NativeAd;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method public setEcpmMapper(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$EcpmMapper;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mEcpmMapper:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$EcpmMapper;

    return-void
.end method

.method public setNativeAdParams(Lcom/fl/saas/adx/api/AdParams;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->requestParams:Lcom/fl/saas/adx/api/AdParams;

    return-void
.end method

.method public setNativeEventListener(Lcom/fl/saas/adx/api/mixNative/NativeEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mEventListener:Lcom/fl/saas/adx/api/mixNative/NativeEventListener;

    return-void
.end method

.method public setOnNativeReleaseListener(Lcom/fl/saas/adx/base/manager/MixNativeManager$OnNativeReleaseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->onNativeReleaseListener:Lcom/fl/saas/adx/base/manager/MixNativeManager$OnNativeReleaseListener;

    return-void
.end method

.method public setReportEventListener(Lcom/fl/saas/D0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mReportEventListener:Lcom/fl/saas/D0;

    .line 2
    .line 3
    return-void
.end method

.method public setWinAdInfoMapper(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$WinAdInfoMapper;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->mWinAdInfoMapper:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$WinAdInfoMapper;

    return-void
.end method
