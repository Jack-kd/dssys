.class Lcom/anythink/network/baidu/BaiduATAdapter$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$RenderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/baidu/BaiduATAdapter$c;->onNativeLoad(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/api/ATBiddingResult;

.field final synthetic b:Lcom/anythink/network/baidu/BaiduATAdapter$c;


# direct methods
.method public constructor <init>(Lcom/anythink/network/baidu/BaiduATAdapter$c;Lcom/anythink/core/api/ATBiddingResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c$a;->b:Lcom/anythink/network/baidu/BaiduATAdapter$c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c$a;->a:Lcom/anythink/core/api/ATBiddingResult;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdRenderFail()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c$a;->b:Lcom/anythink/network/baidu/BaiduATAdapter$c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATAdapter$c;->a(Lcom/anythink/network/baidu/BaiduATAdapter$c;)Lcom/anythink/core/api/ATBiddingListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c$a;->b:Lcom/anythink/network/baidu/BaiduATAdapter$c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATAdapter$c;->a(Lcom/anythink/network/baidu/BaiduATAdapter$c;)Lcom/anythink/core/api/ATBiddingListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "BaiduATNativeExpressFeedAd Render Failed."

    .line 16
    .line 17
    invoke-static {v1}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBidResult(Lcom/anythink/core/api/ATBiddingResult;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onAdRenderSuccess(Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c$a;->b:Lcom/anythink/network/baidu/BaiduATAdapter$c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATAdapter$c;->a(Lcom/anythink/network/baidu/BaiduATAdapter$c;)Lcom/anythink/core/api/ATBiddingListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c$a;->b:Lcom/anythink/network/baidu/BaiduATAdapter$c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATAdapter$c;->a(Lcom/anythink/network/baidu/BaiduATAdapter$c;)Lcom/anythink/core/api/ATBiddingListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c$a;->a:Lcom/anythink/core/api/ATBiddingResult;

    .line 16
    .line 17
    invoke-interface {v0, v1, p1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
