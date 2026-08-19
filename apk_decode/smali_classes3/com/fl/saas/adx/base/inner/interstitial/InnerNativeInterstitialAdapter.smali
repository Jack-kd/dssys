.class public abstract Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;
.super Lcom/fl/saas/e;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/inner/InnerNativeAdapter;
.implements Lcom/fl/saas/adx/base/interfaces/AdChangeCacheData;


# instance fields
.field private handler:Lcom/fl/saas/k0;

.field private interstitialHelper:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

.field private loadCallbackNeedShow:Z

.field private mNativeAd:Lcom/fl/saas/adx/api/mixNative/NativeAd;

.field private viewEvent:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/fl/saas/e;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->loadCallbackNeedShow:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;)Lcom/fl/saas/k0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->handler:Lcom/fl/saas/k0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;Lcom/fl/saas/b1;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fl/saas/n;->bindC2SBidECPM(Lcom/fl/saas/b1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;)Lcom/fl/saas/adx/api/mixNative/NativeAd;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->mNativeAd:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;Lcom/fl/saas/adx/api/mixNative/NativeAd;)Lcom/fl/saas/adx/api/mixNative/NativeAd;
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->mNativeAd:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;Lcom/fl/saas/adx/api/mixNative/NativeAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->render(Lcom/fl/saas/adx/api/mixNative/NativeAd;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fl/saas/n;->disposeError(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;)Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->interstitialHelper:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;)V
    .locals 0

    invoke-virtual {p0}, Lcom/fl/saas/e;->onClosedEvent()V

    return-void
.end method

