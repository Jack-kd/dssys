.class Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/ExpressResponse$ExpressInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->onNativeLoad(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;

.field public final synthetic val$bdRecyclerExpressAd:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;->val$bdRecyclerExpressAd:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->access$000(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;)Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->access$000(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;)Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    const-string v0, "BDRecyclerExpressListen"

    .line 30
    .line 31
    const-string v1, "send onAdClicked"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->access$000(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;)Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->access$000(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;)Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;->val$bdRecyclerExpressAd:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;

    .line 65
    .line 66
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 71
    .line 72
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    goto :goto_1

    .line 81
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;->val$bdRecyclerExpressAd:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;->val$bdRecyclerExpressAd:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 96
    .line 97
    .line 98
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;

    .line 99
    .line 100
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->access$000(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;)Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;

    .line 112
    .line 113
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->access$000(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;)Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public onAdExposed()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->access$100(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;)Lcom/meishu/sdk/core/ad/recycler/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;->val$bdRecyclerExpressAd:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;->isHasExposed()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;->val$bdRecyclerExpressAd:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;->setHasExposed(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->access$100(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;)Lcom/meishu/sdk/core/ad/recycler/a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/a;->onAdExposure()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;->val$bdRecyclerExpressAd:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;->val$bdRecyclerExpressAd:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdExposure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-void

    .line 53
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public onAdRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->access$100(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;)Lcom/meishu/sdk/core/ad/recycler/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->access$100(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;)Lcom/meishu/sdk/core/ad/recycler/a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->access$100(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;)Lcom/meishu/sdk/core/ad/recycler/a;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1, p2, p3}, Lcom/meishu/sdk/core/ad/recycler/a;->onAdRenderFail(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;->val$bdRecyclerExpressAd:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;->val$bdRecyclerExpressAd:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdRenderFailed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-void

    .line 48
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public onAdRenderSuccess(Landroid/view/View;FF)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->access$000(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;)Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {p2, p1}, Lcom/meishu/sdk/core/utils/i0;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;

    .line 15
    .line 16
    invoke-static {p2}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->access$100(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;)Lcom/meishu/sdk/core/ad/recycler/a;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    new-instance p2, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object p3, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;->val$bdRecyclerExpressAd:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;

    .line 28
    .line 29
    invoke-virtual {p3, p1}, Lcom/meishu/sdk/core/ad/a;->setAdView(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;->val$bdRecyclerExpressAd:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->access$100(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;)Lcom/meishu/sdk/core/ad/recycler/a;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p1, p2}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-void

    .line 50
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public onAdUnionClick()V
    .locals 0

    return-void
.end method
