.class public abstract Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;
.super Lcom/fl/saas/g;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/inner/InnerNativeAdapter;
.implements Lcom/fl/saas/adx/base/interfaces/AdChangeCacheData;


# instance fields
.field private handler:Lcom/fl/saas/k0;

.field private hasShowView:Z

.field private mNativeAd:Lcom/fl/saas/adx/api/mixNative/NativeAd;

.field private nativeSpreadView:Lcom/fl/saas/adx/base/inner/spread/coustomView/NativeSpreadView;

.field private spreadViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/g;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;)Lcom/fl/saas/k0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->handler:Lcom/fl/saas/k0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;Lcom/fl/saas/b1;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fl/saas/n;->bindC2SBidECPM(Lcom/fl/saas/b1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;)V
    .locals 0

    invoke-virtual {p0}, Lcom/fl/saas/g;->onClosedEvent()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fl/saas/n;->disposeError(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;)V
    .locals 0

    invoke-virtual {p0}, Lcom/fl/saas/g;->onClosedEvent()V

    return-void
.end method

.method public static synthetic access$202(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;Lcom/fl/saas/adx/api/mixNative/NativeAd;)Lcom/fl/saas/adx/api/mixNative/NativeAd;
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->mNativeAd:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;Lcom/fl/saas/adx/api/mixNative/NativeAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->render(Lcom/fl/saas/adx/api/mixNative/NativeAd;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fl/saas/n;->disposeError(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method public static synthetic access$502(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;Lcom/fl/saas/adx/base/inner/spread/coustomView/NativeSpreadView;)Lcom/fl/saas/adx/base/inner/spread/coustomView/NativeSpreadView;
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->nativeSpreadView:Lcom/fl/saas/adx/base/inner/spread/coustomView/NativeSpreadView;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->responseAd()V

    return-void
.end method

.method public static synthetic access$700(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->hasShowView:Z

    return p0
.end method

.method public static synthetic access$800(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->spreadViewGroup:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->showSpreadView()V

    return-void
.end method

.method private checkStyle()Z
    .locals 21

    invoke-virtual/range {p0 .. p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v0

    iget-object v0, v0, Lcom/fl/saas/j;->L:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v1

    iget v1, v1, Lcom/fl/saas/j;->K:I

    invoke-virtual/range {p0 .. p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v2

    iget v2, v2, Lcom/fl/saas/j;->J:I

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v4

    const-string v5, "value4"

    invoke-virtual {v4, v5}, Lcom/fl/saas/S0;->b(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v4

    const-string v8, "value5"

    invoke-virtual {v4, v8}, Lcom/fl/saas/S0;->a(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v9

    const-string v10, "value6"

    invoke-virtual {v9, v10}, Lcom/fl/saas/S0;->a(Ljava/lang/String;)I

    move-result v9

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v11

    const-string v12, "value7"

    invoke-virtual {v11, v12}, Lcom/fl/saas/S0;->b(Ljava/lang/String;)J

    move-result-wide v13

    move-wide v15, v6

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getBootTime()J

    move-result-wide v6

    sub-long v15, v6, v15

    sub-long v13, v6, v13

    const/4 v11, 0x1

    add-int/2addr v4, v11

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v11

    invoke-virtual {v11, v8, v4}, Lcom/fl/saas/S0;->b(Ljava/lang/String;I)Lcom/fl/saas/S0;

    const-wide/32 v18, 0x5265c00

    cmp-long v11, v15, v18

    move-object/from16 v18, v0

    const/4 v0, 0x0

    const-wide/16 v19, 0x0

    if-gtz v11, :cond_0

    cmp-long v11, v15, v19

    if-gez v11, :cond_1

    :cond_0
    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v4

    invoke-virtual {v4, v10, v0}, Lcom/fl/saas/S0;->b(Ljava/lang/String;I)Lcom/fl/saas/S0;

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v4

    invoke-virtual {v4, v5, v6, v7}, Lcom/fl/saas/S0;->b(Ljava/lang/String;J)Lcom/fl/saas/S0;

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v8, v5}, Lcom/fl/saas/S0;->b(Ljava/lang/String;I)Lcom/fl/saas/S0;

    move v9, v0

    const/4 v4, 0x1

    :cond_1
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fl/saas/a1;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    int-to-long v3, v1

    const-wide/32 v15, 0xea60

    mul-long/2addr v3, v15

    cmp-long v1, v13, v3

    if-gtz v1, :cond_3

    cmp-long v1, v13, v19

    if-gez v1, :cond_4

    :cond_3
    if-ge v9, v2, :cond_4

    const/16 v17, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v0

    invoke-virtual {v0, v10, v9}, Lcom/fl/saas/S0;->b(Ljava/lang/String;I)Lcom/fl/saas/S0;

    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    move-result-object v0

    invoke-virtual {v0, v12, v6, v7}, Lcom/fl/saas/S0;->b(Ljava/lang/String;J)Lcom/fl/saas/S0;

    return v17

    :cond_4
    return v0
.end method

.method public static synthetic h(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->mNativeAd:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 5
    .line 6
    instance-of v1, v0, Lcom/fl/saas/adx/base/innterNative/ActionView;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/fl/saas/adx/base/innterNative/ActionView;

    .line 11
    .line 12
    sget-object v1, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->Spread:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Lcom/fl/saas/adx/base/innterNative/ActionView;->bindActionView(Lcom/fl/saas/adx/base/innterNative/ActionView$Type;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->nativeSpreadView:Lcom/fl/saas/adx/base/inner/spread/coustomView/NativeSpreadView;

    .line 21
    .line 22
    invoke-interface {v1}, Lcom/fl/saas/adx/base/inner/InnerNativeView;->getSelfView()Landroid/view/ViewGroup;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->nativeSpreadView:Lcom/fl/saas/adx/base/inner/spread/coustomView/NativeSpreadView;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget v2, v2, Lcom/fl/saas/j;->M:I

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    if-ne v2, v3, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 v3, 0x0

    .line 46
    :goto_1
    invoke-direct {p0}, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->checkStyle()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    iget v4, v4, Lcom/fl/saas/j;->I:I

    .line 55
    .line 56
    invoke-interface {v1, v3, v2, v4}, Lcom/fl/saas/adx/base/inner/spread/coustomView/NativeSpreadView;->setViewType(ZZI)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->nativeSpreadView:Lcom/fl/saas/adx/base/inner/spread/coustomView/NativeSpreadView;

    .line 60
    .line 61
    invoke-interface {v1, v0}, Lcom/fl/saas/adx/base/inner/spread/coustomView/NativeSpreadView;->setClickAreaVisibility(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->nativeSpreadView:Lcom/fl/saas/adx/base/inner/spread/coustomView/NativeSpreadView;

    .line 65
    .line 66
    invoke-interface {v0}, Lcom/fl/saas/adx/base/inner/spread/coustomView/NativeSpreadView;->show()V

    .line 67
    .line 68
    .line 69
    new-instance v0, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;

    .line 70
    .line 71
    invoke-direct {v0}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/fl/saas/n;->getActivityOrNull()Landroid/app/Activity;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->setActivity(Landroid/app/Activity;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->nativeSpreadView:Lcom/fl/saas/adx/base/inner/spread/coustomView/NativeSpreadView;

    .line 82
    .line 83
    invoke-interface {v1}, Lcom/fl/saas/adx/base/inner/InnerNativeView;->getCATView()Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    filled-new-array {v1}, [Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->setCtaView([Landroid/view/View;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->nativeSpreadView:Lcom/fl/saas/adx/base/inner/spread/coustomView/NativeSpreadView;

    .line 95
    .line 96
    invoke-interface {v1}, Lcom/fl/saas/adx/base/inner/InnerNativeView;->getClicks()[Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->setClickView([Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->mNativeAd:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 104
    .line 105
    invoke-interface {v1, v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->prepare(Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->spreadViewGroup:Landroid/view/ViewGroup;

    .line 109
    .line 110
    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->nativeSpreadView:Lcom/fl/saas/adx/base/inner/spread/coustomView/NativeSpreadView;

    .line 111
    .line 112
    invoke-interface {v1}, Lcom/fl/saas/adx/base/inner/InnerNativeView;->getNativeAdView()Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-static {}, Lcom/fl/saas/adx/util/ViewHelper;->getMatchParent()Landroid/view/ViewGroup$LayoutParams;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :goto_2
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 125
    .line 126
    .line 127
    new-instance v0, Lcom/fl/saas/adx/base/exception/FLError;

    .line 128
    .line 129
    const/16 v1, 0x4fb5

    .line 130
    .line 131
    const-string v2, "\u5c55\u793a\u5f02\u5e38"

    .line 132
    .line 133
    invoke-direct {v0, v1, v2}, Lcom/fl/saas/adx/base/exception/FLError;-><init>(ILjava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v0}, Lcom/fl/saas/n;->disposeError(Lcom/fl/saas/adx/base/exception/FLError;)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public static synthetic i(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->spreadViewGroup:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->showSpreadView()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Lcom/fl/saas/adx/base/exception/FLError;

    .line 10
    .line 11
    const/16 v0, 0x4fb7

    .line 12
    .line 13
    const-string v1, "\u5c55\u793a\u65f6\u4f20\u5165ViewGroup\u4e3anull"

    .line 14
    .line 15
    invoke-direct {p1, v0, v1}, Lcom/fl/saas/adx/base/exception/FLError;-><init>(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/fl/saas/n;->disposeError(Lcom/fl/saas/adx/base/exception/FLError;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static synthetic j(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/n;->canUseEcpm()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, -0x1

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/fl/saas/j;->g()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method private render(Lcom/fl/saas/adx/api/mixNative/NativeAd;)V
    .locals 4

    instance-of v0, p1, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    new-instance v1, Lcom/fl/saas/adx/base/inner/spread/b;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/inner/spread/b;-><init>(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->setEcpmMapper(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$EcpmMapper;)V

    new-instance v1, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$2;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$2;-><init>(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->setAdInfoMapper(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;)V

    :cond_0
    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->getAdMaterial()Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    move-result-object v0

    sget v1, Lcom/fl/saas/adx/util/DeviceUtil;->filling_timing:I

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/fl/saas/adx/util/ViewHelper;->checkMateria(Lcom/fl/saas/adx/api/mixNative/NativeMaterial;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->responseAd()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x4fb5

    const-string v2, "media and imgUrl is empty"

    invoke-static {v1, v2}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fl/saas/n;->disposeError(Lcom/fl/saas/adx/base/exception/FLError;)V

    :cond_2
    :goto_0
    new-instance v1, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;

    invoke-virtual {p0}, Lcom/fl/saas/n;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$3;

    invoke-direct {v3, p0}, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$3;-><init>(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;-><init>(Landroid/content/Context;Lcom/fl/saas/adx/api/mixNative/NativeMaterial;Lcom/fl/saas/adx/base/inner/spread/SpreadViewEvent;)V

    invoke-virtual {v1}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->getNativeAdView()Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    move-result-object v0

    invoke-virtual {v1}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->getSelfView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->renderAdContainer(Lcom/fl/saas/adx/api/mixNative/NativeAdView;Landroid/view/View;)V

    instance-of v0, p1, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    new-instance v2, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$4;

    invoke-direct {v2, p0, v1}, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$4;-><init>(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;)V

    invoke-virtual {v0, v2}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->setReportEventListener(Lcom/fl/saas/D0;)V

    :cond_3
    new-instance v0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$5;

    invoke-direct {v0, p0, v1}, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$5;-><init>(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;)V

    invoke-interface {p1, v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->setNativeEventListener(Lcom/fl/saas/adx/api/mixNative/NativeEventListener;)V

    new-instance v0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$6;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$6;-><init>(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;)V

    invoke-interface {p1, v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->setClickCallBackListener(Lcom/fl/saas/adx/api/mixNative/NativeClickCallbackListener;)V

    invoke-virtual {v1}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->initView()V

    return-void
.end method

.method private responseAd()V
    .locals 1

    new-instance v0, Lcom/fl/saas/adx/base/inner/spread/a;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/inner/spread/a;-><init>(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;)V

    invoke-virtual {p0, v0}, Lcom/fl/saas/g;->onSpreadLoadedEvent(Lcom/fl/saas/g$a;)V

    return-void
.end method

.method private showSpreadView()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->nativeSpreadView:Lcom/fl/saas/adx/base/inner/spread/coustomView/NativeSpreadView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->spreadViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->hasShowView:Z

    new-instance v0, Lcom/fl/saas/adx/base/inner/spread/c;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/inner/spread/c;-><init>(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;)V

    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->postUI(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    invoke-super {p0}, Lcom/fl/saas/g;->destroy()V

    invoke-virtual {p0}, Lcom/fl/saas/n;->isCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->handler:Lcom/fl/saas/k0;

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->mNativeAd:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    invoke-interface {p0, v0, v1}, Lcom/fl/saas/adx/base/inner/InnerNativeAdapter;->innerDestroy(Lcom/fl/saas/k0;Lcom/fl/saas/adx/api/mixNative/NativeAd;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->mNativeAd:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->nativeSpreadView:Lcom/fl/saas/adx/base/inner/spread/coustomView/NativeSpreadView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->spreadViewGroup:Landroid/view/ViewGroup;

    return-void
.end method

.method public getNativeAd()Lcom/fl/saas/adx/api/mixNative/NativeAd;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->mNativeAd:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    return-object v0
.end method

.method public handle(Landroid/content/Context;)V
    .locals 4

    invoke-interface {p0}, Lcom/fl/saas/adx/base/inner/InnerNativeAdapter;->loadNativeHandler()Lcom/fl/saas/k0;

    move-result-object v0

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->handler:Lcom/fl/saas/k0;

    new-instance v0, Lcom/fl/saas/adx/api/AdParams$Builder;

    invoke-virtual {p0}, Lcom/fl/saas/o;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fl/saas/adx/api/AdParams$Builder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/api/AdParams$Builder;->setIsMixNative(Z)Lcom/fl/saas/adx/api/AdParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/api/AdParams$Builder;->build()Lcom/fl/saas/adx/api/AdParams;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->handler:Lcom/fl/saas/k0;

    invoke-virtual {p0}, Lcom/fl/saas/n;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fl/saas/k0;->setContext(Landroid/content/Context;)Lcom/fl/saas/j0;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fl/saas/n;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/fl/saas/n;->getPosId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/fl/saas/j0;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fl/saas/j0;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fl/saas/n;->getLinkId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/fl/saas/j0;->setLinkId(Ljava/lang/String;)Lcom/fl/saas/j0;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/fl/saas/j0;->a(Lcom/fl/saas/adx/api/AdParams;)Lcom/fl/saas/j0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$1;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$1;-><init>(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;)V

    invoke-interface {v0, v1}, Lcom/fl/saas/j0;->a(Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;)Lcom/fl/saas/j0;

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->handler:Lcom/fl/saas/k0;

    sget-object v1, Lcom/fl/saas/adx/base/innterNative/NativeStyle;->NATIVE:Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    invoke-virtual {v0, v1}, Lcom/fl/saas/k0;->a(Lcom/fl/saas/adx/base/innterNative/NativeStyle;)Lcom/fl/saas/k0;

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->handler:Lcom/fl/saas/k0;

    invoke-virtual {p0}, Lcom/fl/saas/n;->isHot()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fl/saas/k0;->a(Z)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->handler:Lcom/fl/saas/k0;

    invoke-virtual {v0, p1}, Lcom/fl/saas/k0;->a(Landroid/content/Context;)V

    return-void
.end method

.method public setCacheData(Ljava/lang/String;Lcom/fl/saas/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->mNativeAd:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/fl/saas/adx/base/interfaces/AdChangeCacheData;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/fl/saas/adx/base/interfaces/AdChangeCacheData;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Lcom/fl/saas/adx/base/interfaces/AdChangeCacheData;->setCacheData(Ljava/lang/String;Lcom/fl/saas/j;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
