.class public Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "OctopusATNativeUnifiedAd"


# instance fields
.field private mAdResponse:Lcom/octopus/ad/NativeAdResponse;

.field private mContext:Landroid/content/Context;

.field private mNativeAd:Lcom/octopus/ad/NativeAd;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/octopus/ad/NativeAd;Lcom/octopus/ad/NativeAdResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mNativeAd:Lcom/octopus/ad/NativeAd;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->setAdData()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private getChildView(Ljava/util/List;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p2, Landroid/view/ViewGroup;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {p0, p1, v1}, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->getChildView(Ljava/util/List;Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void

    .line 25
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mNativeAd:Lcom/octopus/ad/NativeAd;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/octopus/ad/NativeAd;->destroy()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mNativeAd:Lcom/octopus/ad/NativeAd;

    .line 10
    .line 11
    :cond_0
    iput-object v1, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    .line 14
    .line 15
    return-void
.end method

.method public getAdLogo()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/octopus/ad/NativeAdResponse;->getLogo(Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lcom/octopus/ad/NativeAdResponse;->getVideoView(Landroid/content/Context;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p1

    .line 12
    :catch_0
    move-exception p1

    .line 13
    const-string v0, "OctopusAd"

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return-object p1
.end method

.method public isNativeExpress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    move-object v0, p1

    .line 5
    check-cast v0, Landroid/view/ViewGroup;

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getClickViewList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    if-nez p2, :cond_1

    .line 12
    .line 13
    new-instance p2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p2, p1}, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->getChildView(Ljava/util/List;Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    .line 22
    .line 23
    new-instance v1, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd$1;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd$1;-><init>(Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v0, p2, v1}, Lcom/octopus/ad/NativeAdResponse;->bindUnifiedView(Landroid/view/ViewGroup;Ljava/util/List;Lcom/octopus/ad/internal/nativead/NativeAdEventListener;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public setAdData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getTitle()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setTitle(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getDescription()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setDescriptionText(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getIconUrl()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    .line 29
    .line 30
    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getImageUrl()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    .line 38
    .line 39
    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getImageUrls()Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setImageUrlList(Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    .line 47
    .line 48
    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getButtonText()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setCallToActionText(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
