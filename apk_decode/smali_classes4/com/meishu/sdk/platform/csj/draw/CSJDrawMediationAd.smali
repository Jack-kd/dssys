.class public Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;
.super Lcom/meishu/sdk/core/ad/draw/DrawAd;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CSJDrawMediationAd"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

.field private hasExposed:Z

.field private mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;)V
    .locals 1

    .line 1
    const-string v0, "CSJ"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->adWrapper:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;)Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->adWrapper:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;)Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->hasExposed:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$202(Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->hasExposed:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->destroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->destroy()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public showAd(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;->isExpress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    new-instance v1, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$3;

    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$3;-><init>(Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V

    .line 12
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    new-instance v1, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$4;

    invoke-direct {v1, p0, p2}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$4;-><init>(Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;Landroid/view/ViewGroup;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->setExpressRenderListener(Lcom/bytedance/sdk/openadsdk/TTNativeAd$ExpressRenderListener;)V

    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->render()V

    .line 14
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->showAd(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;->isExpress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    new-instance v1, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$1;

    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$1;-><init>(Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V

    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    new-instance v1, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$2;

    invoke-direct {v1, p0, p1}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$2;-><init>(Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;Landroid/view/ViewGroup;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->setExpressRenderListener(Lcom/bytedance/sdk/openadsdk/TTNativeAd$ExpressRenderListener;)V

    .line 6
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->mTTFeedAd:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->render()V

    .line 7
    :cond_0
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->showAd(Landroid/view/ViewGroup;)V

    return-void
.end method
