.class Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->showNativeLayout(Lcom/qq/e/ads/nativ/NativeUnifiedADData;Lcom/meishu/sdk/platform/gdt/splash/GDTNativeSplashAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

.field public final synthetic val$splashBg:Landroid/widget/ImageView;

.field public final synthetic val$splashImageView:Lcom/meishu/sdk/core/view/gif/GifImageView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;Lcom/meishu/sdk/core/view/gif/GifImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$7;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$7;->val$splashImageView:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$7;->val$splashBg:Landroid/widget/ImageView;

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
    .locals 4
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    new-instance v0, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;

    .line 2
    .line 3
    new-instance v1, Lcom/qq/e/comm/util/AdError;

    .line 4
    .line 5
    const-string v2, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    invoke-direct {v1, v3, v2}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$7;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 12
    .line 13
    invoke-static {v2}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$4100(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v0, v1, v2}, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;-><init>(Lcom/qq/e/comm/util/AdError;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$7;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$4000(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onResponse(Lcom/meishu/sdk/core/domain/HttpResponse;)V
    .locals 5
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
    const-string v0, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->isSuccessful()Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_4

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getResponseBody()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, [B

    .line 15
    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    array-length v2, p1

    .line 19
    if-lez v2, :cond_3

    .line 20
    .line 21
    array-length v2, p1

    .line 22
    invoke-static {}, Lcom/meishu/sdk/core/utils/j0;->a()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-lt v2, v3, :cond_0

    .line 27
    .line 28
    new-instance p1, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;

    .line 29
    .line 30
    new-instance v2, Lcom/qq/e/comm/util/AdError;

    .line 31
    .line 32
    invoke-direct {v2, v1, v0}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$7;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 36
    .line 37
    invoke-static {v3}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$4300(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-direct {p1, v2, v3}, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;-><init>(Lcom/qq/e/comm/util/AdError;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$7;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 45
    .line 46
    invoke-static {v2}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$4200(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

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
    array-length v2, p1

    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-static {p1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    iget-object v4, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$7;->val$splashImageView:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 65
    .line 66
    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    array-length v2, p1

    .line 70
    invoke-static {p1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$7;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 77
    .line 78
    invoke-static {v2}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$4400(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    const/16 v2, 0x14

    .line 86
    .line 87
    invoke-static {p1, v2}, Lcom/meishu/sdk/core/utils/f0;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$7;->val$splashBg:Landroid/widget/ImageView;

    .line 92
    .line 93
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    return-void

    .line 97
    :cond_3
    new-instance p1, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;

    .line 98
    .line 99
    new-instance v2, Lcom/qq/e/comm/util/AdError;

    .line 100
    .line 101
    invoke-direct {v2, v1, v0}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v3, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$7;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 105
    .line 106
    invoke-static {v3}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$4600(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-direct {p1, v2, v3}, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;-><init>(Lcom/qq/e/comm/util/AdError;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 111
    .line 112
    .line 113
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$7;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 114
    .line 115
    invoke-static {v2}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$4500(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_4
    new-instance p1, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;

    .line 124
    .line 125
    new-instance v2, Lcom/qq/e/comm/util/AdError;

    .line 126
    .line 127
    invoke-direct {v2, v1, v0}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v3, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$7;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 131
    .line 132
    invoke-static {v3}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$4800(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-direct {p1, v2, v3}, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;-><init>(Lcom/qq/e/comm/util/AdError;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 137
    .line 138
    .line 139
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$7;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 140
    .line 141
    invoke-static {v2}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$4700(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :goto_0
    new-instance v2, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;

    .line 150
    .line 151
    new-instance v3, Lcom/qq/e/comm/util/AdError;

    .line 152
    .line 153
    invoke-direct {v3, v1, v0}, Lcom/qq/e/comm/util/AdError;-><init>(ILjava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$7;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 157
    .line 158
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$5000(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-direct {v2, v3, v0}, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;-><init>(Lcom/qq/e/comm/util/AdError;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper$7;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;

    .line 166
    .line 167
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;->access$4900(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v2, v0}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 175
    .line 176
    .line 177
    return-void
.end method
