.class public Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "GDTExpressAdListenerAdapter"


# instance fields
.field private adDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;",
            ">;"
        }
    .end annotation
.end field

.field private adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qq/e/ads/nativ/NativeExpressADView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adDataList:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    .line 22
    :try_start_1
    invoke-interface {v2}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v2

    .line 27
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_1
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    iput-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adDataList:Ljava/util/List;

    .line 34
    .line 35
    :cond_1
    iput-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->list:Ljava/util/List;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    :goto_2
    return-void
.end method

.method public getAdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qq/e/ads/nativ/NativeExpressADView;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public onADClicked(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adDataList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 18
    .line 19
    invoke-interface {v1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getAdView()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-ne v2, p1, :cond_0

    .line 24
    .line 25
    move-object v2, v1

    .line 26
    check-cast v2, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressRecyclerAdData;

    .line 27
    .line 28
    check-cast v1, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressRecyclerAdData;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressRecyclerAdData;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v3, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    iget-object v3, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_1

    .line 57
    .line 58
    const-string v3, "GDTExpressAdListenerAdapter"

    .line 59
    .line 60
    const-string v4, "send onAdClick"

    .line 61
    .line 62
    invoke-static {v3, v4}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v3, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    iget-object v4, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 76
    .line 77
    invoke-virtual {v4}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-static {v4, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    new-instance v4, Lcom/meishu/sdk/core/utils/i;

    .line 90
    .line 91
    invoke-direct {v4}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-static {v3, v2, v4}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 104
    .line 105
    .line 106
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 113
    .line 114
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :catchall_0
    move-exception p1

    .line 119
    goto :goto_2

    .line 120
    :cond_1
    :goto_1
    if-eqz v1, :cond_0

    .line 121
    .line 122
    invoke-interface {v1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    return-void

    .line 127
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public onADClosed(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 38
    .line 39
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 40
    .line 41
    .line 42
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adDataList:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 59
    .line 60
    invoke-interface {v1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getAdView()Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-ne v2, p1, :cond_2

    .line 65
    .line 66
    check-cast v1, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressRecyclerAdData;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressRecyclerAdData;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    invoke-interface {v1}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdClosed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catch_1
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    :cond_3
    return-void
.end method

.method public onADExposure(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/i0;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 25
    .line 26
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/a;->onAdExposure()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adDataList:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 49
    .line 50
    invoke-interface {v1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getAdView()Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-ne v2, p1, :cond_1

    .line 55
    .line 56
    check-cast v1, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressRecyclerAdData;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressRecyclerAdData;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    invoke-interface {v1}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdExposure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    return-void

    .line 69
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public onADLeftApplication(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0

    return-void
.end method

.method public onADLoaded(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/e/ads/nativ/NativeExpressADView;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->list:Ljava/util/List;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adDataList:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/qq/e/ads/nativ/NativeExpressADView;

    .line 34
    .line 35
    invoke-interface {v0}, Lcom/qq/e/comm/pi/LADI;->getECPM()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v2, v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressRecyclerAdData;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 55
    .line 56
    invoke-direct {v1, v2, v0}, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressRecyclerAdData;-><init>(Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;Lcom/qq/e/ads/nativ/NativeExpressADView;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adDataList:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 74
    .line 75
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adDataList:Ljava/util/List;

    .line 76
    .line 77
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, p1, v1}, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;-><init>(Lcom/qq/e/comm/util/AdError;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onRenderFail(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 4

    .line 1
    const-string v0, "onRenderFail"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "GDTExpressAdListenerAdapter"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getErr()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, -0x1

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {v1, v3, v0}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 41
    .line 42
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 52
    .line 53
    const-string v1, "GDTRenderFail"

    .line 54
    .line 55
    invoke-interface {v0, v1, v2}, Lcom/meishu/sdk/core/ad/recycler/a;->onAdRenderFail(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adDataList:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 80
    .line 81
    invoke-interface {v1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getAdView()Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    if-ne v2, p1, :cond_1

    .line 86
    .line 87
    check-cast v1, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressRecyclerAdData;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressRecyclerAdData;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    if-eqz v1, :cond_1

    .line 94
    .line 95
    invoke-interface {v1}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdRenderFailed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catch_0
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    .line 102
    .line 103
    :cond_2
    return-void
.end method

.method public onRenderSuccess(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adDataList:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ge v0, v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adDataList:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adDataList:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 35
    .line 36
    invoke-interface {v2}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getAdView()Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    new-instance v2, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 61
    .line 62
    invoke-interface {v1, v2}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    goto :goto_2

    .line 68
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    return-void

    .line 72
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    return-void
.end method