.method public static synthetic access$700(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->loadCallbackNeedShow:Z

    return p0
.end method

.method public static synthetic access$800(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->startInterstitialActivity(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fl/saas/n;->disposeError(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method private checkStyle()Z
    .locals 21

    invoke-virtual/range {p0 .. p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v0

    iget-object v0, v0, Lcom/fl/saas/j;->L:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v1

    iget v1, v1, Lcom/fl/saas/j;->K:I

    invoke-virtual/range {p0 .. p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v2

    iget v2, v2, Lcom/fl/saas/j;->J:I

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v4

    const-string v5, "interstitialValue4"

    invoke-virtual {v4, v5}, Lcom/fl/saas/S0;->b(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v4

    const-string v8, "interstitialValue5"

    invoke-virtual {v4, v8}, Lcom/fl/saas/S0;->a(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v9

    const-string v10, "interstitialValue6"

    invoke-virtual {v9, v10}, Lcom/fl/saas/S0;->a(Ljava/lang/String;)I

    move-result v9

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v11

    const-string v12, "interstitialValue7"

    invoke-virtual {v11, v12}, Lcom/fl/saas/S0;->b(Ljava/lang/String;)J

    move-result-wide v13

    move-wide v15, v6

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getBootTime()J

    move-result-wide v6

    sub-long v15, v6, v15

    sub-long v13, v6, v13

    const/4 v11, 0x1

    add-int/2addr v4, v11

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v11

    invoke-virtual {v11, v8, v4}, Lcom/fl/saas/S0;->b(Ljava/lang/String;I)Lcom/fl/saas/S0;

    const-wide/32 v18, 0x5265c00

    cmp-long v11, v15, v18

    move-object/from16 v18, v0

    const/4 v0, 0x0

    const-wide/16 v19, 0x0

    if-gtz v11, :cond_0

    cmp-long v11, v15, v19

    if-gez v11, :cond_1

    :cond_0
    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v4

    invoke-virtual {v4, v10, v0}, Lcom/fl/saas/S0;->b(Ljava/lang/String;I)Lcom/fl/saas/S0;

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v4

    invoke-virtual {v4, v5, v6, v7}, Lcom/fl/saas/S0;->b(Ljava/lang/String;J)Lcom/fl/saas/S0;

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v8, v5}, Lcom/fl/saas/S0;->b(Ljava/lang/String;I)Lcom/fl/saas/S0;

    move v9, v0

    const/4 v4, 0x1

    :cond_1
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fl/saas/a1;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    int-to-long v3, v1

    const-wide/32 v15, 0xea60

    mul-long/2addr v3, v15

    cmp-long v1, v13, v3

    if-gtz v1, :cond_3

    cmp-long v1, v13, v19

    if-gez v1, :cond_4

    :cond_3
    if-ge v9, v2, :cond_4

    const/16 v17, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v0

    invoke-virtual {v0, v10, v9}, Lcom/fl/saas/S0;->b(Ljava/lang/String;I)Lcom/fl/saas/S0;

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v0

    invoke-virtual {v0, v12, v6, v7}, Lcom/fl/saas/S0;->b(Ljava/lang/String;J)Lcom/fl/saas/S0;

    return v17

    :cond_4
    return v0
.end method

.method private render(Lcom/fl/saas/adx/api/mixNative/NativeAd;)V
    .locals 10

    instance-of v0, p1, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    new-instance v1, Lcom/fl/saas/adx/base/inner/interstitial/a;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/inner/interstitial/a;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->setEcpmMapper(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$EcpmMapper;)V

    new-instance v1, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$2;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$2;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->setAdInfoMapper(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;)V

    :cond_0
    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->getAdMaterial()Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    move-result-object v6

    sget v0, Lcom/fl/saas/adx/util/DeviceUtil;->filling_timing:I

    if-nez v0, :cond_2

    invoke-static {v6}, Lcom/fl/saas/adx/util/ViewHelper;->checkMateria(Lcom/fl/saas/adx/api/mixNative/NativeMaterial;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/fl/saas/e;->onLoadedEvent()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x4fb5

    const-string v1, "media and imgUrl is empty"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fl/saas/n;->disposeError(Lcom/fl/saas/adx/base/exception/FLError;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/fl/saas/n;->isFullScreenInterstitial()Z

    move-result v4

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->viewEvent:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewEvent;

    if-nez v0, :cond_3

    new-instance v0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$3;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$3;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->viewEvent:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewEvent;

    :cond_3
    new-instance v2, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    invoke-virtual {p0}, Lcom/fl/saas/n;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/j;->v()Z

    move-result v5

    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/j;->i()Lcom/fl/saas/q0;

    move-result-object v7

    iget-object v8, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->viewEvent:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewEvent;

    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;-><init>(Landroid/content/Context;ZZLcom/fl/saas/adx/api/mixNative/NativeMaterial;Lcom/fl/saas/q0;Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewEvent;Lcom/fl/saas/j;)V

    iput-object v2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->interstitialHelper:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v0

    iget-wide v0, v0, Lcom/fl/saas/j;->n:D

    invoke-virtual {v2, v0, v1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->setAlpha(D)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->interstitialHelper:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->getNativeAdView()Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->interstitialHelper:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    invoke-virtual {v1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->getSelfView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->renderAdContainer(Lcom/fl/saas/adx/api/mixNative/NativeAdView;Landroid/view/View;)V

    instance-of v0, p1, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    new-instance v1, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$4;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$4;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->setReportEventListener(Lcom/fl/saas/D0;)V

    :cond_4
    new-instance v0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$5;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$5;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;)V

    invoke-interface {p1, v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->setNativeEventListener(Lcom/fl/saas/adx/api/mixNative/NativeEventListener;)V

    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fl/saas/j;->q()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object p1

    iget p1, p1, Lcom/fl/saas/j;->C:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    move p1, v0

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->interstitialHelper:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fl/saas/j;->e()Lcom/fl/saas/s;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->setClosePos(Lcom/fl/saas/s;)Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v2

    iget v2, v2, Lcom/fl/saas/j;->w:I

    invoke-interface {v1, v2}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;->setCloseViewSize(I)Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fl/saas/j;->n()Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v2

    iget v2, v2, Lcom/fl/saas/j;->v:I

    invoke-interface {v1, v0, v2}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;->setCountDown(ZI)Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fl/saas/j;->m()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;->setAutoClose(Z)Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v1

    iget v1, v1, Lcom/fl/saas/j;->H:I

    invoke-interface {v0, v1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;->setClickType(I)Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;->setShakeType(Z)Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v0

    iget v0, v0, Lcom/fl/saas/j;->x:I

    invoke-interface {p1, v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;->setSpeed(I)Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v0

    iget v0, v0, Lcom/fl/saas/j;->O:I

    invoke-interface {p1, v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;->setAnimalTime(I)Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v0

    iget v0, v0, Lcom/fl/saas/j;->N:I

    invoke-interface {p1, v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;->setAnimalStartTime(I)Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->interstitialHelper:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    invoke-virtual {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->loadView()V

    return-void
.end method

.method public static synthetic s(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/n;->canUseEcpm()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, -0x1

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/fl/saas/j;->g()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method private startInterstitialActivity(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->loadCallbackNeedShow:Z

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->interstitialHelper:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    invoke-direct {p0}, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->checkStyle()Z

    move-result v1

    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v2

    iget v2, v2, Lcom/fl/saas/j;->I:I

    invoke-virtual {v0, v1, v2}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->setViewType(ZI)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->mNativeAd:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    instance-of v1, v0, Lcom/fl/saas/adx/base/innterNative/ActionView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/fl/saas/adx/base/innterNative/ActionView;

    sget-object v1, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->Interstitial:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    invoke-interface {v0, v1}, Lcom/fl/saas/adx/base/innterNative/ActionView;->bindActionView(Lcom/fl/saas/adx/base/innterNative/ActionView$Type;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->interstitialHelper:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    invoke-virtual {v1, v0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->addActionView(Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v0

    iget-object v0, v0, Lcom/fl/saas/j;->g:Ljava/lang/String;

    invoke-static {}, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->getInstance()Lcom/fl/saas/adx/base/inner/FLAdTempHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->interstitialHelper:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    invoke-virtual {v1, v0, v2}, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->addInterstitialHelper(Ljava/lang/String;Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)V

    invoke-static {p1, v0}, Lcom/fl/saas/adx/base/activity/FLInterstitialActivity;->startMe(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    invoke-super {p0}, Lcom/fl/saas/e;->destroy()V

    invoke-virtual {p0}, Lcom/fl/saas/n;->isCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->handler:Lcom/fl/saas/k0;

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->mNativeAd:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    invoke-interface {p0, v0, v1}, Lcom/fl/saas/adx/base/inner/InnerNativeAdapter;->innerDestroy(Lcom/fl/saas/k0;Lcom/fl/saas/adx/api/mixNative/NativeAd;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->viewEvent:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewEvent;

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->interstitialHelper:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->destroy()V

    :cond_0
    return-void
.end method

.method public getNativeAd()Lcom/fl/saas/adx/api/mixNative/NativeAd;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->mNativeAd:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    return-object v0
.end method

.method public handle(Landroid/content/Context;)V
    .locals 4

    const-string v0, "handle"

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/fl/saas/adx/base/inner/InnerNativeAdapter;->loadNativeHandler()Lcom/fl/saas/k0;

    move-result-object v0

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->handler:Lcom/fl/saas/k0;

    new-instance v0, Lcom/fl/saas/adx/api/AdParams$Builder;

    invoke-virtual {p0}, Lcom/fl/saas/o;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fl/saas/adx/api/AdParams$Builder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/api/AdParams$Builder;->setIsMixNative(Z)Lcom/fl/saas/adx/api/AdParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/api/AdParams$Builder;->build()Lcom/fl/saas/adx/api/AdParams;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->handler:Lcom/fl/saas/k0;

    invoke-virtual {p0}, Lcom/fl/saas/n;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fl/saas/k0;->setContext(Landroid/content/Context;)Lcom/fl/saas/j0;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fl/saas/n;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/fl/saas/n;->getPosId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/fl/saas/j0;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fl/saas/j0;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fl/saas/n;->getLinkId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/fl/saas/j0;->setLinkId(Ljava/lang/String;)Lcom/fl/saas/j0;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/fl/saas/j0;->a(Lcom/fl/saas/adx/api/AdParams;)Lcom/fl/saas/j0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$1;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$1;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;)V

    invoke-interface {v0, v1}, Lcom/fl/saas/j0;->a(Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;)Lcom/fl/saas/j0;

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->handler:Lcom/fl/saas/k0;

    sget-object v1, Lcom/fl/saas/adx/base/innterNative/NativeStyle;->NATIVE:Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    invoke-virtual {v0, v1}, Lcom/fl/saas/k0;->a(Lcom/fl/saas/adx/base/innterNative/NativeStyle;)Lcom/fl/saas/k0;

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->handler:Lcom/fl/saas/k0;

    invoke-virtual {p0}, Lcom/fl/saas/n;->isHot()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fl/saas/k0;->a(Z)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->handler:Lcom/fl/saas/k0;

    invoke-virtual {v0, p1}, Lcom/fl/saas/k0;->a(Landroid/content/Context;)V

    return-void
.end method

.method public selfCloseInterstitialAd()Z
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->interstitialHelper:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->closeInterstitial()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCacheData(Ljava/lang/String;Lcom/fl/saas/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->mNativeAd:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/fl/saas/adx/base/interfaces/AdChangeCacheData;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/fl/saas/adx/base/interfaces/AdChangeCacheData;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Lcom/fl/saas/adx/base/interfaces/AdChangeCacheData;->setCacheData(Ljava/lang/String;Lcom/fl/saas/j;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public showInterstitial(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/fl/saas/n;->setContext(Landroid/content/Context;)Lcom/fl/saas/n;

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->interstitialHelper:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/fl/saas/n;->getContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->startInterstitialActivity(Landroid/content/Context;)V

    return-void

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->loadCallbackNeedShow:Z

    return-void
.end method
