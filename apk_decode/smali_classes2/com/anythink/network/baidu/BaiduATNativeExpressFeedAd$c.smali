.class Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/ExpressResponse$ExpressInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->a(Lcom/baidu/mobads/sdk/api/ExpressResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$c;->a:Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$c;->a:Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdClicked()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdExposed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$c;->a:Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdImpression()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$c;->a:Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->a(Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;)Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$RenderCallback;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$c;->a:Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->a(Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;)Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$RenderCallback;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$RenderCallback;->onAdRenderFail()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onAdRenderSuccess(Landroid/view/View;FF)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$c;->a:Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->a(Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;)Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$RenderCallback;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$c;->a:Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->a(Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;)Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$RenderCallback;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$c;->a:Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;

    .line 16
    .line 17
    invoke-interface {p1, p2}, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$RenderCallback;->onAdRenderSuccess(Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onAdUnionClick()V
    .locals 0

    return-void
.end method
