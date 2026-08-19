.class Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->load(Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$LoadCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$LoadCallbackListener;

.field final synthetic b:Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$LoadCallbackListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$a;->b:Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$LoadCallbackListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onLpClosed()V
    .locals 0

    return-void
.end method

.method public onNativeFail(ILjava/lang/String;Lcom/baidu/mobads/sdk/api/NativeResponse;)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$LoadCallbackListener;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, ""

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p3, p1, p2}, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$LoadCallbackListener;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onNativeLoad(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mobads/sdk/api/NativeResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$a;->b:Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->a(Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;)Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$a;->b:Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;

    .line 23
    .line 24
    invoke-static {v2}, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->b(Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;)Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v1, p1, v2}, Lcom/anythink/network/baidu/BaiduATNativeAd;->a(Landroid/content/Context;Lcom/baidu/mobads/sdk/api/NativeResponse;Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$LoadCallbackListener;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$a;->b:Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;

    .line 34
    .line 35
    invoke-interface {v0, p1, v1}, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$LoadCallbackListener;->onSuccess(Lcom/baidu/mobads/sdk/api/NativeResponse;Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$LoadCallbackListener;

    .line 40
    .line 41
    const-string v0, ""

    .line 42
    .line 43
    const-string v1, "callback onNativeLoad but no ad"

    .line 44
    .line 45
    invoke-interface {p1, v0, v1}, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$LoadCallbackListener;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public onNoAd(ILjava/lang/String;Lcom/baidu/mobads/sdk/api/NativeResponse;)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$a;->a:Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$LoadCallbackListener;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, ""

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p3, p1, p2}, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$LoadCallbackListener;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onVideoDownloadFailed()V
    .locals 0

    return-void
.end method

.method public onVideoDownloadSuccess()V
    .locals 0

    return-void
.end method
