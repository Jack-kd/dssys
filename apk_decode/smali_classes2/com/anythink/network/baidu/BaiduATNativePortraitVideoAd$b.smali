.class Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/IFeedPortraitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$b;->a:Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public pauseBtnClick()V
    .locals 0

    return-void
.end method

.method public playCompletion()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$b;->a:Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdVideoEnd()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public playError()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$b;->a:Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, "BaiduATNativePortraitVideoAd video play error"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/anythink/nativead/unitgroup/a;->notifyAdVideoVideoPlayFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public playPause()V
    .locals 0

    return-void
.end method

.method public playRenderingStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$b;->a:Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdVideoStart()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public playResume()V
    .locals 0

    return-void
.end method
