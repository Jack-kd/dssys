.class public Lcom/meishu/sdk/core/utils/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    const-string v3, "__MS_EVENT_SEC__"

    const-string v4, "__MS_EVENT_MSEC__"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long v4, v1, v4

    .line 4
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {p0, v3, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 6
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 37
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 38
    :cond_0
    const-string v1, "__WIDTH__"

    const-string v2, "__HEIGHT__"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v2

    int-to-float p1, p1

    invoke-static {v2, p1}, Lcom/meishu/sdk/core/utils/m;->b(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v2

    int-to-float p2, p2

    invoke-static {v2, p2}, Lcom/meishu/sdk/core/utils/m;->b(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-static {p0, v1, p1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 41
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static a(Ljava/lang/String;ILcom/meishu/sdk/core/ad/AdType;)Ljava/lang/String;
    .locals 2

    .line 43
    :try_start_0
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    move-result v0

    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/h;->a(II)I

    move-result v0

    .line 44
    sget-object v1, Lcom/meishu/sdk/core/ad/AdType;->SPLASH:Lcom/meishu/sdk/core/ad/AdType;

    if-eq p2, v1, :cond_1

    and-int/lit16 p2, p1, 0x80

    const/16 v1, 0x80

    if-ne p2, v1, :cond_0

    and-int/lit16 v0, v0, -0x81

    :cond_0
    const/16 p2, 0x20

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_1

    and-int/lit8 v0, v0, -0x21

    .line 45
    :cond_1
    const-string p1, "__MS_CT__"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0
.end method

.method public static a(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 8
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 9
    :cond_0
    const-string v1, "__FINAL__"

    const-string v2, "__PST__"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 10
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p0, v1, p1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 14
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 15
    :cond_0
    const-string v1, "__UUID__"

    const-string v2, "__SUUID__"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/i0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/meishu/sdk/core/utils/i0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p0, v1, p1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static a(Lcom/meishu/sdk/core/domain/SdkAdInfo;Landroid/view/View;)V
    .locals 3

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 22
    invoke-virtual {p0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getImp()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 24
    invoke-static {v1, v0, p1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setImp(Ljava/lang/String;)V

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 27
    invoke-static {v1, v0, p1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setClk(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static a(Lcom/meishu/sdk/platform/ms/c;Landroid/view/ViewGroup;)V
    .locals 4

    .line 29
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez v0, :cond_1

    if-lez p1, :cond_1

    .line 31
    invoke-interface {p0}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 32
    invoke-interface {p0}, Lcom/meishu/sdk/core/ad/AdSlot;->getClickUrl()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    invoke-interface {p0}, Lcom/meishu/sdk/core/ad/AdSlot;->getClickUrl()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 34
    invoke-interface {p0}, Lcom/meishu/sdk/core/ad/AdSlot;->getClickUrl()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {v2, v0, p1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-interface {p0}, Lcom/meishu/sdk/core/ad/AdSlot;->getClickUrl()[Ljava/lang/String;

    move-result-object v3

    aput-object v2, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static a([Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    if-eqz p0, :cond_2

    .line 80
    :try_start_0
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 81
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 82
    aget-object v2, p0, v1

    const-string v3, "__M_SHOW_RATI__"

    const-string v4, "__M_SCREEN_X__"

    const-string v5, "__M_SCREEN_Y__"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    .line 83
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-static {v2, v3, v4}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 85
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 86
    :cond_1
    const-string v0, "i0"

    const-string v1, "replaceHWParams fullscreen"

    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 87
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-object p0
.end method

.method public static a([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_2

    .line 88
    :try_start_0
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 89
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 90
    aget-object v1, p0, v0

    const-string v2, "__MS_DP_OPEN__"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 92
    invoke-static {v1, v2, v3}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 93
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 94
    :cond_1
    const-string p1, "i0"

    const-string v0, "replaceDPOpen"

    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 95
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-object p0
.end method

.method public static a([Ljava/lang/String;Landroid/view/View;Landroid/view/View;)[Ljava/lang/String;
    .locals 9

    if-eqz p0, :cond_5

    .line 54
    :try_start_0
    array-length v0, p0

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 55
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    .line 56
    new-array v1, v1, [I

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "i0"

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 58
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p2

    .line 59
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 60
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    if-eqz p2, :cond_3

    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 64
    const-string p1, "replaceHWParams backUpView visible"

    invoke-static {v3, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 66
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 67
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 68
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 69
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    move v8, p2

    move p2, p1

    move p1, v8

    goto :goto_1

    .line 70
    :cond_2
    const-string p1, "replaceHWParams backUpView not visible"

    invoke-static {v3, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_3
    const-string p1, "replaceHWParams view not visible"

    invoke-static {v3, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move p1, v4

    move p2, p1

    move v0, p2

    move v2, v0

    :goto_1
    mul-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0x64

    mul-int/2addr v2, p1

    .line 72
    div-int/2addr p2, v2

    move p1, v4

    .line 73
    :goto_2
    array-length v0, p0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_4

    .line 74
    aget-object v0, p0, p1

    const-string v5, "__M_SHOW_RATI__"

    const-string v6, "__M_SCREEN_X__"

    const-string v7, "__M_SCREEN_Y__"

    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aget v7, v1, v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aget v2, v1, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v6, v7, v2}, [Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-static {v0, v5, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 78
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "replaceHWParams ratio\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " x:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, v1, v4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " y:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    .line 79
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_4
    return-object p0
.end method

.method public static a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_3

    .line 47
    :try_start_0
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_3

    .line 48
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 49
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 50
    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 51
    :cond_1
    aget-object v2, p0, v1

    const-string v3, "__ACCEPT_ID__"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 52
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    return-object v0

    .line 53
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_3
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    const-string p0, ""

    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "utf-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 7
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0
.end method

.method public static b([Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 2
    aget-object v1, p0, v0

    const-string v2, "__MS_CR__"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static b([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_1

    .line 12
    :try_start_0
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 14
    aget-object v1, p0, v0

    const-string v2, "__MS_DP_SIGN__"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-static {v1, v2, v3}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    :goto_1
    return-object p0
.end method

.method public static b([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 8
    :goto_0
    :try_start_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 9
    aget-object v1, p0, v0

    const-string v2, "__MS_STAT__"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    return-object p0

    .line 11
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0
.end method
