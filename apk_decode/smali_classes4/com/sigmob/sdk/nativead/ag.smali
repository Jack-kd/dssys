.class public Lcom/sigmob/sdk/nativead/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/windad/natives/WindNativeAdData;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/SigImage;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/sigmob/sdk/base/models/SigVideo;

.field private f:I

.field private final g:Lcom/sigmob/sdk/nativead/ab;

.field private final h:Lcom/sigmob/windad/natives/AdAppInfo;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDesc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getImageUrlList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->d:Ljava/util/List;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getNativeAd()Lcom/sigmob/sdk/base/models/rtb/ResponseNativeAd;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/rtb/ResponseNativeAd;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/nativead/ag;->f:I

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdAppInfo()Lcom/sigmob/windad/natives/AdAppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->h:Lcom/sigmob/windad/natives/AdAppInfo;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getNativeVideo()Lcom/sigmob/sdk/base/models/SigVideo;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->e:Lcom/sigmob/sdk/base/models/SigVideo;

    new-instance v0, Lcom/sigmob/sdk/nativead/ab;

    invoke-direct {v0}, Lcom/sigmob/sdk/nativead/ab;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->g:Lcom/sigmob/sdk/nativead/ab;

    invoke-virtual {v0, p1, p0}, Lcom/sigmob/sdk/nativead/ab;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/windad/natives/WindNativeAdData;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "sigmob"

    return-object v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->g:Lcom/sigmob/sdk/nativead/ab;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->p()I

    move-result v0

    return v0
.end method

.method public bindImageViews(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->g:Lcom/sigmob/sdk/nativead/ab;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/nativead/ab;->a(Ljava/util/List;I)V

    return-void
.end method

.method public bindMediaView(Landroid/view/ViewGroup;Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->g:Lcom/sigmob/sdk/nativead/ab;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/nativead/ab;->b(Landroid/view/ViewGroup;Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;)V

    return-void
.end method

.method public bindMediaViewWithoutAppInfo(Landroid/view/ViewGroup;Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->g:Lcom/sigmob/sdk/nativead/ab;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/nativead/ab;->a(Landroid/view/ViewGroup;Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;)V

    return-void
.end method

.method public bindViewForInteraction(Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/sigmob/windad/natives/NativeADEventListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/sigmob/windad/natives/NativeADEventListener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->g:Lcom/sigmob/sdk/nativead/ab;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/nativead/ab;->a(Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/sigmob/windad/natives/NativeADEventListener;)V

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->g:Lcom/sigmob/sdk/nativead/ab;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->v()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/nativead/ag;->f:I

    return v0
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->g:Lcom/sigmob/sdk/nativead/ab;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->x()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->g:Lcom/sigmob/sdk/nativead/ab;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->w()V

    return-void
.end method

.method public getAdAppInfo()Lcom/sigmob/windad/natives/AdAppInfo;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->h:Lcom/sigmob/windad/natives/AdAppInfo;

    return-object v0
.end method

.method public getAdLogo()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->g:Lcom/sigmob/sdk/nativead/ab;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->C()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getAdPatternType()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/nativead/ag;->f:I

    return v0
.end method

.method public getAdView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->g:Lcom/sigmob/sdk/nativead/ab;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->q()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCTAText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->g:Lcom/sigmob/sdk/nativead/ab;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->B()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->g:Lcom/sigmob/sdk/nativead/ab;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getEcpm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->g:Lcom/sigmob/sdk/nativead/ab;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->I()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/SigImage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->d:Ljava/util/List;

    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->g:Lcom/sigmob/sdk/nativead/ab;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->A()I

    move-result v0

    return v0
.end method

.method public getSaasOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->g:Lcom/sigmob/sdk/nativead/ab;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->M()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoCoverImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->g:Lcom/sigmob/sdk/nativead/ab;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->K()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->g:Lcom/sigmob/sdk/nativead/ab;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->t()I

    move-result v0

    return v0
.end method

.method public getVideoDuration()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->g:Lcom/sigmob/sdk/nativead/ab;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->s()I

    move-result v0

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->e:Lcom/sigmob/sdk/base/models/SigVideo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/SigVideo;->getHeight()I

    move-result v0

    return v0
.end method

.method public getVideoProgress()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->g:Lcom/sigmob/sdk/nativead/ab;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->u()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->e:Lcom/sigmob/sdk/base/models/SigVideo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/SigVideo;->getWidth()I

    move-result v0

    return v0
.end method

.method public getWindAdMetaData()Lcom/sigmob/sdk/base/models/WindAdMetaData;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->g:Lcom/sigmob/sdk/nativead/ab;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->L()Lcom/sigmob/sdk/base/models/WindAdMetaData;

    move-result-object v0

    return-object v0
.end method

.method public pauseVideo()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->g:Lcom/sigmob/sdk/nativead/ab;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->E()V

    return-void
.end method

.method public resumeVideo()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->g:Lcom/sigmob/sdk/nativead/ab;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->G()V

    return-void
.end method

.method public setDislikeInteractionCallback(Landroid/app/Activity;Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;)V
    .locals 0

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ag;->g:Lcom/sigmob/sdk/nativead/ab;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/nativead/ab;->a(Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;)V

    return-void
.end method

.method public setVideoMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->g:Lcom/sigmob/sdk/nativead/ab;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/nativead/ab;->b(Z)V

    return-void
.end method

.method public startVideo()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->g:Lcom/sigmob/sdk/nativead/ab;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->D()V

    return-void
.end method

.method public stopVideo()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ag;->g:Lcom/sigmob/sdk/nativead/ab;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->H()V

    return-void
.end method
