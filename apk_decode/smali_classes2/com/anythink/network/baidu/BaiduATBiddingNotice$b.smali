.class Lcom/anythink/network/baidu/BaiduATBiddingNotice$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/BiddingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/baidu/BaiduATBiddingNotice;->notifyBidLoss(Ljava/lang/String;DLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/baidu/BaiduATBiddingNotice;


# direct methods
.method public constructor <init>(Lcom/anythink/network/baidu/BaiduATBiddingNotice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATBiddingNotice$b;->a:Lcom/anythink/network/baidu/BaiduATBiddingNotice;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onBiddingResult(ZLjava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATBiddingNotice$b;->a:Lcom/anythink/network/baidu/BaiduATBiddingNotice;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onBiddingResult-loss: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " msg\u4fe1\u606f\uff1a"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->a(Lcom/anythink/network/baidu/BaiduATBiddingNotice;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATBiddingNotice$b;->a:Lcom/anythink/network/baidu/BaiduATBiddingNotice;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/anythink/network/baidu/BaiduATBiddingNotice;->b:Lcom/anythink/core/api/ATIBiddingResultListener;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0, p3}, Lcom/anythink/core/api/ATIBiddingResultListener;->reportSuccess(Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    const/16 p1, -0x2710

    .line 44
    .line 45
    invoke-virtual {v0, p1, p2, p3}, Lcom/anythink/core/api/ATIBiddingResultListener;->reportFailed(ILjava/lang/String;Ljava/util/Map;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method
