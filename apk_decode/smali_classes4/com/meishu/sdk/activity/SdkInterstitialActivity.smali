.class public Lcom/meishu/sdk/activity/SdkInterstitialActivity;
.super Lcom/meishu/sdk/core/safe/SafeActivity;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SdkInterstitialActivity"

.field private static adListener:Lcom/meishu/sdk/meishu_ad/interstitial/a;

.field private static adWrapper:Lcom/meishu/sdk/platform/BasePlatformLoader;

.field private static msAd:Lcom/meishu/sdk/core/ad/IAd;

.field private static sdkAd:Ljava/lang/Object;


# instance fields
.field private act_type:I

.field private adLogo:Landroid/widget/ImageView;

.field private adLogoLL:Landroid/widget/LinearLayout;

.field private btn:Landroid/widget/TextView;

.field private cid:Landroid/widget/TextView;

.field private closeImage:Landroid/widget/ImageView;

.field private desc:Landroid/widget/TextView;

.field private downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

.field private imageBg:Landroid/widget/ImageView;

.field private imageView:Lcom/meishu/sdk/core/view/gif/GifImageView;

.field private isClickToClose:Z

.field private isDownloadType:Z

.field private isShake:Z

.field private isVideoAutoPlay:Z

.field private layout_height:I

.field private layout_type:I

.field private layout_width:I

.field private logo:Landroid/widget/ImageView;

.field private mediaContainer:Landroid/widget/RelativeLayout;

.field private rl_container:Landroid/widget/RelativeLayout;

.field private rootView:Landroid/widget/RelativeLayout;

.field private shakeId:I

.field private showed:Z

.field private startActionShakeImage:Lcom/meishu/sdk/core/view/gif/GifImageView;

.field private title:Landroid/widget/TextView;

