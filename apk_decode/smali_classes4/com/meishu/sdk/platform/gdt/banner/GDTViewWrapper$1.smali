.class Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/banner2/UnifiedBannerADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onADClicked()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;)Lcom/meishu/sdk/core/ad/banner/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    const-string v0, "GDTViewWrapper"

    .line 34
    .line 35
    const-string v1, "send onADClicked"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 57
    .line 58
    invoke-static {v2}, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;)Lcom/meishu/sdk/core/ad/banner/a;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 67
    .line 68
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    goto :goto_1

    .line 97
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;)Lcom/meishu/sdk/core/ad/banner/a;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_1

    .line 104
    .line 105
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 106
    .line 107
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;)Lcom/meishu/sdk/core/ad/banner/a;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-eqz v0, :cond_1

    .line 116
    .line 117
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 118
    .line 119
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;)Lcom/meishu/sdk/core/ad/banner/a;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .line 129
    .line 130
    :cond_1
    return-void

    .line 131
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public onADClosed()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/meishu/sdk/core/ad/banner/b;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;)Lcom/meishu/sdk/core/ad/banner/a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;)Lcom/meishu/sdk/core/ad/banner/a;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;)Lcom/meishu/sdk/core/ad/banner/a;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void

    .line 57
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public onADExposure()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->access$100(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;)Lcom/qq/e/ads/banner2/UnifiedBannerView;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/i0;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/meishu/sdk/core/ad/banner/b;

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;)Lcom/meishu/sdk/core/ad/banner/a;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;)Lcom/meishu/sdk/core/ad/banner/a;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;)Lcom/meishu/sdk/core/ad/banner/a;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void

    .line 72
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public onADLeftApplication()V
    .locals 0

    return-void
.end method

.method public onADReceive()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->access$100(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;)Lcom/qq/e/ads/banner2/UnifiedBannerView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;

    .line 10
    .line 11
    new-instance v1, Lcom/qq/e/comm/util/AdError;

    .line 12
    .line 13
    const-string v2, "bannerView is null"

    .line 14
    .line 15
    const/4 v3, -0x1

    .line 16
    invoke-direct {v1, v3, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-direct {v0, v1, v2}, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;-><init>(Lcom/qq/e/comm/util/AdError;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->access$100(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;)Lcom/qq/e/ads/banner2/UnifiedBannerView;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Landroid/view/ViewGroup;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 63
    .line 64
    new-instance v2, Lcom/meishu/sdk/platform/gdt/banner/GDTBannerAd;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->access$100(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;)Lcom/qq/e/ads/banner2/UnifiedBannerView;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-direct {v2, v1, v3}, Lcom/meishu/sdk/platform/gdt/banner/GDTBannerAd;-><init>(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;Lcom/qq/e/ads/banner2/UnifiedBannerView;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v1, v2}, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->access$202(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;Lcom/meishu/sdk/core/ad/banner/a;)Lcom/meishu/sdk/core/ad/banner/a;

    .line 74
    .line 75
    .line 76
    new-instance v1, Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-direct {v1, v2}, Lcom/meishu/sdk/core/view/TouchAdContainer;-><init>(Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    new-instance v2, Lcom/meishu/sdk/core/view/TouchPositionListener;

    .line 86
    .line 87
    iget-object v3, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 88
    .line 89
    invoke-static {v3}, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;)Lcom/meishu/sdk/core/ad/banner/a;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-direct {v2, v3}, Lcom/meishu/sdk/core/view/TouchPositionListener;-><init>(Lcom/meishu/sdk/core/ad/IAd;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/view/TouchAdContainer;->setTouchPositionListener(Lcom/meishu/sdk/core/view/TouchPositionListener;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 103
    .line 104
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;)Lcom/meishu/sdk/core/ad/banner/a;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/ad/a;->setAdView(Landroid/view/View;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-eqz v0, :cond_2

    .line 118
    .line 119
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->access$100(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;)Lcom/qq/e/ads/banner2/UnifiedBannerView;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/qq/e/ads/banner2/UnifiedBannerView;->getECPM()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 130
    .line 131
    invoke-static {v1}, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->access$300(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Lcom/meishu/sdk/core/ad/banner/b;

    .line 149
    .line 150
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 151
    .line 152
    invoke-static {v1}, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;)Lcom/meishu/sdk/core/ad/banner/a;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Lcom/meishu/sdk/core/ad/banner/b;

    .line 166
    .line 167
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 168
    .line 169
    invoke-static {v1}, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;)Lcom/meishu/sdk/core/ad/banner/a;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 177
    .line 178
    const/4 v1, 0x1

    .line 179
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->access$002(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .line 181
    .line 182
    :cond_2
    return-void

    .line 183
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 184
    .line 185
    .line 186
    return-void
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "GDTViewWrapper"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onNoAD, code: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, ", msg: "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;->access$000(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    new-instance v0, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-direct {v0, p1, v1}, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;-><init>(Lcom/qq/e/comm/util/AdError;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lcom/meishu/sdk/core/ad/banner/b;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-interface {v0, v1, p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    .line 97
    :cond_1
    return-void

    .line 98
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    .line 100
    .line 101
    return-void
.end method
