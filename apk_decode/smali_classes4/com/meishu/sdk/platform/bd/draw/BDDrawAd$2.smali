.class Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$2;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->showAd(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$2;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$2;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->access$1300(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$2;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->access$1200(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/baidu/mobads/sdk/api/XAdNativeResponse;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->setAdData(Lcom/baidu/mobads/sdk/api/AbstractData;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$2;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->access$1300(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->play()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$2;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->access$1400(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$2;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->access$1500(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/core/ad/draw/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$2;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->access$1402(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;Z)Z

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$2;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->access$1500(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/core/ad/draw/a;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 56
    .line 57
    .line 58
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$2;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->access$1300(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v1, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$2$1;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$2$1;-><init>(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$2;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
