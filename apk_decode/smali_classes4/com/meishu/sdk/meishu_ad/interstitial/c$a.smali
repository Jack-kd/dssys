.class public Lcom/meishu/sdk/meishu_ad/interstitial/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/a0$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/interstitial/c;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/interstitial/c;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/interstitial/c;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c$a;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c$a;->a:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    const-string v0, "NativeInterstitialAd"

    .line 2
    .line 3
    const-string v1, "videoLinkValid=false"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c$a;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    iput-wide v1, v0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->h:J

    .line 15
    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c$a;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getVideo_cover()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c$a;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setAdPatternType(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c$a;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c$a;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getVideo_cover()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const/4 v3, 0x0

    .line 63
    aput-object v2, v0, v3

    .line 64
    .line 65
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c$a;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getMonitorUrl()[Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/i0;->b([Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c$a;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 79
    .line 80
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c$a;->a:Landroid/app/Activity;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getVideo_cover()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    new-instance v4, Lcom/meishu/sdk/meishu_ad/interstitial/e;

    .line 91
    .line 92
    invoke-direct {v4, v0, v2}, Lcom/meishu/sdk/meishu_ad/interstitial/e;-><init>(Lcom/meishu/sdk/meishu_ad/interstitial/c;Landroid/app/Activity;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v3, v4, v1}, Lcom/meishu/sdk/core/cache/a;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/y;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    .line 102
    .line 103
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c$a;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 104
    .line 105
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->b:Lcom/meishu/sdk/meishu_ad/interstitial/a;

    .line 106
    .line 107
    if-eqz v0, :cond_1

    .line 108
    .line 109
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    check-cast v0, Lcom/meishu/sdk/platform/ms/interstitial/a;

    .line 116
    .line 117
    const-string v2, "\u63d2\u5c4f\u89c6\u9891\u6e32\u67d3\u5931\u8d25"

    .line 118
    .line 119
    invoke-virtual {v0, v2, v1}, Lcom/meishu/sdk/platform/ms/interstitial/a;->onAdRenderFail(Ljava/lang/String;I)V

    .line 120
    .line 121
    .line 122
    :cond_1
    return-void
.end method

.method public success()V
    .locals 4

    .line 1
    const-string v0, "NativeInterstitialAd"

    .line 2
    .line 3
    const-string v1, "videoLinkValid=true"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c$a;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c$a;->a:Landroid/app/Activity;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-object v2, Lcom/meishu/sdk/core/utils/h0;->a:Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    sget-object v2, Lcom/meishu/sdk/core/utils/h0$b;->a:Lcom/meishu/sdk/core/utils/h0;

    .line 18
    .line 19
    new-instance v3, Lcom/meishu/sdk/meishu_ad/interstitial/d;

    .line 20
    .line 21
    invoke-direct {v3, v0, v1}, Lcom/meishu/sdk/meishu_ad/interstitial/d;-><init>(Lcom/meishu/sdk/meishu_ad/interstitial/c;Landroid/app/Activity;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Lcom/meishu/sdk/core/utils/h0;->a(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method
