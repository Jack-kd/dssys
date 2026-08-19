.class public Lcom/meishu/sdk/meishu_ad/splash/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 4

    if-nez p0, :cond_0

    const/16 p0, 0xc

    return p0

    .line 1
    :cond_0
    :try_start_0
    sget v0, Lcom/meishu/sdk/meishu_ad/splash/e;->a:I

    if-gtz v0, :cond_1

    .line 2
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/m;->a(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/meishu/sdk/meishu_ad/splash/e;->a:I

    .line 3
    :cond_1
    sget p0, Lcom/meishu/sdk/meishu_ad/splash/e;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-double v0, p0

    const-wide v2, 0x3ffccccccccccccdL    # 1.8

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    double-to-int p0, v0

    return p0

    .line 4
    :catch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static a(Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;)I
    .locals 2

    if-eqz p0, :cond_0

    .line 5
    :try_start_0
    sget v0, Lcom/meishu/sdk/R$id;->ms_skipView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-lez v1, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/meishu/sdk/core/utils/m;->b(Landroid/content/Context;F)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    float-to-int p0, p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-gtz p0, :cond_2

    const/16 p0, 0x24

    :cond_2
    return p0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/16 p0, 0xc

    .line 4
    .line 5
    return p0

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 15
    .line 16
    int-to-double v0, v0

    .line 17
    const-wide v2, 0x400ccccccccccccdL    # 3.6

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    mul-double/2addr v0, v2

    .line 23
    double-to-int v0, v0

    .line 24
    div-int/lit8 v0, v0, 0x64
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    return v0

    .line 27
    :catch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 36
    .line 37
    const/high16 v0, 0x41400000    # 12.0f

    .line 38
    .line 39
    mul-float/2addr p0, v0

    .line 40
    float-to-int p0, p0

    .line 41
    return p0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/16 p0, 0xc

    .line 4
    .line 5
    return p0

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 15
    .line 16
    mul-int/lit8 v0, v0, 0xa

    .line 17
    .line 18
    div-int/lit8 v0, v0, 0x64
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    return v0

    .line 21
    :catch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 30
    .line 31
    const/high16 v0, 0x41c00000    # 24.0f

    .line 32
    .line 33
    mul-float/2addr p0, v0

    .line 34
    float-to-int p0, p0

    .line 35
    return p0
.end method
