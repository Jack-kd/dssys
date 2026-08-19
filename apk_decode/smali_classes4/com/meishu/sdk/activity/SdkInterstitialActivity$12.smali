.class Lcom/meishu/sdk/activity/SdkInterstitialActivity$12;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/SdkInterstitialActivity;->handleBdAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

.field public final synthetic val$sdkAd:Lcom/baidu/mobads/sdk/api/NativeResponse;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity;Lcom/baidu/mobads/sdk/api/NativeResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$12;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$12;->val$sdkAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

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
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$12;->val$sdkAd:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 7
    .line 8
    invoke-interface {v1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getVideoUrl()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Lcom/meishu/sdk/activity/SdkInterstitialActivity$12$1;

    .line 26
    .line 27
    invoke-direct {v2, p0, v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity$12$1;-><init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity$12;Landroid/graphics/Bitmap;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void

    .line 37
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    return-void
.end method
