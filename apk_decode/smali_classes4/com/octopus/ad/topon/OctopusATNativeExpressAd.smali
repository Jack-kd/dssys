.class public Lcom/octopus/ad/topon/OctopusATNativeExpressAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "OctopusATNativeExpressAd"


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
    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;->mNativeAd:Lcom/octopus/ad/NativeAd;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;->mNativeAd:Lcom/octopus/ad/NativeAd;

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
    iput-object v1, p0, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;->mNativeAd:Lcom/octopus/ad/NativeAd;

    .line 10
    .line 11
    :cond_0
    iput-object v1, p0, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    .line 14
    .line 15
    return-void
.end method

.method public getAdLogo()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;->mContext:Landroid/content/Context;

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
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isNativeExpress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    .line 5
    .line 6
    check-cast p1, Landroid/view/ViewGroup;

    .line 7
    .line 8
    new-instance v0, Lcom/octopus/ad/topon/OctopusATNativeExpressAd$1;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/octopus/ad/topon/OctopusATNativeExpressAd$1;-><init>(Lcom/octopus/ad/topon/OctopusATNativeExpressAd;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, p1, v0}, Lcom/octopus/ad/NativeAdResponse;->bindView(Landroid/view/ViewGroup;Lcom/octopus/ad/internal/nativead/NativeAdEventListener;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
