.class public Lcom/fl/saas/L0;
.super Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/bidding/BiddingResult;
.implements Lcom/fl/saas/adx/base/interfaces/AdChangeCacheData;


# instance fields
.field private a:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

.field private b:Lcom/fl/saas/j;

.field private c:Lcom/fl/saas/Q0;

.field private d:I

.field private e:Lcom/fl/saas/Q0$b;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fl/saas/K0;II)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/fl/saas/L0;->f:Z

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p2}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAdOpt()Lcom/fl/saas/p0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/fl/saas/p0;->b()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/fl/saas/j;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/fl/saas/L0;->b:Lcom/fl/saas/j;

    .line 18
    .line 19
    iget v0, v0, Lcom/fl/saas/j;->u0:I

    .line 20
    .line 21
    int-to-float v0, v0

    .line 22
    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p0, Lcom/fl/saas/L0;->b:Lcom/fl/saas/j;

    .line 27
    .line 28
    iget v1, v1, Lcom/fl/saas/j;->v0:I

    .line 29
    .line 30
    int-to-float v1, v1

    .line 31
    invoke-static {v1}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    new-instance v2, Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-direct {v2, v3}, Lcom/fl/saas/adx/api/mixNative/NativeAdView;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    iput-object v2, p0, Lcom/fl/saas/L0;->a:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 45
    .line 46
    invoke-static {}, Lcom/fl/saas/adx/util/ViewHelper;->getWrapParent()Landroid/view/ViewGroup$LayoutParams;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    .line 52
    .line 53
    new-instance v2, Lcom/fl/saas/Q0;

    .line 54
    .line 55
    iget-object v3, p0, Lcom/fl/saas/L0;->b:Lcom/fl/saas/j;

    .line 56
    .line 57
    iget v3, v3, Lcom/fl/saas/j;->t0:I

    .line 58
    .line 59
    invoke-static {v3}, Lcom/fl/saas/Q0$c;->a(I)Lcom/fl/saas/Q0$c;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-direct {v2, p1, v3}, Lcom/fl/saas/Q0;-><init>(Landroid/content/Context;Lcom/fl/saas/Q0$c;)V

    .line 64
    .line 65
    .line 66
    iput-object v2, p0, Lcom/fl/saas/L0;->c:Lcom/fl/saas/Q0;

    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getAdMaterial()Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object p2, p0, Lcom/fl/saas/L0;->e:Lcom/fl/saas/Q0$b;

    .line 73
    .line 74
    if-nez p2, :cond_0

    .line 75
    .line 76
    new-instance p2, Lcom/fl/saas/L0$a;

    .line 77
    .line 78
    invoke-direct {p2, p0}, Lcom/fl/saas/L0$a;-><init>(Lcom/fl/saas/L0;)V

    .line 79
    .line 80
    .line 81
    iput-object p2, p0, Lcom/fl/saas/L0;->e:Lcom/fl/saas/Q0$b;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    goto :goto_1

    .line 86
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/fl/saas/L0;->c:Lcom/fl/saas/Q0;

    .line 87
    .line 88
    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getTitle()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {p2, v2}, Lcom/fl/saas/Q0;->e(Ljava/lang/String;)Lcom/fl/saas/Q0;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getDescription()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {p2, v2}, Lcom/fl/saas/Q0;->c(Ljava/lang/String;)Lcom/fl/saas/Q0;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getCallToAction()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {p2, v2}, Lcom/fl/saas/Q0;->b(Ljava/lang/String;)Lcom/fl/saas/Q0;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {p2, p3, p4}, Lcom/fl/saas/Q0;->b(II)Lcom/fl/saas/Q0;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    iget-object p3, p0, Lcom/fl/saas/L0;->b:Lcom/fl/saas/j;

    .line 117
    .line 118
    invoke-virtual {p2, p3}, Lcom/fl/saas/Q0;->b(Lcom/fl/saas/j;)Lcom/fl/saas/Q0;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {p2, v0, v1}, Lcom/fl/saas/Q0;->a(II)Lcom/fl/saas/Q0;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdLogo()Landroid/graphics/Bitmap;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    invoke-virtual {p2, p3}, Lcom/fl/saas/Q0;->a(Landroid/graphics/Bitmap;)Lcom/fl/saas/Q0;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getIconUrl()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p2, p1}, Lcom/fl/saas/Q0;->d(Ljava/lang/String;)Lcom/fl/saas/Q0;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1}, Lcom/fl/saas/Q0;->a()Lcom/fl/saas/Q0;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iget-object p2, p0, Lcom/fl/saas/L0;->e:Lcom/fl/saas/Q0$b;

    .line 147
    .line 148
    invoke-virtual {p1, p2}, Lcom/fl/saas/Q0;->a(Lcom/fl/saas/Q0$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :goto_1
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 153
    .line 154
    .line 155
    new-instance p1, Lcom/fl/saas/adx/base/exception/FLError;

    .line 156
    .line 157
    const/16 p2, 0x4fb5

    .line 158
    .line 159
    const-string p3, "ad render error"

    .line 160
    .line 161
    invoke-direct {p1, p2, p3}, Lcom/fl/saas/adx/base/exception/FLError;-><init>(ILjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->onAdFailedEvent(Lcom/fl/saas/adx/base/exception/FLError;)V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/L0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->onAdCloseEvent()V

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/L0;J)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->onAdVideoProgress(J)V

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/L0;Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->onAdFailedEvent(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method private static synthetic a(ZIIILcom/fl/saas/K0;)V
    .locals 0

    .line 4
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/fl/saas/K0;->biddingResult(ZIII)V

    return-void
.end method

.method public static synthetic b(Lcom/fl/saas/L0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->onAdImpressedEvent()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/fl/saas/L0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->onAdClickedEvent()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/fl/saas/L0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->onAdVideoStartEvent()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/fl/saas/L0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->onAdVideoEndEvent()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(ZIIILcom/fl/saas/K0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/fl/saas/L0;->a(ZIIILcom/fl/saas/K0;)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/fl/saas/L0;
    .locals 0

    .line 5
    iput p1, p0, Lcom/fl/saas/L0;->d:I

    return-object p0
.end method

.method public biddingResult(ZIII)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAdOpt()Lcom/fl/saas/p0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/fl/saas/y1;

    .line 6
    .line 7
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/fl/saas/y1;-><init>(ZIII)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public createNativeMaterial(Lcom/fl/saas/K0;)Lcom/fl/saas/adx/api/mixNative/NativeMaterial;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/fl/saas/L0;->b:Lcom/fl/saas/j;

    iget-object v0, p0, Lcom/fl/saas/L0;->a:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    invoke-static {p1, v0}, Lcom/fl/saas/J0;->a(Lcom/fl/saas/j;Landroid/view/View;)Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createNativeMaterial(Ljava/lang/Object;)Lcom/fl/saas/adx/api/mixNative/NativeMaterial;
    .locals 0

    .line 2
    check-cast p1, Lcom/fl/saas/K0;

    invoke-virtual {p0, p1}, Lcom/fl/saas/L0;->createNativeMaterial(Lcom/fl/saas/K0;)Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    move-result-object p1

    return-object p1
.end method

.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->destroy()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/fl/saas/L0;->f:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/fl/saas/L0;->f:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/fl/saas/K0;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/fl/saas/K0;->destroy()V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/fl/saas/L0;->c:Lcom/fl/saas/Q0;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/fl/saas/Q0;->b()V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    return-void
.end method

.method public init(Lcom/fl/saas/K0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/fl/saas/L0$b;

    invoke-direct {v0, p0}, Lcom/fl/saas/L0$b;-><init>(Lcom/fl/saas/L0;)V

    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->setNativeEventListener(Lcom/fl/saas/adx/api/mixNative/NativeEventListener;)V

    return-void
.end method

.method public bridge synthetic init(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/fl/saas/K0;

    invoke-virtual {p0, p1}, Lcom/fl/saas/L0;->init(Lcom/fl/saas/K0;)V

    return-void
.end method

.method public isNativeExpress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public pJ0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->gVx()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->gVy()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->gVz()F

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/fl/saas/K0;

    .line 24
    .line 25
    invoke-virtual {v3, v0, v1, v2}, Lcom/fl/saas/K0;->a(FFF)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->release()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/fl/saas/L0;->f:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/fl/saas/L0;->f:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/fl/saas/K0;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/fl/saas/K0;->destroy()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fl/saas/L0;->c:Lcom/fl/saas/Q0;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/fl/saas/Q0;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_1
    return-void

    .line 38
    :goto_2
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public render(Lcom/fl/saas/K0;Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/L0;->c:Lcom/fl/saas/Q0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/fl/saas/Q0;->c()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/fl/saas/L0;->b:Lcom/fl/saas/j;

    invoke-virtual {v1}, Lcom/fl/saas/j;->h()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/fl/saas/L0;->c:Lcom/fl/saas/Q0;

    sget-object v2, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->Template:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    invoke-virtual {p1, v2}, Lcom/fl/saas/K0;->bindActionView(Lcom/fl/saas/adx/base/innterNative/ActionView$Type;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fl/saas/Q0;->b(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/fl/saas/L0;->c:Lcom/fl/saas/Q0;

    sget-object v2, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->Template:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    invoke-virtual {p1, v2}, Lcom/fl/saas/K0;->bindActionView(Lcom/fl/saas/adx/base/innterNative/ActionView$Type;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fl/saas/Q0;->a(Landroid/view/View;)V

    :goto_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/fl/saas/L0;->a:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/fl/saas/L0;->a:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    invoke-virtual {p1, v1, v0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->renderAdContainer(Lcom/fl/saas/adx/api/mixNative/NativeAdView;Landroid/view/View;)V

    new-instance v1, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;

    invoke-direct {v1}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;-><init>()V

    invoke-virtual {p2}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->setActivity(Landroid/app/Activity;)V

    iget v2, p0, Lcom/fl/saas/L0;->d:I

    if-nez v2, :cond_3

    invoke-virtual {p2}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->getCtaViewList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->getCtaViewList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->setClickView([Landroid/view/View;)V

    :cond_4
    invoke-virtual {p2}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->getCtaViewList()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/view/View;

    invoke-virtual {v1, p2}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->setCtaView([Landroid/view/View;)V

    invoke-virtual {p1, v1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->prepare(Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic render(Ljava/lang/Object;Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/fl/saas/K0;

    invoke-virtual {p0, p1, p2}, Lcom/fl/saas/L0;->render(Lcom/fl/saas/K0;Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;)V

    return-void
.end method

.method public setCacheData(Ljava/lang/String;Lcom/fl/saas/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/L0;->b:Lcom/fl/saas/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, v0, Lcom/fl/saas/j;->r:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p1, p2, Lcom/fl/saas/j;->i:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p1, v0, Lcom/fl/saas/j;->i:Ljava/lang/String;

    .line 10
    .line 11
    iget-object p1, p2, Lcom/fl/saas/j;->h:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p1, v0, Lcom/fl/saas/j;->b0:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p1, p2, Lcom/fl/saas/j;->i:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p1, v0, Lcom/fl/saas/j;->a0:Ljava/lang/String;

    .line 18
    .line 19
    iget-object p1, p2, Lcom/fl/saas/j;->j:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p1, v0, Lcom/fl/saas/j;->c0:Ljava/lang/String;

    .line 22
    .line 23
    :cond_0
    return-void
.end method
