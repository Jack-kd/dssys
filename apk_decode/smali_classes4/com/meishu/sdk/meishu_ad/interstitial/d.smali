.class public Lcom/meishu/sdk/meishu_ad/interstitial/d;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/interstitial/c;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/interstitial/c;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/interstitial/d;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/interstitial/d;->a:Landroid/app/Activity;

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
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    .line 6
    .line 7
    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/interstitial/d;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 11
    .line 12
    invoke-virtual {v3}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const/4 v4, 0x0

    .line 21
    aget-object v3, v3, v4

    .line 22
    .line 23
    new-instance v4, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    sub-long/2addr v3, v0

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    const-wide/16 v0, 0x3e8

    .line 43
    .line 44
    cmp-long v0, v3, v0

    .line 45
    .line 46
    if-gez v0, :cond_0

    .line 47
    .line 48
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v1, Lcom/meishu/sdk/meishu_ad/interstitial/d$a;

    .line 53
    .line 54
    invoke-direct {v1, p0, v2}, Lcom/meishu/sdk/meishu_ad/interstitial/d$a;-><init>(Lcom/meishu/sdk/meishu_ad/interstitial/d;Landroid/graphics/Bitmap;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/d;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/interstitial/d;->a:Landroid/app/Activity;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->a(Lcom/meishu/sdk/meishu_ad/interstitial/c;Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :goto_0
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/interstitial/d;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 80
    .line 81
    iget-object v1, v1, Lcom/meishu/sdk/meishu_ad/interstitial/c;->b:Lcom/meishu/sdk/meishu_ad/interstitial/a;

    .line 82
    .line 83
    if-eqz v1, :cond_1

    .line 84
    .line 85
    sget-object v2, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    check-cast v1, Lcom/meishu/sdk/platform/ms/interstitial/a;

    .line 92
    .line 93
    const-string v3, "\u63d2\u5c4f\u89c6\u9891\u6e32\u67d3\u5931\u8d25"

    .line 94
    .line 95
    invoke-virtual {v1, v3, v2}, Lcom/meishu/sdk/platform/ms/interstitial/a;->onAdRenderFail(Ljava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    .line 100
    .line 101
    return-void
.end method
