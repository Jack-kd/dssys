.class Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/bquery/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/SdkInterstitialActivity;->loadNativeVideo(Lcom/meishu/sdk/core/bquery/i;Lcom/meishu/sdk/meishu_ad/interstitial/b;Lcom/meishu/sdk/meishu_ad/interstitial/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/meishu/sdk/core/bquery/j<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

.field public final synthetic val$adSlot:Lcom/meishu/sdk/meishu_ad/interstitial/b;

.field public final synthetic val$sdkAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity;Lcom/meishu/sdk/meishu_ad/interstitial/c;Lcom/meishu/sdk/meishu_ad/interstitial/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;->val$sdkAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;->val$adSlot:Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/io/File;)V
    .locals 9

    .line 2
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {}, Lcom/meishu/sdk/core/utils/j0;->a()I

    move-result p1

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;->val$sdkAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    iput-wide v0, p1, Lcom/meishu/sdk/meishu_ad/interstitial/c;->i:J

    .line 5
    iget-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 6
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v1, p1, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v2, 0x428c0000    # 70.0f

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    float-to-int v0, v0

    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x2

    .line 7
    :try_start_1
    iget-object v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    invoke-static {v3}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$1200(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 8
    iget v3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v3

    const-wide v5, 0x3feb851eb851eb85L    # 0.86

    mul-double/2addr v3, v5

    iget-object v7, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    invoke-static {v7}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$1300(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)I

    move-result v7

    int-to-double v7, v7

    mul-double/2addr v3, v7

    iget-object v7, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    invoke-static {v7}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$1400(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)I

    move-result v1

    int-to-double v7, v1

    div-double/2addr v3, v7

    double-to-int v1, v3

    .line 9
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-double v3, p1

    mul-double/2addr v3, v5

    double-to-int v0, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 10
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    :cond_1
    :goto_0
    new-instance p1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    iget-object v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    invoke-direct {p1, v3}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;-><init>(Landroid/content/Context;)V

    int-to-float v0, v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setContainerWidth(F)V

    int-to-float v0, v1

    .line 13
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setContainerHeight(F)V

    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setPlayOnce(Z)V

    .line 15
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->g()V

    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setUseTransform(Z)V

    const/16 v3, 0x8

    .line 17
    invoke-virtual {p1, v3}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setFromLogoVisibility(I)V

    const/4 v3, 0x0

    .line 18
    invoke-virtual {p1, v3}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setFromLogo(Ljava/lang/String;)V

    .line 19
    new-instance v3, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$1;

    invoke-direct {v3, p0, p1}, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$1;-><init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V

    invoke-virtual {p1, v3}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setNativeAdMediaListener(Lcom/meishu/sdk/meishu_ad/nativ/e;)V

    .line 20
    iget-object v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    invoke-static {v3}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$1500(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 21
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setVideoPath(Ljava/lang/String;)V

    .line 22
    iget-object p2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;->val$adSlot:Lcom/meishu/sdk/meishu_ad/interstitial/b;

    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getScale_type()I

    move-result p2

    const/16 v3, 0x9

    const/4 v4, -0x1

    if-ne p2, v3, :cond_2

    .line 23
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setDisplayMode(I)V

    .line 24
    iget-object p2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    invoke-static {p2}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$1500(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2, p1, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_1

    .line 25
    :cond_2
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setDisplayMode(I)V

    .line 26
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    .line 27
    invoke-virtual {p2, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 28
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    invoke-static {v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$1500(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    :goto_1
    iget-object p2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    invoke-static {p2}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$600(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    sget-object p2, Lcom/meishu/sdk/core/utils/h0;->a:Ljava/util/concurrent/ExecutorService;

    .line 31
    sget-object p2, Lcom/meishu/sdk/core/utils/h0$b;->a:Lcom/meishu/sdk/core/utils/h0;

    .line 32
    new-instance v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$2;

    invoke-direct {v0, p0, p1}, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$2;-><init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V

    invoke-virtual {p2, v0}, Lcom/meishu/sdk/core/utils/h0;->a(Ljava/lang/Runnable;)Z

    .line 33
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 34
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;->onSuccess(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method
