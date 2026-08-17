.class Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->showNativeSplash(Lcom/qq/e/ads/nativ/NativeUnifiedADData;Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

.field public final synthetic val$adData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

.field public final synthetic val$gdtNativeSplashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Lcom/qq/e/ads/nativ/NativeUnifiedADData;Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$4;->val$adData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$4;->val$gdtNativeSplashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/io/IOException;)V
    .locals 3
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    new-instance p1, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;

    .line 2
    .line 3
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    .line 4
    .line 5
    const-string v1, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    invoke-direct {v0, v2, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$2700(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {p1, v0, v1}, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;-><init>(Lcom/qq/e/comm/util/AdError;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$2600(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onResponse(Lcom/meishu/sdk/core/domain/HttpResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meishu/sdk/core/domain/HttpResponse<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->isSuccessful()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getResponseBody()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, [B

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    array-length v0, p1

    .line 16
    if-lez v0, :cond_2

    .line 17
    .line 18
    array-length v0, p1

    .line 19
    invoke-static {}, Lcom/meishu/sdk/core/utils/j0;->a()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-lt v0, v1, :cond_0

    .line 24
    .line 25
    new-instance p1, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;

    .line 26
    .line 27
    new-instance v0, Lcom/qq/e/comm/util/AdError;

    .line 28
    .line 29
    const-string v1, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    .line 30
    .line 31
    const/4 v2, -0x1

    .line 32
    invoke-direct {v0, v2, v1}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$2900(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {p1, v0, v1}, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;-><init>(Lcom/qq/e/comm/util/AdError;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$2800(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    array-length v0, p1

    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-static {v2, v3}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$3002(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;I)I

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-static {v2, v3}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$3102(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;I)I

    .line 80
    .line 81
    .line 82
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 83
    .line 84
    invoke-static {v2, v0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$3202(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$3000(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    int-to-float v0, v0

    .line 94
    const/high16 v2, 0x3f800000    # 1.0f

    .line 95
    .line 96
    mul-float/2addr v0, v2

    .line 97
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 98
    .line 99
    invoke-static {v2}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$3100(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    int-to-float v2, v2

    .line 104
    div-float/2addr v0, v2

    .line 105
    float-to-double v2, v0

    .line 106
    const-wide v4, 0x3fe570a3d70a3d71L    # 0.67

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    cmpg-double v0, v2, v4

    .line 112
    .line 113
    if-gez v0, :cond_1

    .line 114
    .line 115
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 116
    .line 117
    const/4 v2, 0x1

    .line 118
    invoke-static {v0, v2}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$3302(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Z)Z

    .line 119
    .line 120
    .line 121
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 122
    .line 123
    array-length v2, p1

    .line 124
    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {v0, p1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$3402(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 132
    .line 133
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$4;->val$adData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 134
    .line 135
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$4;->val$gdtNativeSplashAd:Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;

    .line 136
    .line 137
    invoke-static {p1, v0, v1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$3500(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Lcom/qq/e/ads/nativ/NativeUnifiedADData;Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .line 139
    .line 140
    :cond_2
    return-void

    .line 141
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    .line 143
    .line 144
    return-void
.end method
