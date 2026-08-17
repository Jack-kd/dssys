.class public Lcom/meishu/sdk/platform/ms/splash/a$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/splash/a;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/splash/a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/splash/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/splash/a$a;->a:Lcom/meishu/sdk/platform/ms/splash/a;

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
    .locals 9

    .line 1
    const/4 v1, -0x1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/a$a;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 3
    .line 4
    new-instance v2, Lcom/meishu/sdk/meishu_ad/v;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/splash/a$a;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 7
    .line 8
    iget-object v3, v3, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 9
    .line 10
    check-cast v3, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 11
    .line 12
    invoke-virtual {v3}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-direct {v2, v3}, Lcom/meishu/sdk/meishu_ad/v;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object v2, v0, Lcom/meishu/sdk/platform/ms/splash/a;->b:Lcom/meishu/sdk/meishu_ad/v;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/a$a;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-interface {v0, v2}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/a$a;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/meishu/sdk/platform/BasePlatformLoader;->localParams:Ljava/util/Map;

    .line 36
    .line 37
    const-string v3, "KEY_AUTO_SHOW"

    .line 38
    .line 39
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/a$a;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 50
    .line 51
    new-instance v3, Lcom/meishu/sdk/platform/ms/splash/g;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Lcom/meishu/sdk/core/ad/splash/d;

    .line 58
    .line 59
    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/splash/a$a;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 60
    .line 61
    iget-object v5, v5, Lcom/meishu/sdk/platform/ms/splash/a;->b:Lcom/meishu/sdk/meishu_ad/v;

    .line 62
    .line 63
    invoke-direct {v3, v0, v4, v8, v5}, Lcom/meishu/sdk/platform/ms/splash/g;-><init>(Lcom/meishu/sdk/platform/ms/splash/a;Lcom/meishu/sdk/core/ad/splash/d;ZLcom/meishu/sdk/meishu_ad/v;)V

    .line 64
    .line 65
    .line 66
    iput-object v3, v0, Lcom/meishu/sdk/platform/ms/splash/a;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 67
    .line 68
    if-eqz v8, :cond_0

    .line 69
    .line 70
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/a$a;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->getAdContainer()Landroid/view/ViewGroup;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-nez v0, :cond_0

    .line 83
    .line 84
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/a$a;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 85
    .line 86
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/splash/a;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 87
    .line 88
    const-string v2, "\u672a\u6307\u5b9a\u5e7f\u544a\u5bb9\u5668"

    .line 89
    .line 90
    check-cast v0, Lcom/meishu/sdk/platform/ms/splash/g;

    .line 91
    .line 92
    invoke-virtual {v0, v2, v1}, Lcom/meishu/sdk/platform/ms/splash/g;->onAdRenderFail(Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/a$a;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 99
    .line 100
    iget-object v0, v0, Lcom/meishu/sdk/platform/BasePlatformLoader;->localParams:Ljava/util/Map;

    .line 101
    .line 102
    const-string v3, "KEY_SKIP_BUTTON"

    .line 103
    .line 104
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-eqz v0, :cond_1

    .line 109
    .line 110
    instance-of v3, v0, Landroid/view/View;

    .line 111
    .line 112
    if-eqz v3, :cond_1

    .line 113
    .line 114
    move-object v2, v0

    .line 115
    check-cast v2, Landroid/view/View;

    .line 116
    .line 117
    const/4 v0, 0x4

    .line 118
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    :cond_1
    move-object v7, v2

    .line 122
    iget-object v6, p0, Lcom/meishu/sdk/platform/ms/splash/a$a;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 123
    .line 124
    iget-object v3, v6, Lcom/meishu/sdk/platform/ms/splash/a;->b:Lcom/meishu/sdk/meishu_ad/v;

    .line 125
    .line 126
    iget-object v0, v6, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 127
    .line 128
    move-object v4, v0

    .line 129
    check-cast v4, Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 130
    .line 131
    iget-object v5, v6, Lcom/meishu/sdk/platform/ms/splash/a;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 132
    .line 133
    invoke-virtual/range {v3 .. v8}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/platform/ms/splash/a;Landroid/view/View;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :goto_0
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/splash/a$a;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 138
    .line 139
    iget-object v2, v2, Lcom/meishu/sdk/platform/ms/splash/a;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 140
    .line 141
    if-eqz v2, :cond_2

    .line 142
    .line 143
    check-cast v2, Lcom/meishu/sdk/platform/ms/splash/g;

    .line 144
    .line 145
    const-string v3, "\u52a0\u8f7d\u5f02\u5e38"

    .line 146
    .line 147
    invoke-virtual {v2, v3, v1}, Lcom/meishu/sdk/platform/ms/splash/g;->onAdRenderFail(Ljava/lang/String;I)V

    .line 148
    .line 149
    .line 150
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 151
    .line 152
    .line 153
    return-void
.end method
