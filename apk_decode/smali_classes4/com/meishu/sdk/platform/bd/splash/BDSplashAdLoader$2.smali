.class Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->showNativeSplash(Lcom/baidu/mobads/sdk/api/NativeResponse;Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

.field public final synthetic val$adData:Lcom/baidu/mobads/sdk/api/NativeResponse;

.field public final synthetic val$bdNativeSplashAd:Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;Lcom/baidu/mobads/sdk/api/NativeResponse;Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$2;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$2;->val$adData:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$2;->val$bdNativeSplashAd:Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;

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
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance p1, Lcom/meishu/sdk/platform/bd/BDPlatformError;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$2;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    .line 10
    .line 11
    invoke-direct {p1, v1, v0}, Lcom/meishu/sdk/platform/bd/BDPlatformError;-><init>(Ljava/lang/String;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$2;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onResponse(Lcom/meishu/sdk/core/domain/HttpResponse;)V
    .locals 11
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
    if-eqz v0, :cond_3

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
    if-eqz p1, :cond_3

    .line 14
    .line 15
    array-length v0, p1

    .line 16
    if-lez v0, :cond_3

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
    new-instance p1, Lcom/meishu/sdk/platform/bd/BDPlatformError;

    .line 26
    .line 27
    const-string v0, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    .line 28
    .line 29
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$2;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {p1, v0, v1}, Lcom/meishu/sdk/platform/bd/BDPlatformError;-><init>(Ljava/lang/String;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$2;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    move-object p1, v0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    array-length v0, p1

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    if-eqz v7, :cond_2

    .line 58
    .line 59
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    int-to-float v3, v0

    .line 68
    const/high16 v4, 0x3f800000    # 1.0f

    .line 69
    .line 70
    mul-float/2addr v3, v4

    .line 71
    int-to-float v4, v2

    .line 72
    div-float/2addr v3, v4

    .line 73
    float-to-double v3, v3

    .line 74
    const-wide v5, 0x3fe570a3d70a3d71L    # 0.67

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    cmpg-double v3, v3, v5

    .line 80
    .line 81
    if-gez v3, :cond_1

    .line 82
    .line 83
    const/4 v3, 0x1

    .line 84
    move v9, v0

    .line 85
    move v10, v2

    .line 86
    move v6, v3

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    move v9, v0

    .line 89
    move v6, v1

    .line 90
    move v10, v2

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    move v6, v1

    .line 93
    move v9, v6

    .line 94
    move v10, v9

    .line 95
    :goto_0
    array-length v0, p1

    .line 96
    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    iget-object v2, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$2;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 101
    .line 102
    iget-object v3, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$2;->val$adData:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 103
    .line 104
    iget-object v4, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$2;->val$bdNativeSplashAd:Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;

    .line 105
    .line 106
    const/4 v5, 0x1

    .line 107
    invoke-static/range {v2 .. v10}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->access$100(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;Lcom/baidu/mobads/sdk/api/NativeResponse;Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;ZZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    .line 110
    :cond_3
    return-void

    .line 111
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    .line 113
    .line 114
    return-void
.end method
