.class Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1$1;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;->onNativeLoad(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;

.field public final synthetic val$nativeResponse:Lcom/baidu/mobads/sdk/api/NativeResponse;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;Lcom/baidu/mobads/sdk/api/NativeResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1$1;->val$nativeResponse:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;

    .line 4
    .line 5
    new-instance v1, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1$1;->val$nativeResponse:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Lcom/meishu/sdk/core/ad/draw/a;

    .line 14
    .line 15
    invoke-direct {v1, v0, v2, v3}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;-><init>(Lcom/meishu/sdk/core/loader/d;Lcom/baidu/mobads/sdk/api/NativeResponse;Lcom/meishu/sdk/core/ad/draw/a;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;->access$002(Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/meishu/sdk/core/ad/draw/a;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;->access$000(Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;)Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/meishu/sdk/core/ad/draw/a;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;

    .line 63
    .line 64
    iget-object v1, v1, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;->access$000(Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;)Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    return-void
.end method
