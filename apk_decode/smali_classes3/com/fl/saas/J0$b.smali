.class Lcom/fl/saas/J0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/api/mixNative/NativeMaterial;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/J0;->a(Lcom/fl/saas/j;Landroid/view/View;)Lcom/fl/saas/adx/api/mixNative/NativeMaterial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private a:Ljava/util/List;

.field b:Landroid/graphics/Bitmap;

.field c:Landroid/graphics/Bitmap;

.field private d:Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;

.field final synthetic e:Lcom/fl/saas/j;

.field final synthetic f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/fl/saas/j;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/fl/saas/J0$b;->f:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getAdAppInfo()Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/J0$b;->d:Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/fl/saas/J0$b$a;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/fl/saas/J0$b$a;-><init>(Lcom/fl/saas/J0$b;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/fl/saas/J0$b;->d:Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/fl/saas/J0$b;->d:Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;

    .line 13
    .line 14
    return-object v0
.end method

.method public getAdLogo()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/J0$b;->b:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 6
    .line 7
    iget v1, v0, Lcom/fl/saas/j;->a:I

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    const-string v1, "\u5e7f\u544a"

    .line 12
    .line 13
    iget-object v0, v0, Lcom/fl/saas/j;->y:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/fl/saas/j;->y:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/fl/saas/a0;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    :goto_0
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget v1, Lcom/fl/saas/R$mipmap;->fl_adx_icon_logo:I

    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/fl/saas/a0;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_1
    iput-object v0, p0, Lcom/fl/saas/J0$b;->b:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :goto_2
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/fl/saas/J0$b;->b:Landroid/graphics/Bitmap;

    .line 50
    .line 51
    return-object v0
.end method

.method public getAdLogoBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/J0$b;->c:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 6
    .line 7
    iget v1, v0, Lcom/fl/saas/j;->a:I

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    const-string v1, "\u5e7f\u544a"

    .line 12
    .line 13
    iget-object v0, v0, Lcom/fl/saas/j;->y:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/fl/saas/j;->y:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/fl/saas/a0;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    :goto_0
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget v1, Lcom/fl/saas/R$mipmap;->fl_adx_icon_no_text_logo:I

    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/fl/saas/a0;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_1
    iput-object v0, p0, Lcom/fl/saas/J0$b;->c:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :goto_2
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/fl/saas/J0$b;->c:Landroid/graphics/Bitmap;

    .line 50
    .line 51
    return-object v0
.end method

.method public getAdLogoUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdMediaView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/J0$b;->f:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdType()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fl/saas/j;->P0:Lcom/fl/saas/j$c;

    .line 4
    .line 5
    iget v0, v0, Lcom/fl/saas/j$c;->b:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    const/4 v3, 0x3

    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    .line 14
    if-eq v0, v3, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    return v0

    .line 18
    :cond_0
    return v3

    .line 19
    :cond_1
    return v1
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fl/saas/j;->w0:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "1"

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "\u5f00\u59cb\u4e0b\u8f7d"

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    const-string v0, "\u67e5\u770b\u8be6\u60c5"

    .line 17
    .line 18
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fl/saas/j;->s1:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fl/saas/j;->x1:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getImageUrlList()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/J0$b;->a:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/fl/saas/J0$b;->a:Ljava/util/List;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/fl/saas/j;->p1:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/fl/saas/J0$b;->a:Ljava/util/List;

    .line 20
    .line 21
    return-object v0
.end method

.method public getMainImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fl/saas/j;->p1:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getMaterial()Lcom/fl/saas/adx/base/bean/MaterialBean;
    .locals 4

    .line 1
    new-instance v0, Lcom/fl/saas/adx/base/bean/MaterialBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/fl/saas/adx/base/bean/MaterialBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget v2, v1, Lcom/fl/saas/j;->x2:I

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    iget-object v1, v1, Lcom/fl/saas/j;->z:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/bean/MaterialBean;->setId(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/fl/saas/j;->i:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/bean/MaterialBean;->setPlaceId(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/fl/saas/j;->o0:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/bean/MaterialBean;->setTitle(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/fl/saas/j;->s1:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/bean/MaterialBean;->setDes(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/fl/saas/j;->p1:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/bean/MaterialBean;->setImgUrl(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/fl/saas/j;->y0:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/bean/MaterialBean;->setDeepLinkUrl(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 56
    .line 57
    iget-object v1, v1, Lcom/fl/saas/j;->x0:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/bean/MaterialBean;->setLandPageUrl(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 63
    .line 64
    iget-object v1, v1, Lcom/fl/saas/j;->z0:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/bean/MaterialBean;->setDownloadUrl(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    return-object v0
.end method

.method public getSize()Lcom/fl/saas/adx/base/bean/Size;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/fl/saas/j;->P0:Lcom/fl/saas/j$c;

    .line 4
    .line 5
    iget v2, v1, Lcom/fl/saas/j$c;->b:I

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    if-ne v2, v3, :cond_0

    .line 9
    .line 10
    iget-object v1, v1, Lcom/fl/saas/j$c;->g:Lcom/fl/saas/j$e;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/fl/saas/adx/base/bean/Size;

    .line 15
    .line 16
    iget v2, v1, Lcom/fl/saas/j$e;->b:I

    .line 17
    .line 18
    iget v1, v1, Lcom/fl/saas/j$e;->c:I

    .line 19
    .line 20
    invoke-direct {v0, v2, v1}, Lcom/fl/saas/adx/base/bean/Size;-><init>(II)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    new-instance v1, Lcom/fl/saas/adx/base/bean/Size;

    .line 25
    .line 26
    iget v2, v0, Lcom/fl/saas/j;->v1:I

    .line 27
    .line 28
    iget v0, v0, Lcom/fl/saas/j;->w1:I

    .line 29
    .line 30
    invoke-direct {v1, v2, v0}, Lcom/fl/saas/adx/base/bean/Size;-><init>(II)V

    .line 31
    .line 32
    .line 33
    return-object v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fl/saas/j;->o0:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getVideoDuration()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 2
    .line 3
    iget v0, v0, Lcom/fl/saas/j;->X1:I

    .line 4
    .line 5
    mul-int/lit16 v0, v0, 0x3e8

    .line 6
    .line 7
    int-to-double v0, v0

    .line 8
    return-wide v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fl/saas/j;->t1:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public isNativeAppAd()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/J0$b;->e:Lcom/fl/saas/j;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fl/saas/j;->z0:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    return v0
.end method
