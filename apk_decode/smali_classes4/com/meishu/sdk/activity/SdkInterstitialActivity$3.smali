.class Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/SdkInterstitialActivity;->handleMsAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

.field public final synthetic val$adSlot:Lcom/meishu/sdk/meishu_ad/interstitial/b;

.field public final synthetic val$sdkAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity;Lcom/meishu/sdk/meishu_ad/interstitial/b;Lcom/meishu/sdk/meishu_ad/interstitial/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;->val$adSlot:Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;->val$sdkAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

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
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$200()Lcom/meishu/sdk/meishu_ad/interstitial/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$200()Lcom/meishu/sdk/meishu_ad/interstitial/a;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/meishu/sdk/platform/ms/interstitial/a;

    .line 12
    .line 13
    const-string v0, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    invoke-virtual {p1, v0, v1}, Lcom/meishu/sdk/platform/ms/interstitial/a;->onAdRenderFail(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    :cond_0
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
    :try_start_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->isSuccessful()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

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
    if-eqz p1, :cond_4

    .line 14
    .line 15
    array-length v0, p1

    .line 16
    if-lez v0, :cond_4

    .line 17
    .line 18
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$300(Lcom/meishu/sdk/activity/SdkInterstitialActivity;[B)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$400(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$400(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/view/gif/GifImageView;->setBytes([B)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$400(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/meishu/sdk/core/view/gif/GifImageView;->startAnimation()V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_2

    .line 55
    :cond_0
    array-length v0, p1

    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    iget-object v2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 64
    .line 65
    iget-object v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;->val$adSlot:Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getScale_type()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    iget-object v4, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 72
    .line 73
    invoke-static {v4}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$400(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-static {v2, v3, v0, v4}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$500(Lcom/meishu/sdk/activity/SdkInterstitialActivity;ILandroid/graphics/Bitmap;Lcom/meishu/sdk/core/view/gif/GifImageView;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$200()Lcom/meishu/sdk/meishu_ad/interstitial/a;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$200()Lcom/meishu/sdk/meishu_ad/interstitial/a;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string v2, "bitmap\u52a0\u8f7d\u5931\u8d25"

    .line 92
    .line 93
    sget-object v3, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    check-cast v0, Lcom/meishu/sdk/platform/ms/interstitial/a;

    .line 100
    .line 101
    invoke-virtual {v0, v2, v3}, Lcom/meishu/sdk/platform/ms/interstitial/a;->onAdRenderFail(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    :cond_2
    :goto_0
    :try_start_1
    array-length v0, p1

    .line 105
    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-eqz p1, :cond_3

    .line 110
    .line 111
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    const/16 v0, 0x19

    .line 117
    .line 118
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/f0;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 123
    .line 124
    invoke-static {v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$600(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Landroid/widget/ImageView;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :catchall_1
    move-exception p1

    .line 133
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 134
    .line 135
    .line 136
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;->val$sdkAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 137
    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 139
    .line 140
    .line 141
    move-result-wide v0

    .line 142
    iput-wide v0, p1, Lcom/meishu/sdk/meishu_ad/interstitial/c;->i:J

    .line 143
    .line 144
    iget-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$900(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    new-instance v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$3$1;

    .line 151
    .line 152
    invoke-direct {v0, p0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity$3$1;-><init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 160
    .line 161
    .line 162
    :cond_4
    :goto_3
    return-void
.end method
