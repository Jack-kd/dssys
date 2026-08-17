.class Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->showNativeAd(Lcom/bytedance/sdk/openadsdk/TTFeedAd;Lcom/meishu/sdk/platform/csj/splash/CSJNativeSplashAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

.field public final synthetic val$splashBg:Landroid/widget/ImageView;

.field public final synthetic val$splashImageView:Lcom/meishu/sdk/core/view/gif/GifImageView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;Lcom/meishu/sdk/core/view/gif/GifImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$4;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$4;->val$splashImageView:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$4;->val$splashBg:Landroid/widget/ImageView;

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$4;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->access$800(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {p1, v0, v1}, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;-><init>(Lcom/qq/e/comm/util/AdError;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$4;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->access$700(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

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
    .locals 3
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
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$4;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->access$1000(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {p1, v0, v1}, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;-><init>(Lcom/qq/e/comm/util/AdError;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$4;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->access$900(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

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
    :cond_0
    array-length v0, p1

    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    iget-object v2, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$4;->val$splashImageView:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 63
    .line 64
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    array-length v0, p1

    .line 68
    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$4;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 75
    .line 76
    invoke-static {v0}, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->access$1100(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    const/16 v0, 0x14

    .line 84
    .line 85
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/f0;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$4;->val$splashBg:Landroid/widget/ImageView;

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    .line 94
    :catchall_0
    :cond_2
    return-void
.end method