.field private touchAdContainer:Lcom/meishu/sdk/core/view/TouchAdContainer;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/SafeActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->act_type:I

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic access$000()Lcom/meishu/sdk/core/ad/IAd;
    .locals 1

    .line 1
    sget-object v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->msAd:Lcom/meishu/sdk/core/ad/IAd;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->adLogoLL:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->isClickToClose:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1100(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Lcom/meishu/sdk/core/view/gif/GifImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->startActionShakeImage:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1200(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->layout_type:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1300(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->layout_height:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1400(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->layout_width:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1500(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->mediaContainer:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1602(Lcom/meishu/sdk/activity/SdkInterstitialActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->isShake:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$1700(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->shakeId:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1702(Lcom/meishu/sdk/activity/SdkInterstitialActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->shakeId:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$1800()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->sdkAd:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$1900()Lcom/meishu/sdk/platform/BasePlatformLoader;
    .locals 1

    .line 1
    sget-object v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->adWrapper:Lcom/meishu/sdk/platform/BasePlatformLoader;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$200()Lcom/meishu/sdk/meishu_ad/interstitial/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->adListener:Lcom/meishu/sdk/meishu_ad/interstitial/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$300(Lcom/meishu/sdk/activity/SdkInterstitialActivity;[B)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->isGif([B)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$400(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Lcom/meishu/sdk/core/view/gif/GifImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->imageView:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/meishu/sdk/activity/SdkInterstitialActivity;ILandroid/graphics/Bitmap;Lcom/meishu/sdk/core/view/gif/GifImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->setImageShowType(ILandroid/graphics/Bitmap;Lcom/meishu/sdk/core/view/gif/GifImageView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->imageBg:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->showed:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$702(Lcom/meishu/sdk/activity/SdkInterstitialActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->showed:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$800(Lcom/meishu/sdk/activity/SdkInterstitialActivity;Lcom/meishu/sdk/meishu_ad/interstitial/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->startShake(Lcom/meishu/sdk/meishu_ad/interstitial/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->view:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method private fullHeightImage(Landroid/graphics/Bitmap;Landroid/widget/ImageView;III)V
    .locals 11

    .line 1
    move/from16 v0, p5

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v7

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v8

    .line 11
    move v1, p4

    .line 12
    int-to-float v2, v1

    .line 13
    const/high16 v4, 0x3f800000    # 1.0f

    .line 14
    .line 15
    mul-float/2addr v2, v4

    .line 16
    int-to-float v4, v8

    .line 17
    div-float/2addr v2, v4

    .line 18
    new-instance v9, Landroid/graphics/Matrix;

    .line 19
    .line 20
    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v9, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 24
    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v10, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    move-object v4, p1

    .line 30
    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-ge v4, p3, :cond_0

    .line 42
    .line 43
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 44
    .line 45
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_0
    const/4 v5, 0x6

    .line 50
    const/4 v6, 0x2

    .line 51
    if-eq v0, v5, :cond_3

    .line 52
    .line 53
    if-eq v0, v6, :cond_3

    .line 54
    .line 55
    const/4 v5, 0x1

    .line 56
    if-ne v0, v5, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 v5, 0x7

    .line 60
    const/4 v6, 0x0

    .line 61
    if-ne v0, v5, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const/16 v5, 0x8

    .line 65
    .line 66
    if-ne v0, v5, :cond_4

    .line 67
    .line 68
    sub-int v6, v4, p3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    :goto_0
    sub-int/2addr v4, p3

    .line 72
    div-int/lit8 v6, v4, 0x2

    .line 73
    .line 74
    :cond_4
    :goto_1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 75
    .line 76
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 77
    .line 78
    .line 79
    const/4 v5, 0x0

    .line 80
    move v1, v6

    .line 81
    const/4 v6, 0x0

    .line 82
    move-object v0, v2

    .line 83
    const/4 v2, 0x0

    .line 84
    move v3, p3

    .line 85
    move v4, p4

    .line 86
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    :goto_2
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method private fullWidthImage(Landroid/graphics/Bitmap;Lcom/meishu/sdk/core/view/gif/GifImageView;III)V
    .locals 12

    .line 1
    move/from16 v4, p4

    .line 2
    .line 3
    move/from16 v0, p5

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v8

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v9

    .line 13
    int-to-float v1, p3

    .line 14
    const/high16 v2, 0x3f800000    # 1.0f

    .line 15
    .line 16
    mul-float/2addr v1, v2

    .line 17
    int-to-float v2, v8

    .line 18
    div-float/2addr v1, v2

    .line 19
    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 20
    .line 21
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 22
    .line 23
    .line 24
    new-instance v10, Landroid/graphics/Matrix;

    .line 25
    .line 26
    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v10, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 30
    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v11, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    move-object v5, p1

    .line 36
    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 45
    .line 46
    .line 47
    if-ge v1, v4, :cond_0

    .line 48
    .line 49
    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 50
    .line 51
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_0
    const/4 v3, 0x3

    .line 56
    const/4 v5, 0x2

    .line 57
    if-eq v0, v3, :cond_3

    .line 58
    .line 59
    if-eq v0, v5, :cond_3

    .line 60
    .line 61
    const/4 v3, 0x1

    .line 62
    if-ne v0, v3, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/4 v3, 0x4

    .line 66
    const/4 v5, 0x0

    .line 67
    if-ne v0, v3, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    const/4 v3, 0x5

    .line 71
    if-ne v0, v3, :cond_4

    .line 72
    .line 73
    sub-int v5, v1, v4

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    :goto_0
    sub-int/2addr v1, v4

    .line 77
    div-int/lit8 v5, v1, 0x2

    .line 78
    .line 79
    :cond_4
    :goto_1
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 80
    .line 81
    .line 82
    move v2, v5

    .line 83
    const/4 v5, 0x0

    .line 84
    const/4 v6, 0x0

    .line 85
    const/4 v1, 0x0

    .line 86
    move-object v0, p1

    .line 87
    move v3, p3

    .line 88
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :goto_2
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method private getBDImageUrl(Lcom/baidu/mobads/sdk/api/NativeResponse;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getImageUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMultiPicUrls()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-lez v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    return-object p1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :cond_1
    const-string p1, ""

    .line 43
    .line 44
    return-object p1
.end method

.method private getImageBytes(Landroid/content/Context;I)[B
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    .line 10
    .line 11
    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 12
    .line 13
    .line 14
    const/16 v0, 0x1000

    .line 15
    .line 16
    new-array v0, v0, [B

    .line 17
    .line 18
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, -0x1

    .line 23
    if-eq v2, v1, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 33
    .line 34
    .line 35
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return-object p1

    .line 37
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    return-object p1
.end method

.method private getImageUrl(Lcom/qq/e/ads/nativ/NativeUnifiedADData;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgUrl()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgList()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgList()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-lez v0, :cond_1

    .line 33
    .line 34
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgList()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    return-object p1

    .line 46
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :cond_1
    const-string p1, ""

    .line 50
    .line 51
    return-object p1
.end method

.method private handleBdAd()V
    .locals 8

    .line 1
    sget-object v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->sdkAd:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAdActionType()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->isDownloadType:Z

    .line 14
    .line 15
    :cond_0
    new-instance v1, Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 16
    .line 17
    invoke-direct {v1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getBrandName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_name(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppVersion()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_ver(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 39
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppSize()J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    const-wide/16 v6, 0x400

    .line 50
    .line 51
    div-long/2addr v4, v6

    .line 52
    mul-long/2addr v4, v6

    .line 53
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v4, "MB"

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_size(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 69
    .line 70
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getPublisher()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setDeveloper(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 78
    .line 79
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppPermissionLink()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_permission_url(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 87
    .line 88
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppPrivacyLink()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_private_agreement(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 96
    .line 97
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getDesc()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_intro(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->title:Landroid/widget/TextView;

    .line 105
    .line 106
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getTitle()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->desc:Landroid/widget/TextView;

    .line 114
    .line 115
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getDesc()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    new-instance v1, Lcom/meishu/sdk/core/bquery/i;

    .line 123
    .line 124
    invoke-direct {v1, p0}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/app/Activity;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getBaiduLogoUrl()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    const/4 v4, 0x0

    .line 136
    if-nez v3, :cond_1

    .line 137
    .line 138
    iget-object v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->adLogo:Landroid/widget/ImageView;

    .line 139
    .line 140
    iput-object v3, v1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 141
    .line 142
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getBaiduLogoUrl()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v1, v3, v4}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 147
    .line 148
    .line 149
    :cond_1
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getIconUrl()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    if-nez v3, :cond_2

    .line 158
    .line 159
    iget-object v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->logo:Landroid/widget/ImageView;

    .line 160
    .line 161
    iput-object v3, v1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 162
    .line 163
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getIconUrl()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v1, v3, v4}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 168
    .line 169
    .line 170
    :cond_2
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAdActionType()I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    if-eq v3, v2, :cond_3

    .line 175
    .line 176
    iget-object v2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->btn:Landroid/widget/TextView;

    .line 177
    .line 178
    const-string v3, "\u70b9\u51fb\u67e5\u770b\u8be6\u60c5"

    .line 179
    .line 180
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_3
    iget-object v2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->btn:Landroid/widget/TextView;

    .line 185
    .line 186
    const-string v3, "\u70b9\u51fb\u4e0b\u8f7d"

    .line 187
    .line 188
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    :goto_0
    :try_start_0
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMaterialType()Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    sget-object v3, Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;->VIDEO:Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;

    .line 196
    .line 197
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-eqz v2, :cond_4

    .line 202
    .line 203
    sget-object v1, Lcom/meishu/sdk/core/utils/h0;->a:Ljava/util/concurrent/ExecutorService;

    .line 204
    .line 205
    sget-object v1, Lcom/meishu/sdk/core/utils/h0$b;->a:Lcom/meishu/sdk/core/utils/h0;

    .line 206
    .line 207
    new-instance v2, Lcom/meishu/sdk/activity/SdkInterstitialActivity$12;

    .line 208
    .line 209
    invoke-direct {v2, p0, v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity$12;-><init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity;Lcom/baidu/mobads/sdk/api/NativeResponse;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/utils/h0;->a(Ljava/lang/Runnable;)Z

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :catch_0
    move-exception v1

    .line 217
    goto :goto_1

    .line 218
    :cond_4
    invoke-direct {p0, v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->getBDImageUrl(Lcom/baidu/mobads/sdk/api/NativeResponse;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    iget-object v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->imageView:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 223
    .line 224
    iput-object v3, v1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 225
    .line 226
    invoke-virtual {v1, v2, v4}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 231
    .line 232
    .line 233
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    .line 234
    .line 235
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .line 237
    .line 238
    iget-object v2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->rl_container:Landroid/widget/RelativeLayout;

    .line 239
    .line 240
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    iget-object v2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->rl_container:Landroid/widget/RelativeLayout;

    .line 244
    .line 245
    new-instance v3, Lcom/meishu/sdk/activity/SdkInterstitialActivity$13;

    .line 246
    .line 247
    invoke-direct {v3, p0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity$13;-><init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)V

    .line 248
    .line 249
    .line 250
    const/4 v4, 0x0

    .line 251
    invoke-interface {v0, v2, v1, v4, v3}, Lcom/baidu/mobads/sdk/api/NativeResponse;->registerViewForInteraction(Landroid/view/View;Ljava/util/List;Ljava/util/List;Lcom/baidu/mobads/sdk/api/NativeResponse$AdInteractionListener;)V

    .line 252
    .line 253
    .line 254
    return-void
.end method

.method private handleButton()V
    .locals 3

    .line 1
    :try_start_0
    iget v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->act_type:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x4

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    if-eq v1, v2, :cond_4

    .line 7
    .line 8
    and-int/lit8 v1, v0, 0x40

    .line 9
    .line 10
    const/16 v2, 0x40

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/h;->e(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->showShakeInButton()V

    .line 22
    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->isDownloadType:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->btn:Landroid/widget/TextView;

    .line 29
    .line 30
    const-string v1, "\u626d\u4e00\u626d\u6216\u70b9\u51fb\u4e0b\u8f7d\u4e09\u65b9\u5e94\u7528"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->btn:Landroid/widget/TextView;

    .line 39
    .line 40
    const-string v1, "\u626d\u4e00\u626d\u6216\u70b9\u51fb\u67e5\u770b\u8be6\u60c5"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->isDownloadType:Z

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->btn:Landroid/widget/TextView;

    .line 51
    .line 52
    const-string v1, "\u70b9\u51fb\u4e0b\u8f7d\u4e09\u65b9\u5e94\u7528"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->btn:Landroid/widget/TextView;

    .line 59
    .line 60
    const-string v1, "\u70b9\u51fb\u67e5\u770b\u8be6\u60c5"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->showShakeInButton()V

    .line 67
    .line 68
    .line 69
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->isDownloadType:Z

    .line 70
    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->btn:Landroid/widget/TextView;

    .line 74
    .line 75
    const-string v1, "\u6447\u4e00\u6447\u6216\u70b9\u51fb\u4e0b\u8f7d\u4e09\u65b9\u5e94\u7528"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_5
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->btn:Landroid/widget/TextView;

    .line 82
    .line 83
    const-string v1, "\u6447\u4e00\u6447\u6216\u70b9\u51fb\u67e5\u770b\u8be6\u60c5"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method private handleGDTAd()V
    .locals 11

    .line 1
    sget-object v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->sdkAd:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAppMiitInfo()Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->isAppAd()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iput-boolean v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->isDownloadType:Z

    .line 17
    .line 18
    :cond_0
    if-eqz v1, :cond_1

    .line 19
    .line 20
    new-instance v2, Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 21
    .line 22
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 26
    .line 27
    invoke-interface {v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;->getAppName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v2, v4}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_name(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 35
    .line 36
    invoke-interface {v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;->getVersionName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v2, v4}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_ver(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 44
    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-interface {v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;->getPackageSizeBytes()J

    .line 51
    .line 52
    .line 53
    move-result-wide v5

    .line 54
    const-wide/16 v7, 0x400

    .line 55
    .line 56
    div-long/2addr v5, v7

    .line 57
    mul-long/2addr v5, v7

    .line 58
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v5, "MB"

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v2, v4}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_size(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 74
    .line 75
    invoke-interface {v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;->getAuthorName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v2, v4}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setDeveloper(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 83
    .line 84
    invoke-interface {v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;->getPermissionsUrl()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v2, v4}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_permission_url(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 92
    .line 93
    invoke-interface {v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;->getPrivacyAgreement()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v2, v1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_private_agreement(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_1
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getPictureWidth()I

    .line 101
    .line 102
    .line 103
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getPictureHeight()I

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->title:Landroid/widget/TextView;

    .line 107
    .line 108
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getTitle()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->desc:Landroid/widget/TextView;

    .line 116
    .line 117
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getDesc()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 133
    .line 134
    new-instance v1, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    .line 139
    iget-object v2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->mediaContainer:Landroid/widget/RelativeLayout;

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    new-instance v1, Lcom/meishu/sdk/core/bquery/i;

    .line 145
    .line 146
    invoke-direct {v1, p0}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/app/Activity;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getIconUrl()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    const/4 v4, 0x0

    .line 158
    if-nez v2, :cond_2

    .line 159
    .line 160
    iget-object v2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->logo:Landroid/widget/ImageView;

    .line 161
    .line 162
    iput-object v2, v1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 163
    .line 164
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getIconUrl()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v1, v2, v4}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 169
    .line 170
    .line 171
    :cond_2
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->isAppAd()Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-eqz v2, :cond_3

    .line 176
    .line 177
    iget-object v2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->btn:Landroid/widget/TextView;

    .line 178
    .line 179
    const-string v5, "\u70b9\u51fb\u4e0b\u8f7d"

    .line 180
    .line 181
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_3
    iget-object v2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->btn:Landroid/widget/TextView;

    .line 186
    .line 187
    const-string v5, "\u70b9\u51fb\u67e5\u770b\u8be6\u60c5"

    .line 188
    .line 189
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    .line 191
    .line 192
    :goto_0
    iget-object v2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->adLogo:Landroid/widget/ImageView;

    .line 193
    .line 194
    sget v5, Lcom/meishu/sdk/R$drawable;->ms_gdt_logo:I

    .line 195
    .line 196
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    .line 198
    .line 199
    new-instance v2, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    .line 200
    .line 201
    invoke-direct {v2, p0}, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;-><init>(Landroid/content/Context;)V

    .line 202
    .line 203
    .line 204
    iget-object v5, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->rl_container:Landroid/widget/RelativeLayout;

    .line 205
    .line 206
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    check-cast v5, Landroid/view/ViewGroup;

    .line 211
    .line 212
    const/4 v6, -0x2

    .line 213
    const/4 v7, -0x1

    .line 214
    if-eqz v5, :cond_4

    .line 215
    .line 216
    iget-object v8, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->rl_container:Landroid/widget/RelativeLayout;

    .line 217
    .line 218
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    iget-object v9, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->rl_container:Landroid/widget/RelativeLayout;

    .line 223
    .line 224
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 225
    .line 226
    .line 227
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    .line 228
    .line 229
    invoke-direct {v9, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 230
    .line 231
    .line 232
    iget-object v10, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->rl_container:Landroid/widget/RelativeLayout;

    .line 233
    .line 234
    invoke-virtual {v2, v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5, v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    .line 239
    .line 240
    :cond_4
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 241
    .line 242
    invoke-direct {v5, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 243
    .line 244
    .line 245
    new-instance v8, Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .line 249
    .line 250
    iget-object v9, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->rl_container:Landroid/widget/RelativeLayout;

    .line 251
    .line 252
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    iget-object v9, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->btn:Landroid/widget/TextView;

    .line 256
    .line 257
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    new-instance v9, Lcom/meishu/sdk/activity/SdkInterstitialActivity$9;

    .line 261
    .line 262
    invoke-direct {v9, p0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity$9;-><init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)V

    .line 263
    .line 264
    .line 265
    invoke-interface {v0, v9}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->setNativeAdEventListener(Lcom/qq/e/ads/nativ/NativeADEventListener;)V

    .line 266
    .line 267
    .line 268
    invoke-interface {v0, p0, v2, v5, v8}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindAdToView(Landroid/content/Context;Lcom/qq/e/ads/nativ/widget/NativeAdContainer;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;)V

    .line 269
    .line 270
    .line 271
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    const/4 v5, 0x2

    .line 276
    if-ne v2, v5, :cond_7

    .line 277
    .line 278
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->mediaContainer:Landroid/widget/RelativeLayout;

    .line 279
    .line 280
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 281
    .line 282
    .line 283
    new-instance v1, Lcom/qq/e/ads/nativ/MediaView;

    .line 284
    .line 285
    invoke-direct {v1, p0}, Lcom/qq/e/ads/nativ/MediaView;-><init>(Landroid/content/Context;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    if-nez v2, :cond_5

    .line 293
    .line 294
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 295
    .line 296
    invoke-direct {v2, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 297
    .line 298
    .line 299
    :cond_5
    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 300
    .line 301
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 302
    .line 303
    iget-object v6, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->mediaContainer:Landroid/widget/RelativeLayout;

    .line 304
    .line 305
    invoke-virtual {v6, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    .line 307
    .line 308
    new-instance v2, Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 309
    .line 310
    invoke-direct {v2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;-><init>()V

    .line 311
    .line 312
    .line 313
    iget-boolean v6, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->isVideoAutoPlay:Z

    .line 314
    .line 315
    if-eqz v6, :cond_6

    .line 316
    .line 317
    move v5, v3

    .line 318
    :cond_6
    invoke-virtual {v2, v5}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayPolicy(I)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2, v3}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2, v3}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setNeedCoverImage(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2, v3}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setNeedProgressBar(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2, v3}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setEnableDetailPage(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v2, v4}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setEnableUserControl(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->build()Lcom/qq/e/ads/cfg/VideoOption;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    new-instance v3, Lcom/meishu/sdk/activity/SdkInterstitialActivity$10;

    .line 341
    .line 342
    invoke-direct {v3, p0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity$10;-><init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)V

    .line 343
    .line 344
    .line 345
    invoke-interface {v0, v1, v2, v3}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindMediaView(Lcom/qq/e/ads/nativ/MediaView;Lcom/qq/e/ads/cfg/VideoOption;Lcom/qq/e/ads/nativ/NativeADMediaListener;)V

    .line 346
    .line 347
    .line 348
    return-void

    .line 349
    :cond_7
    invoke-direct {p0, v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->getImageUrl(Lcom/qq/e/ads/nativ/NativeUnifiedADData;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-nez v2, :cond_8

    .line 358
    .line 359
    iget-object v2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->imageView:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 360
    .line 361
    iput-object v2, v1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 362
    .line 363
    invoke-virtual {v1, v0, v4}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 364
    .line 365
    .line 366
    :cond_8
    return-void
.end method

.method private handleKsAd()V
    .locals 9

    .line 1
    sget-object v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->sdkAd:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/kwad/sdk/api/KsNativeAd;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getInteractionType()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iput-boolean v2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->isDownloadType:Z

    .line 13
    .line 14
    :cond_0
    new-instance v1, Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAppName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_name(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 29
    .line 30
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAppVersion()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_ver(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 38
    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAppPackageSize()J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    const-wide/16 v6, 0x400

    .line 49
    .line 50
    div-long/2addr v4, v6

    .line 51
    mul-long/2addr v4, v6

    .line 52
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v4, "MB"

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_size(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 68
    .line 69
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getCorporationName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setDeveloper(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 77
    .line 78
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getPermissionInfoUrl()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_permission_url(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 86
    .line 87
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAppPrivacyUrl()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_private_agreement(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 95
    .line 96
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAdDescription()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_intro(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->title:Landroid/widget/TextView;

    .line 104
    .line 105
    const/16 v3, 0x8

    .line 106
    .line 107
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->desc:Landroid/widget/TextView;

    .line 111
    .line 112
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAdDescription()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    new-instance v1, Lcom/meishu/sdk/core/bquery/i;

    .line 120
    .line 121
    invoke-direct {v1, p0}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/app/Activity;)V

    .line 122
    .line 123
    .line 124
    iget-object v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->logo:Landroid/widget/ImageView;

    .line 125
    .line 126
    iput-object v3, v1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 127
    .line 128
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAppIconUrl()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    const/4 v4, 0x0

    .line 133
    invoke-virtual {v1, v3, v4}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 134
    .line 135
    .line 136
    iget-object v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->adLogo:Landroid/widget/ImageView;

    .line 137
    .line 138
    iput-object v3, v1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 139
    .line 140
    sget v3, Lcom/meishu/sdk/R$drawable;->ms_ksad_sdk_logo:I

    .line 141
    .line 142
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/bquery/e;->c(I)Lcom/meishu/sdk/core/bquery/e;

    .line 143
    .line 144
    .line 145
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getInteractionType()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-ne v3, v2, :cond_1

    .line 150
    .line 151
    iget-object v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->btn:Landroid/widget/TextView;

    .line 152
    .line 153
    const-string v5, "\u70b9\u51fb\u4e0b\u8f7d"

    .line 154
    .line 155
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_1
    iget-object v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->btn:Landroid/widget/TextView;

    .line 160
    .line 161
    const-string v5, "\u70b9\u51fb\u67e5\u770b\u8be6\u60c5"

    .line 162
    .line 163
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .line 170
    .line 171
    iget-object v5, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->rl_container:Landroid/widget/RelativeLayout;

    .line 172
    .line 173
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    iget-object v5, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->btn:Landroid/widget/TextView;

    .line 177
    .line 178
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    iget-object v5, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->rl_container:Landroid/widget/RelativeLayout;

    .line 182
    .line 183
    new-instance v6, Lcom/meishu/sdk/activity/SdkInterstitialActivity$11;

    .line 184
    .line 185
    invoke-direct {v6, p0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity$11;-><init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)V

    .line 186
    .line 187
    .line 188
    invoke-interface {v0, v5, v3, v6}, Lcom/kwad/sdk/api/KsNativeAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    iget v5, v3, Landroid/util/DisplayMetrics;->density:F

    .line 200
    .line 201
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 202
    .line 203
    int-to-float v3, v3

    .line 204
    const/high16 v6, 0x428c0000    # 70.0f

    .line 205
    .line 206
    mul-float/2addr v6, v5

    .line 207
    sub-float v6, v3, v6

    .line 208
    .line 209
    float-to-int v6, v6

    .line 210
    iget v7, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->layout_type:I

    .line 211
    .line 212
    const/4 v8, 0x2

    .line 213
    if-ne v7, v8, :cond_2

    .line 214
    .line 215
    const/high16 v6, 0x42a80000    # 84.0f

    .line 216
    .line 217
    mul-float/2addr v5, v6

    .line 218
    sub-float/2addr v3, v5

    .line 219
    float-to-int v6, v3

    .line 220
    :cond_2
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getMaterialType()I

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    const/4 v5, -0x1

    .line 225
    if-ne v3, v2, :cond_4

    .line 226
    .line 227
    new-instance v1, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;

    .line 228
    .line 229
    invoke-direct {v1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v4}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->videoSoundEnable(Z)Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->build()Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-interface {v0, p0, v1}, Lcom/kwad/sdk/api/KsNativeAd;->getVideoView(Landroid/content/Context;Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)Landroid/view/View;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    if-eqz v1, :cond_6

    .line 245
    .line 246
    iget-object v2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->mediaContainer:Landroid/widget/RelativeLayout;

    .line 247
    .line 248
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 249
    .line 250
    .line 251
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getVideoWidth()I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getVideoHeight()I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-lez v2, :cond_3

    .line 260
    .line 261
    if-lez v0, :cond_3

    .line 262
    .line 263
    mul-int/2addr v0, v6

    .line 264
    div-int v4, v0, v2

    .line 265
    .line 266
    :cond_3
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->mediaContainer:Landroid/widget/RelativeLayout;

    .line 267
    .line 268
    invoke-virtual {v0, v1, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 269
    .line 270
    .line 271
    return-void

    .line 272
    :cond_4
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getImageList()Ljava/util/List;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    if-eqz v0, :cond_6

    .line 277
    .line 278
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-lez v2, :cond_6

    .line 283
    .line 284
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    check-cast v2, Lcom/kwad/sdk/api/KsImage;

    .line 289
    .line 290
    invoke-interface {v2}, Lcom/kwad/sdk/api/KsImage;->getWidth()I

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    invoke-interface {v2}, Lcom/kwad/sdk/api/KsImage;->getHeight()I

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    check-cast v0, Lcom/kwad/sdk/api/KsImage;

    .line 303
    .line 304
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsImage;->getImageUrl()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    iget-object v7, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->imageView:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 309
    .line 310
    iput-object v7, v1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 311
    .line 312
    invoke-virtual {v1, v0, v4}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 313
    .line 314
    .line 315
    if-lez v3, :cond_5

    .line 316
    .line 317
    if-lez v2, :cond_5

    .line 318
    .line 319
    mul-int/2addr v2, v6

    .line 320
    div-int v4, v2, v3

    .line 321
    .line 322
    :cond_5
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->imageView:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 323
    .line 324
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 329
    .line 330
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 331
    .line 332
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->imageView:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 333
    .line 334
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    .line 336
    .line 337
    :cond_6
    return-void
.end method

.method private handleMsAd()V
    .locals 12

    .line 1
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->e()V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->sdkAd:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    and-int/lit8 v3, v2, 0x1

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    const/4 v5, 0x1

    .line 24
    if-eq v3, v5, :cond_0

    .line 25
    .line 26
    and-int/lit8 v3, v2, 0x2

    .line 27
    .line 28
    if-eq v3, v4, :cond_0

    .line 29
    .line 30
    or-int/2addr v2, v5

    .line 31
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setAct_type(I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    sget-object v2, Lcom/meishu/sdk/core/ad/AdType;->INTERSTITIAL:Lcom/meishu/sdk/core/ad/AdType;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/meishu/sdk/core/utils/h;->a()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-static {v3, v2}, Lcom/meishu/sdk/core/utils/h;->a(II)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setAct_type(I)V

    .line 55
    .line 56
    .line 57
    iput v2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->act_type:I

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->getInteractionType()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-ne v2, v5, :cond_1

    .line 64
    .line 65
    iput-boolean v5, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->isDownloadType:Z

    .line 66
    .line 67
    :cond_1
    invoke-static {v1}, Lcom/meishu/sdk/core/view/DownloadView;->toBean(Lcom/meishu/sdk/core/ad/BaseAdSlot;)Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iput-object v2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 72
    .line 73
    new-instance v2, Lcom/meishu/sdk/core/bquery/i;

    .line 74
    .line 75
    invoke-direct {v2, p0}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/app/Activity;)V

    .line 76
    .line 77
    .line 78
    iget v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->layout_type:I

    .line 79
    .line 80
    const/16 v6, 0x8

    .line 81
    .line 82
    const/4 v7, 0x0

    .line 83
    if-ne v3, v5, :cond_4

    .line 84
    .line 85
    iget-object v3, v1, Lcom/meishu/sdk/meishu_ad/interstitial/b;->a:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    const-string v8, ""

    .line 92
    .line 93
    if-eqz v3, :cond_2

    .line 94
    .line 95
    iget-object v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->title:Landroid/widget/TextView;

    .line 96
    .line 97
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    iget-object v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->title:Landroid/widget/TextView;

    .line 101
    .line 102
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    iget-object v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->title:Landroid/widget/TextView;

    .line 107
    .line 108
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    iget-object v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->title:Landroid/widget/TextView;

    .line 112
    .line 113
    iget-object v9, v1, Lcom/meishu/sdk/meishu_ad/interstitial/b;->a:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    :goto_0
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDesc()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-eqz v3, :cond_3

    .line 127
    .line 128
    iget-object v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->desc:Landroid/widget/TextView;

    .line 129
    .line 130
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    iget-object v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->desc:Landroid/widget/TextView;

    .line 134
    .line 135
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    iget-object v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->desc:Landroid/widget/TextView;

    .line 140
    .line 141
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    iget-object v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->desc:Landroid/widget/TextView;

    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDesc()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->logo:Landroid/widget/ImageView;

    .line 154
    .line 155
    if-eqz v3, :cond_6

    .line 156
    .line 157
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getIconUrl()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-nez v3, :cond_5

    .line 166
    .line 167
    iget-object v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->logo:Landroid/widget/ImageView;

    .line 168
    .line 169
    iput-object v3, v2, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 170
    .line 171
    invoke-virtual {v2, v7}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 172
    .line 173
    .line 174
    iget-object v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->logo:Landroid/widget/ImageView;

    .line 175
    .line 176
    iput-object v3, v2, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 177
    .line 178
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getIconUrl()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {v2, v3, v7}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_5
    iget-object v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->logo:Landroid/widget/ImageView;

    .line 187
    .line 188
    iput-object v3, v2, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 189
    .line 190
    invoke-virtual {v2, v6}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 191
    .line 192
    .line 193
    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->adLogoLL:Landroid/widget/LinearLayout;

    .line 194
    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    sget v8, Lcom/meishu/sdk/R$drawable;->ms_black_oval_gray:I

    .line 200
    .line 201
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-nez v3, :cond_7

    .line 217
    .line 218
    iget-object v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->adLogo:Landroid/widget/ImageView;

    .line 219
    .line 220
    iput-object v3, v2, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 221
    .line 222
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    invoke-virtual {v2, v3, v7}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 227
    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_7
    iget-object v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->adLogo:Landroid/widget/ImageView;

    .line 231
    .line 232
    iput-object v3, v2, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 233
    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    sget v6, Lcom/meishu/sdk/R$drawable;->ms_ad:I

    .line 239
    .line 240
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    iget-object v6, v2, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 245
    .line 246
    instance-of v8, v6, Landroid/widget/ImageView;

    .line 247
    .line 248
    if-eqz v8, :cond_8

    .line 249
    .line 250
    check-cast v6, Landroid/widget/ImageView;

    .line 251
    .line 252
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    .line 254
    .line 255
    :cond_8
    :goto_3
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    if-nez v3, :cond_9

    .line 264
    .line 265
    iget-object v3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->cid:Landroid/widget/TextView;

    .line 266
    .line 267
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    .line 273
    .line 274
    :cond_9
    const-string v3, "adSlot.getAdPatternType()="

    .line 275
    .line 276
    invoke-static {v3}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    .line 281
    .line 282
    .line 283
    move-result v6

    .line 284
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    const-string v6, "SdkInterstitialActivity"

    .line 292
    .line 293
    invoke-static {v6, v3}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    iget-wide v8, v0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->g:J

    .line 297
    .line 298
    const-wide/16 v10, 0x0

    .line 299
    .line 300
    cmp-long v3, v8, v10

    .line 301
    .line 302
    if-nez v3, :cond_a

    .line 303
    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 305
    .line 306
    .line 307
    move-result-wide v8

    .line 308
    iput-wide v8, v0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->g:J

    .line 309
    .line 310
    :cond_a
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    if-ne v3, v4, :cond_b

    .line 315
    .line 316
    invoke-direct {p0, v2, v1, v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->loadNativeVideo(Lcom/meishu/sdk/core/bquery/i;Lcom/meishu/sdk/meishu_ad/interstitial/b;Lcom/meishu/sdk/meishu_ad/interstitial/c;)V

    .line 317
    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_b
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    aget-object v2, v2, v7

    .line 325
    .line 326
    new-instance v3, Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;

    .line 327
    .line 328
    invoke-direct {v3, p0, v1, v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;-><init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity;Lcom/meishu/sdk/meishu_ad/interstitial/b;Lcom/meishu/sdk/meishu_ad/interstitial/c;)V

    .line 329
    .line 330
    .line 331
    invoke-static {v2, v3, v5}, Lcom/meishu/sdk/core/cache/a;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/y;Z)V

    .line 332
    .line 333
    .line 334
    :goto_4
    iget-object v2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->rootView:Landroid/widget/RelativeLayout;

    .line 335
    .line 336
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/ad/a;->setAdView(Landroid/view/View;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    and-int/2addr v2, v5

    .line 344
    if-ne v2, v5, :cond_c

    .line 345
    .line 346
    iget-object v2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->rl_container:Landroid/widget/RelativeLayout;

    .line 347
    .line 348
    new-instance v3, Lcom/meishu/sdk/activity/SdkInterstitialActivity$4;

    .line 349
    .line 350
    invoke-direct {v3, p0, v1, v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity$4;-><init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity;Lcom/meishu/sdk/meishu_ad/interstitial/b;Lcom/meishu/sdk/meishu_ad/interstitial/c;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    .line 355
    .line 356
    return-void

    .line 357
    :cond_c
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    and-int/2addr v2, v4

    .line 362
    if-ne v2, v4, :cond_d

    .line 363
    .line 364
    iget-object v2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->btn:Landroid/widget/TextView;

    .line 365
    .line 366
    new-instance v3, Lcom/meishu/sdk/activity/SdkInterstitialActivity$5;

    .line 367
    .line 368
    invoke-direct {v3, p0, v1, v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity$5;-><init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity;Lcom/meishu/sdk/meishu_ad/interstitial/b;Lcom/meishu/sdk/meishu_ad/interstitial/c;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    .line 373
    .line 374
    :cond_d
    return-void
.end method

.method private handleSdk()V
    .locals 1

    .line 1
    sget-object v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->sdkAd:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    :try_start_0
    instance-of v0, v0, Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->handleGDTAd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->sdkAd:Ljava/lang/Object;

    .line 18
    .line 19
    instance-of v0, v0, Lcom/kwad/sdk/api/KsNativeAd;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->handleKsAd()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :catchall_1
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_1
    :try_start_2
    sget-object v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->sdkAd:Ljava/lang/Object;

    .line 32
    .line 33
    instance-of v0, v0, Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->handleMsAd()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :catchall_2
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_2
    :try_start_3
    sget-object v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->sdkAd:Ljava/lang/Object;

    .line 46
    .line 47
    instance-of v0, v0, Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-direct {p0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->handleBdAd()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 52
    .line 53
    .line 54
    goto :goto_3

    .line 55
    :catchall_3
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_3
    invoke-direct {p0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->handleButton()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->handleDownloadView()V

    .line 63
    .line 64
    .line 65
    :cond_4
    return-void
.end method

.method private initView()V
    .locals 6

    .line 1
    :try_start_0
    sget v0, Lcom/meishu/sdk/R$id;->ms_activity_sdk_interstitial_touchAdContainer:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->touchAdContainer:Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 10
    .line 11
    sget v0, Lcom/meishu/sdk/R$id;->ms_action_shakeImage:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->startActionShakeImage:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 20
    .line 21
    sget v0, Lcom/meishu/sdk/R$id;->ms_activity_sdk_interstitial_mediaContainer:I

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->mediaContainer:Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    sget v0, Lcom/meishu/sdk/R$id;->ms_activity_sdk_interstitial_imageview:I

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->imageView:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 40
    .line 41
    sget v0, Lcom/meishu/sdk/R$id;->ms_activity_sdk_interstitial_imageBg:I

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/ImageView;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->imageBg:Landroid/widget/ImageView;

    .line 50
    .line 51
    sget v0, Lcom/meishu/sdk/R$id;->ms_activity_sdk_interstitial_cacel:I

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/widget/ImageView;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->closeImage:Landroid/widget/ImageView;

    .line 60
    .line 61
    sget v0, Lcom/meishu/sdk/R$id;->ms_activity_sdk_interstitial_adLogo:I

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroid/widget/ImageView;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->adLogo:Landroid/widget/ImageView;

    .line 70
    .line 71
    sget v0, Lcom/meishu/sdk/R$id;->ms_layout_native_interstitial_cid:I

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/widget/TextView;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->cid:Landroid/widget/TextView;

    .line 80
    .line 81
    sget v0, Lcom/meishu/sdk/R$id;->ms_activity_sdk_interstitial_rl_container:I

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 88
    .line 89
    iput-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->rl_container:Landroid/widget/RelativeLayout;

    .line 90
    .line 91
    sget v0, Lcom/meishu/sdk/R$id;->ms_activity_sdk_interstitial_adLogoLL:I

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroid/widget/LinearLayout;

    .line 98
    .line 99
    iput-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->adLogoLL:Landroid/widget/LinearLayout;

    .line 100
    .line 101
    sget v0, Lcom/meishu/sdk/R$id;->ms_layout_native_interstitial_ll:I

    .line 102
    .line 103
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroid/widget/LinearLayout;

    .line 108
    .line 109
    sget v0, Lcom/meishu/sdk/R$id;->ms_activity_sdk_interstitial_logo:I

    .line 110
    .line 111
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Landroid/widget/ImageView;

    .line 116
    .line 117
    iput-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->logo:Landroid/widget/ImageView;

    .line 118
    .line 119
    sget v0, Lcom/meishu/sdk/R$id;->ms_activity_sdk_interstitial_title:I

    .line 120
    .line 121
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Landroid/widget/TextView;

    .line 126
    .line 127
    iput-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->title:Landroid/widget/TextView;

    .line 128
    .line 129
    sget v0, Lcom/meishu/sdk/R$id;->ms_activity_sdk_interstitial_desc:I

    .line 130
    .line 131
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Landroid/widget/TextView;

    .line 136
    .line 137
    iput-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->desc:Landroid/widget/TextView;

    .line 138
    .line 139
    sget v0, Lcom/meishu/sdk/R$id;->ms_activity_sdk_interstitial_btn:I

    .line 140
    .line 141
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Landroid/widget/TextView;

    .line 146
    .line 147
    iput-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->btn:Landroid/widget/TextView;

    .line 148
    .line 149
    sget-object v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->msAd:Lcom/meishu/sdk/core/ad/IAd;

    .line 150
    .line 151
    if-eqz v0, :cond_0

    .line 152
    .line 153
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->touchAdContainer:Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 154
    .line 155
    if-eqz v1, :cond_0

    .line 156
    .line 157
    new-instance v2, Lcom/meishu/sdk/core/view/TouchPositionListener;

    .line 158
    .line 159
    invoke-direct {v2, v0}, Lcom/meishu/sdk/core/view/TouchPositionListener;-><init>(Lcom/meishu/sdk/core/ad/IAd;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/view/TouchAdContainer;->setTouchPositionListener(Lcom/meishu/sdk/core/view/TouchPositionListener;)V

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    goto :goto_1

    .line 168
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->closeImage:Landroid/widget/ImageView;

    .line 169
    .line 170
    new-instance v1, Lcom/meishu/sdk/activity/SdkInterstitialActivity$1;

    .line 171
    .line 172
    invoke-direct {v1, p0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity$1;-><init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->adLogoLL:Landroid/widget/LinearLayout;

    .line 179
    .line 180
    new-instance v1, Lcom/meishu/sdk/activity/SdkInterstitialActivity$2;

    .line 181
    .line 182
    invoke-direct {v1, p0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity$2;-><init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 190
    .line 191
    .line 192
    :goto_2
    :try_start_1
    iget v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->layout_type:I

    .line 193
    .line 194
    const/4 v1, 0x2

    .line 195
    if-ne v0, v1, :cond_1

    .line 196
    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    iget v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->layout_width:I

    .line 206
    .line 207
    if-lez v1, :cond_1

    .line 208
    .line 209
    iget v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->layout_height:I

    .line 210
    .line 211
    if-lez v1, :cond_1

    .line 212
    .line 213
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->touchAdContainer:Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 214
    .line 215
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 220
    .line 221
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 222
    .line 223
    int-to-double v2, v2

    .line 224
    const-wide v4, 0x3feb851eb851eb85L    # 0.86

    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    mul-double/2addr v2, v4

    .line 230
    double-to-int v4, v2

    .line 231
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 232
    .line 233
    iget v4, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->layout_height:I

    .line 234
    .line 235
    int-to-double v4, v4

    .line 236
    mul-double/2addr v2, v4

    .line 237
    iget v4, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->layout_width:I

    .line 238
    .line 239
    int-to-double v4, v4

    .line 240
    div-double/2addr v2, v4

    .line 241
    double-to-int v2, v2

    .line 242
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 243
    .line 244
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 245
    .line 246
    int-to-double v2, v0

    .line 247
    const-wide v4, 0x3fb1eb851eb851ecL    # 0.07

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    mul-double/2addr v2, v4

    .line 253
    double-to-int v0, v2

    .line 254
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 255
    .line 256
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 257
    .line 258
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->touchAdContainer:Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    .line 262
    .line 263
    goto :goto_3

    .line 264
    :catchall_0
    move-exception v0

    .line 265
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 266
    .line 267
    .line 268
    :cond_1
    :goto_3
    :try_start_2
    invoke-direct {p0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->handleSdk()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 269
    .line 270
    .line 271
    goto :goto_4

    .line 272
    :catch_1
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 274
    .line 275
    .line 276
    :goto_4
    return-void
.end method

.method private isGif([B)Z
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Ljava/math/BigInteger;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p1, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 12
    .line 13
    .line 14
    const/16 v1, 0x10

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v1, "47494638"

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    return v0

    .line 29
    :cond_0
    return v2
.end method

.method private loadNativeVideo(Lcom/meishu/sdk/core/bquery/i;Lcom/meishu/sdk/meishu_ad/interstitial/b;Lcom/meishu/sdk/meishu_ad/interstitial/c;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    aget-object v0, v0, v1

    .line 7
    .line 8
    new-instance v1, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;

    .line 9
    .line 10
    invoke-direct {v1, p0, p3, p2}, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;-><init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity;Lcom/meishu/sdk/meishu_ad/interstitial/c;Lcom/meishu/sdk/meishu_ad/interstitial/b;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance p2, Lcom/meishu/sdk/core/bquery/d;

    .line 17
    .line 18
    invoke-direct {p2, p1, v1}, Lcom/meishu/sdk/core/bquery/d;-><init>(Lcom/meishu/sdk/core/bquery/e;Lcom/meishu/sdk/core/bquery/j;)V

    .line 19
    .line 20
    .line 21
    const p3, 0x5265c00

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {p1, v0, p3, v1, p2}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;IZLcom/meishu/sdk/core/bquery/h;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static setAdListener(Lcom/meishu/sdk/meishu_ad/interstitial/a;)V
    .locals 0

    .line 1
    :try_start_0
    sput-object p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->adListener:Lcom/meishu/sdk/meishu_ad/interstitial/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    return-void

    .line 4
    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setAdWrapper(Lcom/meishu/sdk/platform/BasePlatformLoader;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->adWrapper:Lcom/meishu/sdk/platform/BasePlatformLoader;

    .line 2
    .line 3
    return-void
.end method

.method private setImageShowType(ILandroid/graphics/Bitmap;Lcom/meishu/sdk/core/view/gif/GifImageView;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 10
    .line 11
    int-to-float v2, v1

    .line 12
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    .line 13
    .line 14
    const/high16 v4, 0x428c0000    # 70.0f

    .line 15
    .line 16
    mul-float/2addr v4, v3

    .line 17
    sub-float/2addr v2, v4

    .line 18
    float-to-int v2, v2

    .line 19
    const/high16 v4, 0x43480000    # 200.0f

    .line 20
    .line 21
    mul-float/2addr v3, v4

    .line 22
    float-to-int v3, v3

    .line 23
    :try_start_0
    iget v4, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->layout_type:I

    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    if-ne v4, v5, :cond_0

    .line 27
    .line 28
    int-to-double v4, v1

    .line 29
    const-wide v6, 0x3feb851eb851eb85L    # 0.86

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    mul-double/2addr v4, v6

    .line 35
    iget v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->layout_height:I

    .line 36
    .line 37
    int-to-double v8, v1

    .line 38
    mul-double/2addr v8, v4

    .line 39
    iget v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->layout_width:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    .line 41
    int-to-double v1, v1

    .line 42
    div-double/2addr v8, v1

    .line 43
    double-to-int v1, v8

    .line 44
    double-to-int v2, v4

    .line 45
    :try_start_1
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    .line 47
    int-to-double v3, v0

    .line 48
    mul-double/2addr v3, v6

    .line 49
    double-to-int v3, v3

    .line 50
    :goto_0
    move v7, v2

    .line 51
    move v8, v3

    .line 52
    move v3, v1

    .line 53
    goto :goto_2

    .line 54
    :catch_0
    move-exception v0

    .line 55
    goto :goto_1

    .line 56
    :catch_1
    move-exception v0

    .line 57
    move v1, v3

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    move v7, v2

    .line 60
    move v8, v3

    .line 61
    goto :goto_2

    .line 62
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :goto_2
    if-ge v3, v8, :cond_1

    .line 67
    .line 68
    invoke-virtual {p3, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 73
    .line 74
    packed-switch p1, :pswitch_data_0

    .line 75
    .line 76
    .line 77
    :pswitch_0
    :try_start_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 82
    .line 83
    .line 84
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    int-to-float v1, v1

    .line 86
    mul-float/2addr v1, v0

    .line 87
    int-to-float v3, v7

    .line 88
    div-float/2addr v1, v3

    .line 89
    int-to-float v2, v2

    .line 90
    mul-float/2addr v2, v0

    .line 91
    int-to-float v0, v8

    .line 92
    div-float/2addr v2, v0

    .line 93
    cmpl-float v0, v1, v2

    .line 94
    .line 95
    if-lez v0, :cond_2

    .line 96
    .line 97
    move-object v4, p0

    .line 98
    move v9, p1

    .line 99
    move-object v5, p2

    .line 100
    move-object v6, p3

    .line 101
    :try_start_3
    invoke-direct/range {v4 .. v9}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->fullWidthImage(Landroid/graphics/Bitmap;Lcom/meishu/sdk/core/view/gif/GifImageView;III)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_5

    .line 105
    .line 106
    :catchall_0
    move-exception v0

    .line 107
    :goto_3
    move-object p1, v0

    .line 108
    goto/16 :goto_4

    .line 109
    .line 110
    :cond_2
    move-object v4, p0

    .line 111
    move v9, p1

    .line 112
    move-object v5, p2

    .line 113
    move-object v6, p3

    .line 114
    invoke-direct/range {v4 .. v9}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->fullHeightImage(Landroid/graphics/Bitmap;Landroid/widget/ImageView;III)V

    .line 115
    .line 116
    .line 117
    goto :goto_5

    .line 118
    :catchall_1
    move-exception v0

    .line 119
    move-object v5, p2

    .line 120
    move-object v6, p3

    .line 121
    goto :goto_3

    .line 122
    :pswitch_1
    move-object v5, p2

    .line 123
    move-object v6, p3

    .line 124
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 125
    .line 126
    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    .line 131
    .line 132
    goto :goto_5

    .line 133
    :pswitch_2
    move-object v4, p0

    .line 134
    move v9, p1

    .line 135
    move-object v5, p2

    .line 136
    move-object v6, p3

    .line 137
    invoke-direct/range {v4 .. v9}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->fullHeightImage(Landroid/graphics/Bitmap;Landroid/widget/ImageView;III)V

    .line 138
    .line 139
    .line 140
    goto :goto_5

    .line 141
    :pswitch_3
    move-object v4, p0

    .line 142
    move v9, p1

    .line 143
    move-object v5, p2

    .line 144
    move-object v6, p3

    .line 145
    invoke-direct/range {v4 .. v9}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->fullWidthImage(Landroid/graphics/Bitmap;Lcom/meishu/sdk/core/view/gif/GifImageView;III)V

    .line 146
    .line 147
    .line 148
    goto :goto_5

    .line 149
    :pswitch_4
    move v9, p1

    .line 150
    move-object v5, p2

    .line 151
    move-object v6, p3

    .line 152
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    int-to-float p1, p1

    .line 157
    mul-float/2addr p1, v0

    .line 158
    int-to-float p2, v7

    .line 159
    div-float/2addr p1, p2

    .line 160
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    int-to-float p2, p2

    .line 165
    mul-float/2addr p2, v0

    .line 166
    int-to-float p3, v8

    .line 167
    div-float/2addr p2, p3

    .line 168
    cmpl-float p1, p2, p1

    .line 169
    .line 170
    if-lez p1, :cond_3

    .line 171
    .line 172
    move-object v4, p0

    .line 173
    invoke-direct/range {v4 .. v9}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->fullWidthImage(Landroid/graphics/Bitmap;Lcom/meishu/sdk/core/view/gif/GifImageView;III)V

    .line 174
    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_3
    move-object v4, p0

    .line 178
    invoke-direct/range {v4 .. v9}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->fullHeightImage(Landroid/graphics/Bitmap;Landroid/widget/ImageView;III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    .line 180
    .line 181
    goto :goto_5

    .line 182
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 183
    .line 184
    .line 185
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 186
    .line 187
    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 191
    .line 192
    .line 193
    :goto_5
    return-void

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static setMsAd(Lcom/meishu/sdk/core/ad/IAd;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->msAd:Lcom/meishu/sdk/core/ad/IAd;

    .line 2
    .line 3
    return-void
.end method

.method public static setSdkAd(Ljava/lang/Object;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->sdkAd:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method private showShakeInButton()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/meishu/sdk/R$drawable;->ms_shake_angle:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/16 v1, 0x64

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->btn:Landroid/widget/TextView;

    .line 18
    .line 19
    const/16 v3, 0x14

    .line 20
    .line 21
    const/16 v4, 0x3c

    .line 22
    .line 23
    invoke-virtual {v1, v3, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->btn:Landroid/widget/TextView;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private showStartShakeImage()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->startActionShakeImage:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    sget v0, Lcom/meishu/sdk/R$raw;->ms_new_shake:I

    .line 8
    .line 9
    invoke-direct {p0, p0, v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->getImageBytes(Landroid/content/Context;I)[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    array-length v1, v0

    .line 16
    if-lez v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->startActionShakeImage:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v1, v0, v2}, Lcom/meishu/sdk/core/view/gif/GifImageView;->setBytes([BI)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->startActionShakeImage:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/meishu/sdk/core/view/gif/GifImageView;->startAnimation()V

    .line 27
    .line 28
    .line 29
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lcom/meishu/sdk/activity/SdkInterstitialActivity$6;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity$6;-><init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)V

    .line 37
    .line 38
    .line 39
    const-wide/16 v2, 0x7d0

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private startShake(Lcom/meishu/sdk/meishu_ad/interstitial/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->rootView:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    new-instance v1, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;-><init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity;Lcom/meishu/sdk/meishu_ad/interstitial/b;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getNavigationBarHeight(Landroid/content/Context;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "dimen"

    .line 6
    .line 7
    const-string v1, "android"

    .line 8
    .line 9
    const-string v2, "navigation_bar_height"

    .line 10
    .line 11
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method public handleDownloadView()V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "SdkInterstitialActivity"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "handleDownloadView: interactionType="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->isDownloadType:Z

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->isDownloadType:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    sget v0, Lcom/meishu/sdk/R$id;->ms_download_layer_textview:I

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/TextView;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->downloadBean:Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 42
    .line 43
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/view/DownloadView;->bindClickableDownloadInfo(Landroid/widget/TextView;Lcom/meishu/sdk/core/utils/DownloadDialogBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-void

    .line 50
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->initView()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public safeOnCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/safe/SafeActivity;->safeOnCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/meishu/sdk/R$layout;->ms_activity_sdk_interstitial:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/16 v1, 0x700

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "isVideoAutoPlay"

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iput-boolean v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->isVideoAutoPlay:Z

    .line 54
    .line 55
    const-string v1, "isClickToClose"

    .line 56
    .line 57
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    iput-boolean v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->isClickToClose:Z

    .line 62
    .line 63
    const-string v1, "act_type"

    .line 64
    .line 65
    const/4 v3, 0x2

    .line 66
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iput v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->act_type:I

    .line 71
    .line 72
    const-string v1, "layout_type"

    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    iput v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->layout_type:I

    .line 79
    .line 80
    const-string v1, "layout_width"

    .line 81
    .line 82
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    iput v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->layout_width:I

    .line 87
    .line 88
    const-string v1, "layout_height"

    .line 89
    .line 90
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    iput p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->layout_height:I

    .line 95
    .line 96
    sget p1, Lcom/meishu/sdk/R$id;->ms_activity_sdk_interstitial_rootView:I

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 103
    .line 104
    iput-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->rootView:Landroid/widget/RelativeLayout;

    .line 105
    .line 106
    sget p1, Lcom/meishu/sdk/R$layout;->ms_layout_sdk_interstitial_1:I

    .line 107
    .line 108
    const/4 v0, 0x0

    .line 109
    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iput-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->view:Landroid/view/View;

    .line 114
    .line 115
    iget p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->layout_type:I

    .line 116
    .line 117
    if-ne p1, v3, :cond_0

    .line 118
    .line 119
    sget p1, Lcom/meishu/sdk/R$layout;->ms_layout_sdk_interstitial_2:I

    .line 120
    .line 121
    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iput-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->view:Landroid/view/View;

    .line 126
    .line 127
    :cond_0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 128
    .line 129
    const/4 v0, -0x1

    .line 130
    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 131
    .line 132
    .line 133
    const/16 v0, 0xd

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->rootView:Landroid/widget/RelativeLayout;

    .line 139
    .line 140
    iget-object v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->view:Landroid/view/View;

    .line 141
    .line 142
    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    .line 144
    .line 145
    invoke-direct {p0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->initView()V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method public safeOnDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/core/safe/SafeActivity;->safeOnDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->sdkAd:Ljava/lang/Object;

    .line 6
    .line 7
    sput-object v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->adWrapper:Lcom/meishu/sdk/platform/BasePlatformLoader;

    .line 8
    .line 9
    sput-object v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->msAd:Lcom/meishu/sdk/core/ad/IAd;

    .line 10
    .line 11
    sput-object v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->adListener:Lcom/meishu/sdk/meishu_ad/interstitial/a;

    .line 12
    .line 13
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->shakeId:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public safeOnPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/core/safe/SafeActivity;->safeOnPause()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->isShake:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->e()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public safeOnResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/core/safe/SafeActivity;->safeOnResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->isShake:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->f()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
