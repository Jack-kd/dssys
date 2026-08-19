.class public Lcom/meishu/sdk/platform/ms/recycler/c;
.super Lcom/meishu/sdk/platform/ms/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/ms/g<",
        "Lcom/meishu/sdk/meishu_ad/nativ/f;",
        "Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;",
        "Lcom/meishu/sdk/core/ad/recycler/a;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lcom/meishu/sdk/meishu_ad/v;

.field public c:Lcom/meishu/sdk/platform/ms/recycler/a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;Lcom/meishu/sdk/meishu_ad/nativ/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/ms/g;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/ad/AdSlot;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/meishu/sdk/meishu_ad/v;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p2, p1}, Lcom/meishu/sdk/meishu_ad/v;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/c;->b:Lcom/meishu/sdk/meishu_ad/v;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public loadAd()V
    .locals 9

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    :goto_0
    new-instance v0, Lcom/meishu/sdk/platform/ms/recycler/a;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 28
    .line 29
    invoke-direct {v0, p0, v1}, Lcom/meishu/sdk/platform/ms/recycler/a;-><init>(Lcom/meishu/sdk/platform/ms/recycler/c;Lcom/meishu/sdk/core/ad/recycler/a;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/c;->c:Lcom/meishu/sdk/platform/ms/recycler/a;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->getIsVideoAutoPlay()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    sget-boolean v1, Lcom/meishu/sdk/core/AdSdk;->isTestMode:Z

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 49
    .line 50
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 51
    .line 52
    iget-boolean v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->z:Z

    .line 53
    .line 54
    :cond_1
    move v6, v0

    .line 55
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/c;->b:Lcom/meishu/sdk/meishu_ad/v;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 58
    .line 59
    move-object v2, v0

    .line 60
    check-cast v2, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 61
    .line 62
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/recycler/c;->c:Lcom/meishu/sdk/platform/ms/recycler/a;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->isShowDetail()Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 83
    .line 84
    invoke-virtual {v4}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_width()Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    int-to-float v4, v4

    .line 93
    invoke-static {v0, v4}, Lcom/meishu/sdk/core/utils/m;->b(Landroid/content/Context;F)F

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    check-cast v4, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 106
    .line 107
    invoke-virtual {v4}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    int-to-float v4, v4

    .line 116
    invoke-static {v0, v4}, Lcom/meishu/sdk/core/utils/m;->b(Landroid/content/Context;F)F

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    .line 123
    :try_start_1
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/v;->d:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    .line 133
    .line 134
    :goto_1
    const/4 v4, 0x1

    .line 135
    invoke-virtual/range {v1 .. v8}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/meishu_ad/nativ/a;ZZZFF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 140
    .line 141
    .line 142
    :goto_3
    return-void
.end method
