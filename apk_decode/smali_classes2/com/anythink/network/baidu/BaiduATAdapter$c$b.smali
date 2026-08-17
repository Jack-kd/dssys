.class Lcom/anythink/network/baidu/BaiduATAdapter$c$b;
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Lcom/anythink/network/baidu/BaiduATAdapter$c;


# direct methods
.method public constructor <init>(Lcom/anythink/network/baidu/BaiduATAdapter$c;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c$b;->c:Lcom/anythink/network/baidu/BaiduATAdapter$c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c$b;->a:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c$b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAdRenderFail()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c$b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c$b;->a:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c$b;->c:Lcom/anythink/network/baidu/BaiduATAdapter$c;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATAdapter$c;->b(Lcom/anythink/network/baidu/BaiduATAdapter$c;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c$b;->c:Lcom/anythink/network/baidu/BaiduATAdapter$c;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATAdapter$c;->b(Lcom/anythink/network/baidu/BaiduATAdapter$c;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, ""

    .line 32
    .line 33
    const-string v2, "All BaiduATNativeExpressFeedAd Render Failed."

    .line 34
    .line 35
    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public onAdRenderSuccess(Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c$b;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c$b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c$b;->c:Lcom/anythink/network/baidu/BaiduATAdapter$c;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/anythink/network/baidu/BaiduATAdapter$c;->b(Lcom/anythink/network/baidu/BaiduATAdapter$c;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c$b;->a:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    new-array p1, p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c$b;->a:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c$b;->c:Lcom/anythink/network/baidu/BaiduATAdapter$c;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATAdapter$c;->b(Lcom/anythink/network/baidu/BaiduATAdapter$c;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method
