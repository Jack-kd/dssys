.class public Lcom/meishu/sdk/meishu_ad/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static C:Landroid/os/Handler;


# instance fields
.field public A:I

.field public final B:Lcom/meishu/sdk/meishu_ad/splash/l;

.field public a:Landroid/content/Context;

.field public b:I

.field public c:I

.field public d:[Ljava/lang/String;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public volatile k:Z

.field public l:J

.field public m:I

.field public n:J

.field public o:J

.field public p:J

.field public q:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

.field public r:Lcom/meishu/sdk/core/view/gif/GifImageView;

.field public s:Z

.field public t:[B

.field public volatile u:I

.field public volatile v:I

.field public volatile w:I

.field public x:[B

.field public volatile y:Z

.field public volatile z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/meishu/sdk/meishu_ad/v;->C:Landroid/os/Handler;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/meishu/sdk/meishu_ad/v;->c:I

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/meishu/sdk/meishu_ad/v;->e:Ljava/util/List;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/meishu/sdk/meishu_ad/v;->i:Z

    .line 16
    .line 17
    iput v1, p0, Lcom/meishu/sdk/meishu_ad/v;->u:I

    .line 18
    .line 19
    iput v1, p0, Lcom/meishu/sdk/meishu_ad/v;->v:I

    .line 20
    .line 21
    iput v1, p0, Lcom/meishu/sdk/meishu_ad/v;->w:I

    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/meishu/sdk/meishu_ad/v;->y:Z

    .line 24
    .line 25
    iput-boolean v1, p0, Lcom/meishu/sdk/meishu_ad/v;->z:Z

    .line 26
    .line 27
    iput v0, p0, Lcom/meishu/sdk/meishu_ad/v;->A:I

    .line 28
    .line 29
    new-instance v0, Lcom/meishu/sdk/meishu_ad/splash/l;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/meishu/sdk/meishu_ad/splash/l;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/v;->B:Lcom/meishu/sdk/meishu_ad/splash/l;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    .line 37
    .line 38
    return-void
.end method

.method public static a(Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/meishu_ad/nativ/a;ZLcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;Ljava/util/List;)V
    .locals 1

    .line 568
    new-instance v0, Lcom/meishu/sdk/meishu_ad/i0;

    invoke-direct {v0, p0, p2, p4, p1}, Lcom/meishu/sdk/meishu_ad/i0;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/f;ZLjava/util/List;Lcom/meishu/sdk/meishu_ad/nativ/a;)V

    invoke-virtual {p3, v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setOnVideoLoadedListener(Lcom/meishu/sdk/meishu_ad/n0$c;)V

    .line 569
    iget-object p0, p3, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->A:Lcom/meishu/sdk/meishu_ad/n0$c;

    if-eqz p0, :cond_0

    .line 570
    invoke-interface {p0, p3}, Lcom/meishu/sdk/meishu_ad/n0$c;->onLoaded(Lcom/meishu/sdk/meishu_ad/n0;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/meishu/sdk/meishu_ad/splash/d;)V
    .locals 1

    .line 490
    :try_start_0
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppendInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->getResLoadSuccess()Lcom/meishu/sdk/core/utils/b;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meishu/sdk/core/utils/b;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 491
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static a(Lcom/meishu/sdk/meishu_ad/v;)V
    .locals 2

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v;->e:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 66
    :goto_0
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/v;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/v;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_1
    iget-object p0, p0, Lcom/meishu/sdk/meishu_ad/v;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic a(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static a(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meishu/sdk/core/MSAdConfig;->isSplashClickToClosed()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    .line 42
    invoke-virtual {p1, p0}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->a(Z)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V
    .locals 8

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    :try_start_0
    iget-object v0, p1, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 46
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 47
    new-instance v0, Lcom/meishu/sdk/meishu_ad/w;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/meishu/sdk/meishu_ad/w;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    :cond_0
    iget-object v0, p1, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 49
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    .line 50
    sget v0, Lcom/meishu/sdk/R$id;->ms_jump_btn:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 51
    new-instance v0, Lcom/meishu/sdk/meishu_ad/x;

    invoke-direct {v0, p0, p3, p1, p4}, Lcom/meishu/sdk/meishu_ad/x;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    :cond_1
    instance-of p2, p3, Lcom/meishu/sdk/platform/ms/splash/g;

    if-eqz p2, :cond_2

    .line 53
    new-array v4, v1, [Z

    const/4 p2, 0x0

    aput-boolean p2, v4, p2

    .line 54
    move-object p2, p3

    check-cast p2, Lcom/meishu/sdk/platform/ms/splash/g;

    new-instance v2, Lcom/meishu/sdk/meishu_ad/y;

    move-object v3, p0

    move-object v5, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/meishu/sdk/meishu_ad/y;-><init>(Lcom/meishu/sdk/meishu_ad/v;[ZLcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V

    .line 55
    iput-object v2, p2, Lcom/meishu/sdk/platform/ms/splash/g;->k:Lcom/meishu/sdk/platform/ms/splash/g$d;

    .line 56
    move-object p3, v6

    check-cast p3, Lcom/meishu/sdk/platform/ms/splash/g;

    .line 57
    iget-boolean p0, p3, Lcom/meishu/sdk/platform/ms/splash/g;->e:Z

    if-eqz p0, :cond_2

    .line 58
    move-object p3, v6

    check-cast p3, Lcom/meishu/sdk/platform/ms/splash/g;

    .line 59
    iget-object p0, p3, Lcom/meishu/sdk/platform/ms/splash/g;->k:Lcom/meishu/sdk/platform/ms/splash/g$d;

    if-eqz p0, :cond_2

    .line 60
    move-object p3, v6

    check-cast p3, Lcom/meishu/sdk/platform/ms/splash/g;

    .line 61
    iget-object p0, p3, Lcom/meishu/sdk/platform/ms/splash/g;->k:Lcom/meishu/sdk/platform/ms/splash/g$d;

    .line 62
    check-cast p0, Lcom/meishu/sdk/meishu_ad/y;

    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/y;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static a(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/d;IILcom/meishu/sdk/meishu_ad/splash/a;Landroid/view/View;)V
    .locals 11

    .line 492
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/v;->y:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 493
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/v;->y:Z

    .line 494
    iget v1, p0, Lcom/meishu/sdk/meishu_ad/v;->u:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/meishu/sdk/meishu_ad/v;->v:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/meishu/sdk/meishu_ad/v;->w:I

    if-ne v1, v2, :cond_1

    .line 495
    const-string p1, "load res all error,cid="

    invoke-static {p1}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    move-object/from16 v6, p5

    invoke-virtual {p0, v6, p1, p2}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :cond_1
    move-object/from16 v6, p5

    .line 496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/meishu/sdk/meishu_ad/v;->o:J

    .line 497
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getScale_type()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    move v1, v2

    .line 498
    :cond_2
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    if-gtz p3, :cond_3

    .line 499
    iget p3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    :cond_3
    if-gtz p4, :cond_4

    .line 500
    iget p4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 501
    :cond_4
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/v;->q:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    sget v4, Lcom/meishu/sdk/R$id;->ms_splash_image:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/meishu/sdk/core/view/gif/GifImageView;

    iput-object v3, p0, Lcom/meishu/sdk/meishu_ad/v;->r:Lcom/meishu/sdk/core/view/gif/GifImageView;

    const/4 v4, 0x0

    .line 502
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 503
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/v;->q:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    sget v4, Lcom/meishu/sdk/R$id;->ms_splash_video:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 504
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/meishu/sdk/meishu_ad/v;->p:J

    .line 505
    iget-object v5, p0, Lcom/meishu/sdk/meishu_ad/v;->q:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v7, p6

    .line 506
    invoke-virtual/range {v3 .. v8}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/meishu_ad/splash/a;Landroid/view/View;Z)Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 507
    iget-object v4, p0, Lcom/meishu/sdk/meishu_ad/v;->q:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    sget v5, Lcom/meishu/sdk/R$id;->ms_splash_image_bg:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 508
    iget v5, p0, Lcom/meishu/sdk/meishu_ad/v;->v:I

    if-ne v5, v0, :cond_5

    iget-object v9, p0, Lcom/meishu/sdk/meishu_ad/v;->t:[B

    if-eqz v9, :cond_5

    .line 509
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/v;->r:Lcom/meishu/sdk/core/view/gif/GifImageView;

    const/4 v10, 0x0

    move-object v0, p0

    move-object v5, p2

    move v7, p3

    move v8, p4

    move-object/from16 v6, p5

    move-object v3, v4

    move v4, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v10}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Landroid/widget/ImageView;Landroid/widget/ImageView;ILcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;II[BZ)V

    return-void

    :cond_5
    move v7, p3

    move v8, p4

    move-object p3, v4

    move v4, v1

    .line 510
    iget-boolean p4, p0, Lcom/meishu/sdk/meishu_ad/v;->k:Z

    if-eqz p4, :cond_6

    .line 511
    iget p4, p0, Lcom/meishu/sdk/meishu_ad/v;->w:I

    if-ne p4, v0, :cond_7

    iget-object v9, p0, Lcom/meishu/sdk/meishu_ad/v;->x:[B

    if-eqz v9, :cond_7

    .line 512
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/v;->r:Lcom/meishu/sdk/core/view/gif/GifImageView;

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v3, p3

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v10}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Landroid/widget/ImageView;Landroid/widget/ImageView;ILcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;II[BZ)V

    return-void

    .line 513
    :cond_6
    iget p4, p0, Lcom/meishu/sdk/meishu_ad/v;->v:I

    if-ne p4, v2, :cond_7

    iget p4, p0, Lcom/meishu/sdk/meishu_ad/v;->w:I

    if-ne p4, v0, :cond_7

    iget-object v9, p0, Lcom/meishu/sdk/meishu_ad/v;->x:[B

    if-eqz v9, :cond_7

    .line 514
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/v;->r:Lcom/meishu/sdk/core/view/gif/GifImageView;

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v3, p3

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v10}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Landroid/widget/ImageView;Landroid/widget/ImageView;ILcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;II[BZ)V

    :cond_7
    :goto_0
    return-void
.end method

.method public static a(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;)V
    .locals 10

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAd_type()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAd_type()I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/meishu/sdk/core/ad/AdType;->SPLASH:Lcom/meishu/sdk/core/ad/AdType;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    move-result v0

    .line 73
    :goto_0
    sget-object v1, Lcom/meishu/sdk/core/ad/AdType;->SPLASH:Lcom/meishu/sdk/core/ad/AdType;

    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_2

    .line 74
    :cond_1
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/v;->B:Lcom/meishu/sdk/meishu_ad/splash/l;

    iget-object v4, p0, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/meishu/sdk/meishu_ad/v;->q:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    new-instance v8, Lcom/meishu/sdk/meishu_ad/g0;

    invoke-direct {v8, p0, p3, p1}, Lcom/meishu/sdk/meishu_ad/g0;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/c;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    :try_start_0
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getWebTempId()I

    move-result p0

    if-lez p0, :cond_3

    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getWebTempUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 76
    iput-object v6, v3, Lcom/meishu/sdk/meishu_ad/splash/l;->c:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 77
    new-instance p0, Lcom/meishu/sdk/core/webview/n;

    invoke-direct {p0}, Lcom/meishu/sdk/core/webview/n;-><init>()V

    const/4 p3, 0x0

    .line 78
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 79
    iput-object p3, p0, Lcom/meishu/sdk/core/webview/n;->a:Ljava/lang/Integer;

    .line 80
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getWebTempUrl()Ljava/lang/String;

    move-result-object p3

    new-instance v2, Lcom/meishu/sdk/meishu_ad/splash/h;

    move-object v7, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/meishu/sdk/meishu_ad/splash/h;-><init>(Lcom/meishu/sdk/meishu_ad/splash/l;Landroid/content/Context;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/l$b;)V

    move-object v6, v7

    .line 81
    invoke-static {p3}, Lcom/meishu/sdk/core/webview/o;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v8, 0x0

    move-object v7, p0

    move-object v5, p3

    move-object v9, v2

    .line 82
    invoke-static/range {v4 .. v9}, Lcom/meishu/sdk/core/webview/o;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;Lcom/meishu/sdk/core/webview/n;Lcom/meishu/sdk/core/webview/listener/a;Lcom/meishu/sdk/core/webview/listener/d;)Lcom/meishu/sdk/core/webview/s;

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 83
    :goto_1
    iput-object p0, v3, Lcom/meishu/sdk/meishu_ad/splash/l;->b:Lcom/meishu/sdk/core/webview/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_2
    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static a(Lcom/meishu/sdk/meishu_ad/v;[BLcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;ZLcom/meishu/sdk/core/ad/BaseAdSlot;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v3, p2

    move-object/from16 v7, p7

    .line 213
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 214
    sget v0, Lcom/meishu/sdk/R$id;->ms_layout_native_splash_bg:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    .line 215
    sget v0, Lcom/meishu/sdk/R$id;->ms_skipView:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 216
    sget v0, Lcom/meishu/sdk/R$id;->ms_native_splash_ad_container:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 217
    sget v0, Lcom/meishu/sdk/R$id;->ms_layout_native_splash_shake_img:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 218
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    sget v2, Lcom/meishu/sdk/R$layout;->ms_layout_native_splash_1:I

    const/4 v11, 0x0

    invoke-static {v0, v2, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const/4 v12, 0x0

    if-eqz v7, :cond_0

    .line 219
    invoke-virtual {v7}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getMeishuVideoView()Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    .line 220
    invoke-virtual {v7}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getMeishuVideoView()Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    move v13, v0

    move v15, v4

    :goto_0
    move-object v14, v11

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_1

    .line 221
    new-instance v0, Lcom/meishu/sdk/core/view/gif/GifImageView;

    iget-object v4, v1, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/meishu/sdk/core/view/gif/GifImageView;-><init>(Landroid/content/Context;)V

    .line 222
    invoke-virtual {v0, v6}, Lcom/meishu/sdk/core/view/gif/GifImageView;->setBytes([B)V

    .line 223
    invoke-virtual {v0}, Lcom/meishu/sdk/core/view/gif/GifImageView;->getGifWidth()I

    move-result v4

    .line 224
    invoke-virtual {v0}, Lcom/meishu/sdk/core/view/gif/GifImageView;->getGifHeight()I

    move-result v0

    move v15, v0

    move v13, v4

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_3

    .line 225
    array-length v0, v6

    if-lez v0, :cond_3

    .line 226
    array-length v0, v6

    invoke-static {v6, v12, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 227
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 228
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    move-object v14, v0

    move v15, v13

    move v13, v4

    goto :goto_2

    :cond_2
    move-object v14, v0

    :goto_1
    move v13, v12

    move v15, v13

    goto :goto_2

    :cond_3
    move-object v14, v11

    goto :goto_1

    :goto_2
    int-to-float v0, v13

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v0, v4

    int-to-float v4, v15

    div-float/2addr v0, v4

    move/from16 v16, v13

    float-to-double v12, v0

    const-wide v17, 0x3fe570a3d70a3d71L    # 0.67

    cmpg-double v0, v12, v17

    if-gez v0, :cond_4

    .line 229
    :try_start_0
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    sget v4, Lcom/meishu/sdk/R$layout;->ms_layout_native_splash_2:I

    invoke-static {v0, v4, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    move v13, v0

    :goto_3
    move-object v12, v2

    goto :goto_4

    :catch_0
    move-exception v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    const/4 v13, 0x0

    goto :goto_3

    .line 231
    :goto_4
    new-instance v0, Lcom/meishu/sdk/meishu_ad/k0;

    move-object/from16 v2, p5

    move-object/from16 v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/meishu/sdk/meishu_ad/k0;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V

    invoke-virtual {v12, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, -0x1

    .line 232
    invoke-virtual {v10, v12, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 233
    sget v4, Lcom/meishu/sdk/R$id;->activity_sdk_splash_mediaContainer:I

    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 234
    sget v10, Lcom/meishu/sdk/R$id;->ms_layout_native_splash_ll:I

    invoke-virtual {v12, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 235
    sget v11, Lcom/meishu/sdk/R$id;->layout_native_splash_imageview:I

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 236
    sget v0, Lcom/meishu/sdk/R$id;->layout_native_splash_title:I

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move/from16 v19, v13

    .line 237
    sget v13, Lcom/meishu/sdk/R$id;->layout_native_splash_icon:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v20, v14

    .line 238
    sget v14, Lcom/meishu/sdk/R$id;->layout_native_splash_score:I

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    move-object/from16 v21, v5

    .line 239
    sget v5, Lcom/meishu/sdk/R$id;->layout_native_splash_desc:I

    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v22, v13

    .line 240
    sget v13, Lcom/meishu/sdk/R$id;->ms_jump_btn:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    if-eqz v7, :cond_5

    .line 241
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v6, -0x1

    .line 242
    invoke-virtual {v4, v7, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 243
    sget-object v4, Lcom/meishu/sdk/core/utils/h0;->a:Ljava/util/concurrent/ExecutorService;

    .line 244
    sget-object v4, Lcom/meishu/sdk/core/utils/h0$b;->a:Lcom/meishu/sdk/core/utils/h0;

    .line 245
    new-instance v6, Lcom/meishu/sdk/meishu_ad/l0;

    invoke-direct {v6, v1, v7, v9}, Lcom/meishu/sdk/meishu_ad/l0;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;Landroid/widget/ImageView;)V

    invoke-virtual {v4, v6}, Lcom/meishu/sdk/core/utils/h0;->a(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_5
    if-eqz p3, :cond_6

    .line 246
    invoke-virtual {v11}, Lcom/meishu/sdk/core/view/gif/GifImageView;->isAnimating()Z

    move-result v4

    if-nez v4, :cond_9

    .line 247
    invoke-virtual {v11, v6}, Lcom/meishu/sdk/core/view/gif/GifImageView;->setBytes([B)V

    .line 248
    invoke-virtual {v11}, Lcom/meishu/sdk/core/view/gif/GifImageView;->getGifWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meishu/sdk/core/ad/splash/c;->setWidth(Ljava/lang/Integer;)V

    .line 249
    invoke-virtual {v11}, Lcom/meishu/sdk/core/view/gif/GifImageView;->getGifHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meishu/sdk/core/ad/splash/c;->setHeight(Ljava/lang/Integer;)V

    .line 250
    invoke-virtual {v11}, Lcom/meishu/sdk/core/view/gif/GifImageView;->startAnimation()V

    goto :goto_6

    :cond_6
    if-eqz v6, :cond_9

    .line 251
    array-length v4, v6

    if-lez v4, :cond_9

    if-nez v20, :cond_7

    .line 252
    array-length v4, v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    move-object/from16 v4, v20

    :goto_5
    if-eqz v4, :cond_8

    .line 253
    invoke-virtual {v11, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 254
    :cond_8
    array-length v4, v6

    invoke-static {v6, v7, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 255
    iget-object v6, v1, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    const/16 v6, 0x19

    invoke-static {v4, v6}, Lcom/meishu/sdk/core/utils/f0;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 256
    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 257
    :cond_9
    :goto_6
    new-instance v4, Lcom/meishu/sdk/core/bquery/i;

    invoke-direct {v4, v3}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/view/View;)V

    const-wide v23, 0x3feb851eb851eb85L    # 0.86

    const/16 v3, 0x3c

    const/16 v9, 0x64

    if-eqz v19, :cond_c

    .line 258
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 259
    iget v13, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    const-wide p1, 0x3fb1eb851eb851ecL    # 0.07

    int-to-double v6, v13

    mul-double v6, v6, v23

    double-to-int v13, v6

    iput v13, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    move-object v13, v12

    int-to-double v11, v15

    mul-double/2addr v6, v11

    move/from16 v12, v16

    int-to-double v11, v12

    div-double/2addr v6, v11

    double-to-int v6, v6

    .line 260
    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 261
    iget v6, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v6, v6

    mul-double v6, v6, p1

    double-to-int v6, v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 262
    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 263
    invoke-virtual {v10, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    iget-object v4, v2, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 265
    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v4

    invoke-static {v4}, Lcom/meishu/sdk/core/utils/h;->d(I)Z

    move-result v4

    if-nez v4, :cond_b

    .line 266
    iget-object v4, v2, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 267
    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v4

    invoke-static {v4}, Lcom/meishu/sdk/core/utils/h;->e(I)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_8

    :cond_a
    :goto_7
    const/16 v3, 0x8

    goto :goto_9

    .line 268
    :cond_b
    :goto_8
    iget-object v4, v1, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/meishu/sdk/R$drawable;->ms_shake_angle:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v7, 0x0

    .line 269
    invoke-virtual {v4, v7, v7, v9, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 270
    invoke-virtual {v13, v3, v7, v3, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v3, 0x0

    .line 271
    invoke-virtual {v13, v4, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 272
    :goto_9
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 273
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 274
    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v6, v22

    .line 275
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    :cond_c
    move-object v13, v12

    move-object/from16 v6, v22

    const-wide p1, 0x3fb1eb851eb851ecL    # 0.07

    .line 276
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 277
    iget v11, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v11, v11

    mul-double v11, v11, v23

    double-to-int v11, v11

    iput v11, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/4 v11, -0x2

    .line 278
    iput v11, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 279
    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v11, v8

    mul-double v11, v11, p1

    double-to-int v8, v11

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 280
    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 281
    invoke-virtual {v10, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    iget-object v7, v2, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 283
    invoke-virtual {v7}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v7

    invoke-static {v7}, Lcom/meishu/sdk/core/utils/h;->d(I)Z

    move-result v7

    if-nez v7, :cond_e

    .line 284
    iget-object v7, v2, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 285
    invoke-virtual {v7}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v7

    invoke-static {v7}, Lcom/meishu/sdk/core/utils/h;->e(I)Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_a

    :cond_d
    const/4 v8, 0x0

    goto :goto_b

    .line 286
    :cond_e
    :goto_a
    iget-object v7, v1, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/meishu/sdk/R$drawable;->ms_shake_angle:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v8, 0x0

    .line 287
    invoke-virtual {v7, v8, v8, v9, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 288
    invoke-virtual {v13, v3, v8, v3, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v3, 0x0

    .line 289
    invoke-virtual {v13, v7, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 290
    :goto_b
    move-object/from16 v3, p4

    check-cast v3, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 291
    iget-object v7, v3, Lcom/meishu/sdk/core/ad/BaseAdSlot;->desc:Ljava/lang/String;

    .line 292
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 293
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v3, v3, Lcom/meishu/sdk/core/ad/BaseAdSlot;->title:Ljava/lang/String;

    .line 295
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x8

    goto :goto_c

    :cond_f
    const/16 v3, 0x8

    .line 296
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 297
    invoke-virtual {v14, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    :goto_c
    invoke-virtual/range {p4 .. p4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 299
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 300
    invoke-virtual/range {p4 .. p4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 301
    :cond_10
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 302
    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    :goto_d
    move-object/from16 v0, p4

    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 304
    iget-object v5, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->iconUrl:Ljava/lang/String;

    .line 305
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 306
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    iput-object v6, v4, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 308
    iget-object v0, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->iconUrl:Ljava/lang/String;

    .line 309
    invoke-virtual {v4, v0, v8}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    goto :goto_e

    .line 310
    :cond_11
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    :goto_e
    invoke-virtual/range {p4 .. p4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    move-result v0

    if-nez v0, :cond_13

    .line 312
    const-string v0, "\u70b9\u51fb\u8df3\u8f6c\u8be6\u60c5\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, v2, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 314
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/h;->d(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 315
    const-string v0, "\u70b9\u51fb/\u6447\u4e00\u6447\u8df3\u8f6c\u8be6\u60c5\u9875"

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 316
    :cond_12
    iget-object v0, v2, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 317
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/h;->e(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 318
    const-string v0, "\u70b9\u51fb/\u626d\u52a8\u624b\u673a\u8df3\u8f6c\u8be6\u60c5\u9875"

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 319
    :cond_13
    const-string v0, "\u70b9\u51fb\u4e0b\u8f7d\u7b2c\u4e09\u65b9\u5e94\u7528"

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v0, v2, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 321
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/h;->d(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 322
    const-string v0, "\u70b9\u51fb/\u6447\u4e00\u6447\u4e0b\u8f7d\u7b2c\u4e09\u65b9\u5e94\u7528"

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 323
    :cond_14
    iget-object v0, v2, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 324
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/h;->e(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 325
    const-string v0, "\u70b9\u51fb/\u626d\u52a8\u624b\u673a\u4e0b\u8f7d\u7b2c\u4e09\u65b9\u5e94\u7528"

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :cond_15
    :goto_f
    new-instance v0, Lcom/meishu/sdk/meishu_ad/b;

    move-object/from16 v4, p6

    move-object/from16 v5, v21

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/meishu/sdk/meishu_ad/b;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static a(ZLcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/c;)V
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 345
    check-cast p1, Lcom/meishu/sdk/platform/ms/splash/g;

    invoke-virtual {p1, p2}, Lcom/meishu/sdk/platform/ms/splash/g;->onADLoaded(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/meishu/sdk/meishu_ad/v;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/v;->j:Z

    return p1
.end method

.method public static a(ILandroid/graphics/Bitmap;II)[Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch p0, :pswitch_data_0

    .line 392
    :pswitch_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 393
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v2, v2

    mul-float/2addr v2, v1

    int-to-float v4, p2

    div-float/2addr v2, v4

    int-to-float v3, v3

    mul-float/2addr v3, v1

    int-to-float v1, p3

    div-float/2addr v3, v1

    cmpl-float v1, v2, v3

    if-lez v1, :cond_0

    .line 394
    invoke-static {p1, p2, p3, p0}, Lcom/meishu/sdk/meishu_ad/v;->b(Landroid/graphics/Bitmap;III)[Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 395
    :cond_0
    invoke-static {p1, p2, p3, p0}, Lcom/meishu/sdk/meishu_ad/v;->a(Landroid/graphics/Bitmap;III)[Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 396
    :pswitch_1
    filled-new-array {p1, v0}, [Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 397
    :pswitch_2
    invoke-static {p1, p2, p3, p0}, Lcom/meishu/sdk/meishu_ad/v;->a(Landroid/graphics/Bitmap;III)[Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 398
    :pswitch_3
    invoke-static {p1, p2, p3, p0}, Lcom/meishu/sdk/meishu_ad/v;->b(Landroid/graphics/Bitmap;III)[Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 399
    :pswitch_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    int-to-float v3, p2

    div-float/2addr v2, v3

    .line 400
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    int-to-float v1, p3

    div-float/2addr v3, v1

    cmpl-float v1, v3, v2

    if-lez v1, :cond_1

    .line 401
    invoke-static {p1, p2, p3, p0}, Lcom/meishu/sdk/meishu_ad/v;->b(Landroid/graphics/Bitmap;III)[Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 402
    :cond_1
    invoke-static {p1, p2, p3, p0}, Lcom/meishu/sdk/meishu_ad/v;->a(Landroid/graphics/Bitmap;III)[Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 403
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 404
    filled-new-array {p1, v0}, [Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

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

.method public static a(Landroid/graphics/Bitmap;III)[Landroid/graphics/Bitmap;
    .locals 16

    move/from16 v4, p1

    move/from16 v0, p3

    const/4 v1, 0x2

    .line 415
    new-array v8, v1, [Landroid/graphics/Bitmap;

    .line 416
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 417
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    move/from16 v5, p2

    int-to-float v2, v5

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    int-to-float v3, v13

    div-float/2addr v2, v3

    .line 418
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 419
    invoke-virtual {v14, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/4 v10, 0x0

    move-object/from16 v9, p0

    .line 420
    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 421
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 422
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v6, 0x1

    const/4 v9, 0x0

    if-ge v3, v4, :cond_0

    .line 423
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    const/16 v0, 0x19

    invoke-static {v2, v0}, Lcom/meishu/sdk/core/utils/f0;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 424
    aput-object v0, v8, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 425
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_0
    const/4 v7, 0x6

    if-eq v0, v7, :cond_4

    if-eq v0, v1, :cond_4

    if-ne v0, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    :cond_2
    move v3, v9

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    sub-int/2addr v3, v4

    goto :goto_1

    :cond_4
    :goto_0
    sub-int/2addr v3, v4

    .line 426
    div-int/2addr v3, v1

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v2

    move v2, v3

    const/4 v3, 0x0

    .line 427
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 428
    :goto_2
    aput-object v2, v8, v9

    return-object v8
.end method

.method public static synthetic b(Lcom/meishu/sdk/meishu_ad/v;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/v;->k:Z

    return p1
.end method

.method public static b(Landroid/graphics/Bitmap;III)[Landroid/graphics/Bitmap;
    .locals 16

    move/from16 v5, p2

    move/from16 v0, p3

    const/4 v1, 0x2

    .line 2
    new-array v8, v1, [Landroid/graphics/Bitmap;

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    move/from16 v4, p1

    int-to-float v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    int-to-float v3, v12

    div-float/2addr v2, v3

    .line 5
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 6
    invoke-virtual {v14, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/4 v10, 0x0

    move-object/from16 v9, p0

    .line 7
    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 9
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    const/4 v6, 0x1

    const/4 v9, 0x0

    if-ge v3, v5, :cond_0

    .line 10
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    const/16 v0, 0xa

    invoke-static {v2, v0}, Lcom/meishu/sdk/core/utils/f0;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 11
    aput-object v0, v8, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_0
    const/4 v7, 0x3

    if-eq v0, v7, :cond_4

    if-eq v0, v1, :cond_4

    if-ne v0, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    :cond_2
    move v3, v9

    goto :goto_1

    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    sub-int/2addr v3, v5

    goto :goto_1

    :cond_4
    :goto_0
    sub-int/2addr v3, v5

    .line 13
    div-int/2addr v3, v1

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v2

    const/4 v2, 0x0

    .line 14
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 15
    :goto_2
    aput-object v2, v8, v9

    return-object v8
.end method

.method public static synthetic c(Lcom/meishu/sdk/meishu_ad/v;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/v;->g:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic d(Lcom/meishu/sdk/meishu_ad/v;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/v;->h:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public final a(I)I
    .locals 5

    const/4 v0, 0x0

    .line 572
    :try_start_0
    iget v1, p0, Lcom/meishu/sdk/meishu_ad/v;->m:I

    if-lez v1, :cond_0

    iget-wide v1, p0, Lcom/meishu/sdk/meishu_ad/v;->l:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/meishu/sdk/meishu_ad/v;->l:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 574
    iget v2, p0, Lcom/meishu/sdk/meishu_ad/v;->m:I

    sub-int/2addr v2, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception v1

    .line 575
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 576
    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/meishu_ad/splash/a;Landroid/view/View;Z)Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;
    .locals 9

    .line 85
    iget-object v0, p1, Lcom/meishu/sdk/meishu_ad/splash/c;->c:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    if-eqz v0, :cond_0

    return-object v0

    .line 86
    :cond_0
    sget v0, Lcom/meishu/sdk/R$id;->ms_skipView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 87
    new-instance v1, Lcom/meishu/sdk/meishu_ad/v$a;

    move-object v2, p0

    move-object v4, p1

    move-object v8, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/meishu/sdk/meishu_ad/v$a;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/a;Landroid/view/View;ZLcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;)V

    invoke-virtual {v8, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 88
    iput-object v3, v4, Lcom/meishu/sdk/meishu_ad/splash/c;->c:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    return-object v3
.end method

.method public a()Ljava/lang/String;
    .locals 4

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/meishu/sdk/meishu_ad/v;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/meishu/sdk/meishu_ad/v;->o:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/meishu/sdk/meishu_ad/v;->p:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILandroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p5, :cond_0

    .line 405
    :try_start_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 406
    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 407
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 408
    :cond_1
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 409
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 410
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_2
    if-eqz p5, :cond_2

    const/4 p1, 0x0

    .line 411
    :try_start_1
    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 412
    invoke-virtual {p4, p5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 p1, 0xbf

    .line 413
    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 414
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    return-void
.end method

.method public final a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 4

    .line 89
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/v;->z:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/v;->z:Z

    .line 91
    iget-wide v0, p0, Lcom/meishu/sdk/meishu_ad/v;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meishu/sdk/meishu_ad/v;->o:J

    :cond_1
    if-eqz p1, :cond_2

    .line 93
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/meishu/sdk/meishu_ad/m0;->onAdRenderFail(Ljava/lang/String;I)V

    .line 94
    :cond_2
    sget p1, Lcom/meishu/sdk/core/utils/r0;->i:I

    if-lez p1, :cond_3

    .line 95
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/v;->d:[Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, p3, p2}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/meishu_ad/nativ/a;Lcom/meishu/sdk/core/ad/b;)V
    .locals 12

    .line 515
    :try_start_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/v;->d:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 516
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 517
    :goto_0
    instance-of v0, p3, Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;

    .line 518
    new-instance v3, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    new-instance v1, Landroid/content/ContextWrapper;

    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;-><init>(Landroid/content/Context;)V

    .line 519
    invoke-virtual {v3, p2}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setAdListener(Lcom/meishu/sdk/meishu_ad/nativ/a;)V

    .line 520
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 521
    new-instance v6, Lcom/meishu/sdk/meishu_ad/nativ/d;

    invoke-direct {v6, p1}, Lcom/meishu/sdk/meishu_ad/nativ/d;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/f;)V

    .line 522
    iget-object v1, p1, Lcom/meishu/sdk/core/ad/BaseAdSlot;->title:Ljava/lang/String;

    .line 523
    iput-object v1, v6, Lcom/meishu/sdk/meishu_ad/nativ/d;->e:Ljava/lang/String;

    .line 524
    iget-object v1, p1, Lcom/meishu/sdk/core/ad/BaseAdSlot;->desc:Ljava/lang/String;

    .line 525
    iput-object v1, v6, Lcom/meishu/sdk/meishu_ad/nativ/d;->f:Ljava/lang/String;

    .line 526
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v1

    .line 527
    iput v1, v6, Lcom/meishu/sdk/meishu_ad/nativ/d;->b:I

    .line 528
    iget-object v1, p1, Lcom/meishu/sdk/core/ad/BaseAdSlot;->iconUrl:Ljava/lang/String;

    .line 529
    iput-object v1, v6, Lcom/meishu/sdk/meishu_ad/nativ/d;->c:Ljava/lang/String;

    .line 530
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v1

    .line 531
    iput-object v1, v6, Lcom/meishu/sdk/meishu_ad/nativ/d;->d:[Ljava/lang/String;

    .line 532
    iput-object v3, v6, Lcom/meishu/sdk/meishu_ad/nativ/d;->h:Lcom/meishu/sdk/meishu_ad/n0;

    .line 533
    invoke-virtual {p3}, Lcom/meishu/sdk/core/ad/b;->getVideoIsMute()Z

    move-result v1

    .line 534
    invoke-static {v6, v1}, Lcom/meishu/sdk/meishu_ad/nativ/d;->b(Lcom/meishu/sdk/meishu_ad/nativ/d;Z)Z

    .line 535
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 536
    sget-object v0, Lcom/meishu/sdk/core/ad/AdType;->REWARD:Lcom/meishu/sdk/core/ad/AdType;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    move-result v0

    goto :goto_1

    :cond_0
    move v0, v1

    .line 537
    :goto_1
    iput v0, v6, Lcom/meishu/sdk/meishu_ad/nativ/d;->a:I

    .line 538
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    instance-of v0, p3, Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;

    const-string v2, "AdNative"

    const/4 v11, 0x1

    if-eqz v0, :cond_3

    .line 540
    :try_start_1
    sget-object v4, Lcom/meishu/sdk/core/utils/r0;->m:Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/meishu/sdk/core/utils/PackageBean$AdBean;->getReward()Lcom/meishu/sdk/core/utils/PackageBean$RewardConfigBean;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 541
    sget-object v4, Lcom/meishu/sdk/core/utils/r0;->m:Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

    invoke-virtual {v4}, Lcom/meishu/sdk/core/utils/PackageBean$AdBean;->getReward()Lcom/meishu/sdk/core/utils/PackageBean$RewardConfigBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meishu/sdk/core/utils/PackageBean$RewardConfigBean;->getAr()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    :cond_1
    move v4, v1

    :goto_2
    if-eq v4, v11, :cond_2

    .line 542
    iget-object v5, p0, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/meishu/sdk/core/utils/e1;->a(Landroid/content/Context;Lcom/meishu/sdk/core/ad/BaseAdSlot;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getRewardTmpId()I

    move-result v5

    if-ne v5, v11, :cond_2

    .line 543
    const-string v4, "rewardAr change 1. because rewardTmp 1"

    invoke-static {v2, v4}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v11

    goto :goto_3

    :cond_2
    move v9, v4

    goto :goto_3

    :cond_3
    move v9, v1

    .line 544
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rewardAr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mainThread:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    if-ne v5, v7, :cond_4

    move v5, v11

    goto :goto_4

    :cond_4
    move v5, v1

    :goto_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v9, v11, :cond_5

    if-eqz p2, :cond_5

    .line 545
    invoke-interface {p2, v10}, Lcom/meishu/sdk/meishu_ad/m0;->onADLoaded(Ljava/lang/Object;)V

    .line 546
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/meishu/sdk/meishu_ad/v;->n:J

    .line 547
    new-array v7, v11, [Lcom/meishu/sdk/core/webview/s;

    .line 548
    new-instance v2, Lcom/meishu/sdk/meishu_ad/reward/i;

    new-instance v4, Lcom/meishu/sdk/meishu_ad/v$c;

    move-object v5, p0

    move-object v8, p2

    invoke-direct/range {v4 .. v10}, Lcom/meishu/sdk/meishu_ad/v$c;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/nativ/d;[Lcom/meishu/sdk/core/webview/s;Lcom/meishu/sdk/meishu_ad/nativ/a;ILjava/util/ArrayList;)V

    move-object p2, v5

    move-object v10, v7

    invoke-direct {v2, v4}, Lcom/meishu/sdk/meishu_ad/reward/i;-><init>(Lcom/meishu/sdk/meishu_ad/reward/i$c;)V

    .line 549
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getH5Url()Ljava/lang/String;

    move-result-object v5

    .line 550
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v0, :cond_6

    .line 551
    iget-object v4, p2, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    new-instance v8, Lcom/meishu/sdk/meishu_ad/v$d;

    invoke-direct {v8, p0, v2}, Lcom/meishu/sdk/meishu_ad/v$d;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/reward/i;)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/meishu/sdk/core/webview/o;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;Lcom/meishu/sdk/core/webview/n;Lcom/meishu/sdk/core/webview/listener/a;Lcom/meishu/sdk/core/webview/listener/d;)Lcom/meishu/sdk/core/webview/s;

    move-result-object v0

    aput-object v0, v10, v1

    goto :goto_5

    .line 552
    :cond_6
    invoke-virtual {v2, v1}, Lcom/meishu/sdk/meishu_ad/reward/i;->d(Z)V

    .line 553
    :goto_5
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 554
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    move-result-object v0

    new-instance v1, Lcom/meishu/sdk/meishu_ad/v$e;

    invoke-direct {v1, p0, v2}, Lcom/meishu/sdk/meishu_ad/v$e;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/reward/i;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v1, v4, v5}, Lcom/meishu/sdk/core/utils/SdkHandler;->postDelay(Ljava/lang/Runnable;J)V

    .line 555
    iget-object v0, p1, Lcom/meishu/sdk/meishu_ad/nativ/f;->g:Ljava/lang/String;

    .line 556
    new-instance v1, Lcom/meishu/sdk/meishu_ad/v$f;

    move-object v4, p1

    move-object v5, p3

    move-object v6, v2

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/meishu/sdk/meishu_ad/v$f;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/core/ad/b;Lcom/meishu/sdk/meishu_ad/reward/i;)V

    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/a0$i;)V

    goto :goto_6

    :cond_7
    move-object v6, v2

    .line 557
    invoke-virtual {v6, v11}, Lcom/meishu/sdk/meishu_ad/reward/i;->b(Z)V

    :goto_6
    return-void
.end method

.method public final a(Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/meishu_ad/nativ/a;ZZZFF)V
    .locals 12

    .line 558
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 559
    new-instance v2, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;-><init>(Landroid/content/Context;)V

    .line 560
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 561
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meishu/sdk/meishu_ad/v;->n:J

    .line 562
    iget-object v11, p1, Lcom/meishu/sdk/meishu_ad/nativ/f;->g:Ljava/lang/String;

    .line 563
    new-instance v0, Lcom/meishu/sdk/meishu_ad/v$g;

    move-object v1, p0

    move-object v5, p1

    move-object v3, p2

    move v4, p3

    move/from16 v9, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Lcom/meishu/sdk/meishu_ad/v$g;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;Lcom/meishu/sdk/meishu_ad/nativ/a;ZLcom/meishu/sdk/meishu_ad/nativ/f;ZFFZLjava/util/List;)V

    invoke-static {v11, v0}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/a0$i;)V

    return-void

    .line 564
    :cond_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result p3

    const/16 v0, 0xb

    if-eq p3, v0, :cond_2

    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result p3

    const/16 v0, 0xc

    if-eq p3, v0, :cond_2

    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result p3

    const/16 v0, 0xd

    if-eq p3, v0, :cond_2

    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    goto :goto_0

    .line 565
    :cond_1
    const-string p3, "unsupported type: "

    invoke-static {p3}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AdNative"

    invoke-static {p3, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    sget-object p1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->UNSUPPORTED_TYPE:Ljava/lang/Integer;

    const-string p3, "\u4e0d\u652f\u6301\u7684\u5e7f\u544a\u7c7b\u578b"

    invoke-virtual {p0, p2, p3, p1}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 567
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aget-object p3, p3, v0

    new-instance v0, Lcom/meishu/sdk/meishu_ad/v$h;

    move-object v1, p0

    move-object v3, p2

    move/from16 v4, p4

    move-object v5, v2

    move-object v6, v10

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/meishu/sdk/meishu_ad/v$h;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/meishu_ad/nativ/a;ZLcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;Ljava/util/List;)V

    invoke-static {p3, v0}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/a0$i;)V

    return-void
.end method

.method public final a(Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Landroid/view/View;)V
    .locals 10

    .line 204
    new-instance v0, Lcom/meishu/sdk/core/view/DownloadView;

    invoke-direct {v0}, Lcom/meishu/sdk/core/view/DownloadView;-><init>()V

    .line 205
    invoke-virtual {v0, p4, p2}, Lcom/meishu/sdk/core/view/DownloadView;->handleDownloadView(Landroid/view/View;Lcom/meishu/sdk/core/ad/BaseAdSlot;)V

    .line 206
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v7, 0x1

    if-ne v0, v1, :cond_0

    .line 207
    new-instance v8, Lcom/meishu/sdk/core/bquery/i;

    invoke-direct {v8, p4}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/view/View;)V

    .line 208
    iget-object v9, p2, Lcom/meishu/sdk/meishu_ad/nativ/f;->g:Ljava/lang/String;

    .line 209
    new-instance v0, Lcom/meishu/sdk/meishu_ad/e;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/meishu/sdk/meishu_ad/e;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Landroid/view/View;)V

    const v1, 0x5265c00

    .line 210
    invoke-virtual {v8, v9, v1, v7, v0}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;IZLcom/meishu/sdk/core/bquery/h;)V

    return-void

    .line 211
    :cond_0
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v8, v0, v1

    new-instance v0, Lcom/meishu/sdk/meishu_ad/j0;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/meishu/sdk/meishu_ad/j0;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Landroid/view/View;)V

    .line 212
    invoke-static {v8, v0, v7}, Lcom/meishu/sdk/core/cache/a;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/y;Z)V

    return-void
.end method

.method public final a(Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Landroid/view/View;II)V
    .locals 14

    move-object/from16 v3, p4

    .line 327
    sget v0, Lcom/meishu/sdk/R$id;->ms_splash_image_bg:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    .line 328
    sget v0, Lcom/meishu/sdk/R$id;->ms_splash_image:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/view/gif/GifImageView;

    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/v;->r:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 329
    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getScale_type()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    move v5, v0

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-gtz p6, :cond_1

    .line 331
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v9, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move/from16 v8, p6

    :goto_0
    move/from16 v9, p7

    goto/16 :goto_7

    :cond_1
    move/from16 v9, p6

    :goto_1
    if-gtz p7, :cond_2

    .line 332
    :try_start_1
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v10, v0

    goto :goto_2

    :catch_1
    move-exception v0

    move v8, v9

    goto :goto_0

    :cond_2
    move/from16 v10, p7

    .line 333
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v;->r:Lcom/meishu/sdk/core/view/gif/GifImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    sget v0, Lcom/meishu/sdk/R$id;->ms_splash_video:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 335
    iget-wide v6, p0, Lcom/meishu/sdk/meishu_ad/v;->n:J

    const-wide/16 v11, 0x0

    cmp-long v0, v6, v11

    if-nez v0, :cond_3

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/meishu/sdk/meishu_ad/v;->n:J

    goto :goto_4

    :catch_2
    move-exception v0

    :goto_3
    move v8, v9

    move v9, v10

    goto :goto_7

    .line 337
    :cond_3
    :goto_4
    new-instance v11, Lcom/meishu/sdk/core/utils/k1;

    invoke-direct {v11}, Lcom/meishu/sdk/core/utils/k1;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v0

    aget-object v12, v0, v1

    const/16 v0, 0x7d0

    move-object/from16 v8, p2

    invoke-virtual {v8, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getMaterialTimeout(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meishu/sdk/meishu_ad/v;->a(I)I

    move-result v13

    new-instance v0, Lcom/meishu/sdk/meishu_ad/u;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, p0

    move-object/from16 v2, p3

    move-object v6, v4

    move v7, v5

    move-object v4, p1

    move-object/from16 v5, p5

    :try_start_3
    invoke-direct/range {v0 .. v10}, Lcom/meishu/sdk/meishu_ad/u;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/meishu_ad/splash/a;Landroid/view/View;Landroid/widget/ImageView;ILcom/meishu/sdk/meishu_ad/splash/d;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v4, v6

    move v5, v7

    .line 338
    :try_start_4
    iput-object v0, v11, Lcom/meishu/sdk/core/utils/k1;->a:Lcom/meishu/sdk/core/utils/x;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 339
    :try_start_5
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/meishu/sdk/core/utils/i1;

    invoke-direct {v2, v11}, Lcom/meishu/sdk/core/utils/i1;-><init>(Lcom/meishu/sdk/core/utils/k1;)V

    if-lez v13, :cond_4

    int-to-long v6, v13

    goto :goto_5

    :cond_4
    const-wide/16 v6, 0x7d0

    :goto_5
    invoke-virtual {v0, v2, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    .line 340
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 341
    :goto_6
    new-instance v0, Lcom/meishu/sdk/core/utils/j1;

    invoke-direct {v0, v11}, Lcom/meishu/sdk/core/utils/j1;-><init>(Lcom/meishu/sdk/core/utils/k1;)V

    sget-object v2, Lcom/meishu/sdk/core/utils/a0;->a:Lokhttp3/OkHttpClient;

    .line 342
    new-instance v2, Lcom/meishu/sdk/core/utils/c0;

    invoke-direct {v2, v0, v5, v9, v10}, Lcom/meishu/sdk/core/utils/c0;-><init>(Lcom/meishu/sdk/core/utils/x;III)V

    invoke-static {v12, v2}, Lcom/meishu/sdk/core/cache/c;->a(Ljava/lang/String;Lcom/meishu/sdk/core/cache/d;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v4, v6

    move v5, v7

    goto :goto_3

    .line 343
    :goto_7
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/v;->r:Lcom/meishu/sdk/core/view/gif/GifImageView;

    sget-object v2, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p0

    move-object v7, p1

    move-object/from16 v6, p2

    move-object/from16 v2, p3

    invoke-virtual/range {v1 .. v9}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Landroid/widget/ImageView;Landroid/widget/ImageView;ILcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;II)V

    .line 344
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8
    return-void
.end method

.method public final a(Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/core/bquery/i;Landroid/view/View;ZII)V
    .locals 19

    move-object/from16 v8, p4

    .line 429
    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v14, 0x0

    invoke-direct {v11, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    const/4 v0, 0x4

    .line 430
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 431
    sget v0, Lcom/meishu/sdk/R$id;->ms_splash_image:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 432
    sget v0, Lcom/meishu/sdk/R$id;->ms_splash_image_bg:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/ImageView;

    .line 433
    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 434
    :try_start_0
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lcom/meishu/sdk/meishu_ad/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p6

    move/from16 v5, p8

    move/from16 v6, p9

    :try_start_1
    invoke-direct/range {v0 .. v7}, Lcom/meishu/sdk/meishu_ad/z;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/c;IILandroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v3

    const/16 v3, 0x9c4

    .line 435
    :try_start_2
    invoke-virtual {v2, v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getMaterialTimeout(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/meishu/sdk/meishu_ad/v;->a(I)I

    move-result v3

    int-to-long v3, v3

    .line 436
    invoke-virtual {v9, v0, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v6, v3

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v2, p2

    .line 437
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 438
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/meishu/sdk/meishu_ad/v;->n:J

    .line 439
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getVideo_cover()Ljava/lang/String;

    move-result-object v9

    .line 440
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v15, 0x0

    const-string v10, "video load error,def isnull"

    const/4 v13, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 441
    iput v3, v1, Lcom/meishu/sdk/meishu_ad/v;->v:I

    .line 442
    iget v0, v1, Lcom/meishu/sdk/meishu_ad/v;->u:I

    if-ne v0, v3, :cond_0

    iget v0, v1, Lcom/meishu/sdk/meishu_ad/v;->w:I

    if-ne v0, v3, :cond_0

    .line 443
    sget-object v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    invoke-virtual {v1, v6, v10, v0}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    move-wide/from16 v17, v15

    move v15, v3

    goto :goto_4

    .line 444
    :cond_1
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/v;->q:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    sget v4, Lcom/meishu/sdk/R$id;->ms_splash_image_bg:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 445
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getScale_type()I

    .line 446
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-gtz p8, :cond_2

    .line 447
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move v5, v4

    goto :goto_2

    :cond_2
    move/from16 v5, p8

    :goto_2
    if-gtz p9, :cond_3

    .line 448
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_3

    :cond_3
    move/from16 v0, p9

    .line 449
    :goto_3
    iget-wide v3, v1, Lcom/meishu/sdk/meishu_ad/v;->n:J

    cmp-long v3, v3, v15

    if-nez v3, :cond_4

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/meishu/sdk/meishu_ad/v;->n:J

    .line 451
    :cond_4
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getVideo_cover()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-wide/from16 v17, v15

    const/4 v15, 0x2

    goto :goto_4

    :cond_5
    move v6, v0

    .line 452
    new-instance v0, Lcom/meishu/sdk/meishu_ad/d0;

    move-object/from16 v4, p1

    move-object/from16 v7, p6

    move-object v3, v2

    move-wide/from16 v17, v15

    const/4 v15, 0x2

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/meishu/sdk/meishu_ad/d0;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;IILandroid/view/View;)V

    move-object v2, v3

    move-object v6, v4

    invoke-static {v9, v0, v13}, Lcom/meishu/sdk/core/cache/a;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/y;Z)V

    .line 453
    :goto_4
    :try_start_3
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDefImage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/f0;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/v;->x:[B

    if-nez v0, :cond_7

    .line 454
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDefImage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 455
    new-instance v3, Lcom/meishu/sdk/meishu_ad/c0;

    invoke-direct {v3, v1, v6}, Lcom/meishu/sdk/meishu_ad/c0;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/a;)V

    .line 456
    invoke-static {v0, v3, v13}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/y;Z)V

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    .line 457
    :cond_6
    iput v15, v1, Lcom/meishu/sdk/meishu_ad/v;->w:I

    .line 458
    iget v0, v1, Lcom/meishu/sdk/meishu_ad/v;->u:I

    if-ne v0, v15, :cond_8

    iget v0, v1, Lcom/meishu/sdk/meishu_ad/v;->v:I

    if-ne v0, v15, :cond_8

    .line 459
    sget-object v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    invoke-virtual {v1, v6, v10, v0}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_6

    .line 460
    :cond_7
    iput v13, v1, Lcom/meishu/sdk/meishu_ad/v;->w:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    .line 461
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 462
    :cond_8
    :goto_6
    iget v0, v1, Lcom/meishu/sdk/meishu_ad/v;->f:I

    .line 463
    iget-object v15, v2, Lcom/meishu/sdk/meishu_ad/nativ/f;->g:Ljava/lang/String;

    .line 464
    new-instance v1, Lcom/meishu/sdk/meishu_ad/a0;

    move-object/from16 v3, p3

    move-object/from16 v13, p5

    move-object/from16 v7, p6

    move/from16 v10, p7

    move/from16 v9, p9

    move-object v4, v2

    move-object v5, v8

    move-object/from16 v2, p0

    move/from16 v8, p8

    invoke-direct/range {v1 .. v13}, Lcom/meishu/sdk/meishu_ad/a0;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/meishu_ad/splash/a;Landroid/view/View;IIZLjava/util/concurrent/atomic/AtomicBoolean;Landroid/widget/ImageView;Lcom/meishu/sdk/core/bquery/i;)V

    .line 465
    :try_start_4
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/meishu/sdk/core/bquery/g;->a(Landroid/content/Context;)V

    .line 466
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 467
    invoke-static {v2}, Lcom/meishu/sdk/core/bquery/g;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    .line 468
    invoke-static {v2, v15, v3}, Lcom/meishu/sdk/core/bquery/g;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 469
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_7

    :cond_9
    move-object v3, v2

    goto :goto_7

    :catchall_3
    move-exception v0

    goto/16 :goto_8

    :cond_a
    :goto_7
    const v2, 0x5265c00

    if-eqz v3, :cond_c

    .line 470
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 472
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v6, v6, v17

    if-lez v6, :cond_b

    int-to-long v6, v2

    cmp-long v4, v4, v6

    if-gez v4, :cond_b

    .line 473
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    move-result-object v0

    new-instance v2, Lcom/meishu/sdk/core/bquery/a;

    invoke-direct {v2, v13, v1, v15, v3}, Lcom/meishu/sdk/core/bquery/a;-><init>(Lcom/meishu/sdk/core/bquery/e;Lcom/meishu/sdk/core/bquery/h;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_9

    .line 474
    :cond_b
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 475
    :cond_c
    invoke-static {}, Lcom/meishu/sdk/core/utils/r0;->a()I

    move-result v3

    if-lez v3, :cond_e

    if-nez v0, :cond_e

    .line 476
    invoke-static {}, Lcom/meishu/sdk/core/utils/r0;->a()I

    move-result v0

    if-lez v0, :cond_e

    .line 477
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 478
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "m3u8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 479
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "http"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 480
    invoke-static {}, Lcom/meishu/sdk/core/utils/r0;->a()I

    move-result v0

    new-instance v2, Lcom/meishu/sdk/core/bquery/b;

    invoke-direct {v2, v13, v1}, Lcom/meishu/sdk/core/bquery/b;-><init>(Lcom/meishu/sdk/core/bquery/e;Lcom/meishu/sdk/core/bquery/h;)V

    .line 481
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 482
    invoke-virtual {v2}, Lcom/meishu/sdk/core/bquery/b;->a()V

    goto :goto_9

    .line 483
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 484
    sget-object v5, Lcom/meishu/sdk/core/utils/h0;->a:Ljava/util/concurrent/ExecutorService;

    .line 485
    sget-object v5, Lcom/meishu/sdk/core/utils/h0$b;->a:Lcom/meishu/sdk/core/utils/h0;

    .line 486
    new-instance v6, Lcom/meishu/sdk/meishu_ad/view/player/a;

    const/4 v7, 0x0

    move/from16 p3, v0

    move-object/from16 p6, v2

    move-wide/from16 p4, v3

    move-object/from16 p1, v6

    move/from16 p2, v7

    move-object/from16 p7, v15

    invoke-direct/range {p1 .. p7}, Lcom/meishu/sdk/meishu_ad/view/player/a;-><init>(IIJLcom/meishu/sdk/meishu_ad/view/player/c$a;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/utils/h0;->a(Ljava/lang/Runnable;)Z

    goto :goto_9

    :cond_e
    move-object v0, v15

    .line 487
    new-instance v3, Lcom/meishu/sdk/core/bquery/c;

    invoke-direct {v3, v13, v1}, Lcom/meishu/sdk/core/bquery/c;-><init>(Lcom/meishu/sdk/core/bquery/e;Lcom/meishu/sdk/core/bquery/h;)V

    invoke-virtual {v13, v0, v2, v14, v3}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;IZLcom/meishu/sdk/core/bquery/h;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_9

    .line 488
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 489
    const-string v0, "mediaPlayer loadVideo error"

    invoke-virtual {v1, v14, v0}, Lcom/meishu/sdk/meishu_ad/a0;->onFail(ILjava/lang/String;)V

    :goto_9
    return-void
.end method

.method public final a(Lcom/meishu/sdk/meishu_ad/splash/c;)V
    .locals 11

    .line 1
    :try_start_0
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    if-eqz p1, :cond_9

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v;->q:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getSkipBtnLocation()I

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v;->q:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    sget v1, Lcom/meishu/sdk/R$id;->ms_skipView_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/meishu/sdk/meishu_ad/splash/e;->b(Landroid/content/Context;)I

    move-result v1

    .line 6
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    const/16 v5, 0xa

    if-eqz p1, :cond_7

    const/4 v6, 0x1

    const/16 v7, 0xc

    if-eq p1, v6, :cond_5

    const/4 v4, 0x2

    const/16 v6, 0x9

    if-eq p1, v4, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    goto/16 :goto_2

    .line 7
    :cond_2
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 8
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/meishu/sdk/meishu_ad/splash/e;->c(Landroid/content/Context;)I

    move-result p1

    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 10
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_3

    .line 11
    :cond_3
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 12
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 13
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/meishu/sdk/meishu_ad/splash/e;->a(Landroid/content/Context;)I

    move-result p1

    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 14
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    iget v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, p1, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 16
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/v;->q:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    sget v4, Lcom/meishu/sdk/R$id;->ms_download_layer_textview:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 17
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 18
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 19
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/v;->q:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 20
    invoke-static {v3}, Lcom/meishu/sdk/meishu_ad/splash/e;->a(Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_4

    goto :goto_0

    .line 21
    :cond_4
    :try_start_1
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    int-to-float v6, v5

    invoke-static {v3, v6}, Lcom/meishu/sdk/core/utils/m;->a(Landroid/content/Context;F)F

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    float-to-int v5, v3

    goto :goto_0

    :catch_1
    move-exception v3

    .line 22
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    int-to-double v5, v5

    int-to-double v7, v1

    const-wide/high16 v9, 0x4010000000000000L    # 4.0

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    mul-double/2addr v7, v9

    add-double/2addr v7, v5

    double-to-int v1, v7

    .line 23
    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 24
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 25
    :cond_5
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 26
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 27
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 28
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/meishu/sdk/meishu_ad/splash/e;->a(Landroid/content/Context;)I

    move-result p1

    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 29
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/meishu/sdk/platform/ms/splash/k;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 30
    iget p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v1, v3}, Lcom/meishu/sdk/core/utils/m;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr p1, v1

    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 31
    :cond_6
    iget p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v1, v3}, Lcom/meishu/sdk/core/utils/m;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr p1, v1

    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 32
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, p1, v1, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 33
    :cond_7
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 34
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 35
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/meishu/sdk/meishu_ad/splash/e;->c(Landroid/content/Context;)I

    move-result p1

    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 36
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 37
    :cond_8
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 38
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_4
    return-void
.end method

.method public final a(Lcom/meishu/sdk/meishu_ad/splash/c;Landroid/widget/ImageView;Landroid/widget/ImageView;ILcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;II)V
    .locals 12

    const-string v1, "load res error defImage is null,cid="

    const/4 v0, 0x1

    .line 346
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/v;->s:Z

    .line 347
    iget-object v0, p1, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 348
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 349
    const-string v2, "\u52a0\u8f7d\u5931\u8d25"

    .line 350
    :try_start_0
    iget-object v0, p1, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 351
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x895443

    invoke-static {v0, v4, v3}, Lcom/meishu/sdk/core/utils/p1;->c([Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 352
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 353
    :goto_0
    invoke-virtual/range {p5 .. p5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",cid="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;ILjava/lang/String;)V

    .line 354
    :cond_0
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDefImage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/f0;->a(Ljava/lang/String;)[B

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v10, :cond_1

    const/4 v11, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 355
    :try_start_2
    invoke-virtual/range {v1 .. v11}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Landroid/widget/ImageView;Landroid/widget/ImageView;ILcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;II[BZ)V

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    :goto_1
    move-object p2, v0

    goto :goto_2

    :cond_1
    move-object/from16 v7, p6

    .line 356
    invoke-virtual/range {p5 .. p5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0, v2}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;ILjava/lang/String;)V

    .line 357
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v7, p2, p3}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v7, p6

    goto :goto_1

    .line 358
    :goto_2
    invoke-virtual/range {p5 .. p5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "load res error ,cid="

    invoke-static {v2}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",throwable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v1, v3}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;ILjava/lang/String;)V

    .line 359
    invoke-static {v2}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual/range {p5 .. p5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v7, p3, v0}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 360
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public final a(Lcom/meishu/sdk/meishu_ad/splash/c;Landroid/widget/ImageView;Landroid/widget/ImageView;ILcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;II[BZ)V
    .locals 13

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v0, p9

    move/from16 v9, p10

    const-string v1, "load res error defImage bitmap is null,cid="

    const/4 v10, 0x0

    move-object v4, p2

    .line 361
    :try_start_0
    invoke-virtual {p2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    array-length v2, v0

    invoke-static {v0, v10, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    move/from16 v2, p4

    move/from16 v3, p7

    move/from16 v5, p8

    .line 363
    invoke-static {v2, v0, v3, v5}, Lcom/meishu/sdk/meishu_ad/v;->a(ILandroid/graphics/Bitmap;II)[Landroid/graphics/Bitmap;

    move-result-object v1

    .line 364
    array-length v3, v1

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ne v3, v11, :cond_0

    .line 365
    aget-object v3, v1, v10

    .line 366
    aget-object v6, v1, v12

    move-object v1, p0

    move-object/from16 v5, p3

    .line 367
    invoke-virtual/range {v1 .. v6}, Lcom/meishu/sdk/meishu_ad/v;->a(ILandroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :cond_1
    move v1, v11

    .line 368
    :goto_1
    invoke-static {v7, v1, v9}, Lcom/meishu/sdk/core/utils/l1;->a(Lcom/meishu/sdk/core/ad/BaseAdSlot;IZ)V

    .line 369
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/meishu/sdk/core/ad/splash/c;->setWidth(Ljava/lang/Integer;)V

    .line 370
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/splash/c;->setHeight(Ljava/lang/Integer;)V

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meishu/sdk/meishu_ad/v;->p:J

    .line 372
    iget v0, p0, Lcom/meishu/sdk/meishu_ad/v;->A:I

    if-eq v0, v12, :cond_2

    move v10, v12

    :cond_2
    invoke-static {v10, v8, p1}, Lcom/meishu/sdk/meishu_ad/v;->a(ZLcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/c;)V

    .line 373
    iput-boolean v12, p0, Lcom/meishu/sdk/meishu_ad/v;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :try_start_1
    invoke-virtual {v7}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppendInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->getResLoadSuccess()Lcom/meishu/sdk/core/utils/b;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/meishu/sdk/core/utils/b;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 375
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 376
    :goto_2
    iget v0, p0, Lcom/meishu/sdk/meishu_ad/v;->f:I

    if-ne v0, v12, :cond_3

    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/v;->g:Z

    if-eqz v0, :cond_8

    .line 377
    :cond_3
    invoke-virtual {v7}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getMonitorUrl()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/v;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/i0;->b([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setMonitorUrl([Ljava/lang/String;)V

    .line 378
    invoke-virtual {v7}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v0

    if-ne v0, v11, :cond_4

    .line 379
    invoke-virtual {v7}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getMonitorUrl()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/i0;->b([Ljava/lang/String;)V

    .line 380
    :cond_4
    invoke-virtual {p0, p1, v8}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/a;)V

    goto/16 :goto_6

    .line 381
    :cond_5
    invoke-virtual {v7}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;ILjava/lang/String;)V

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v8, v0, v3}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v9, :cond_8

    .line 383
    invoke-virtual {v7}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDefImage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/meishu/sdk/core/utils/f0;->a:Landroid/renderscript/RenderScript;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 384
    :try_start_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_6

    .line 385
    :cond_6
    const-string v1, ".jpg"

    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/f0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/meishu/sdk/core/utils/f0;->b()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 388
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    .line 389
    :cond_7
    :goto_3
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    .line 390
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    .line 391
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_6
    return-void
.end method

.method public final a(Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/a;)V
    .locals 7

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",nativeAd.getAdView()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",isSplashStartRender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/meishu/sdk/meishu_ad/v;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdNative"

    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_9

    .line 121
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/v;->i:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/v;->i:Z

    .line 123
    check-cast p2, Lcom/meishu/sdk/platform/ms/splash/g;

    const v1, 0x895442

    .line 124
    :try_start_0
    iget-boolean v2, p2, Lcom/meishu/sdk/platform/ms/splash/g;->j:Z

    if-eqz v2, :cond_0

    goto/16 :goto_7

    .line 125
    :cond_0
    iput-boolean v0, p2, Lcom/meishu/sdk/platform/ms/splash/g;->j:Z

    .line 126
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p2, Lcom/meishu/sdk/platform/ms/splash/g;->i:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 127
    :try_start_1
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 128
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 129
    const-string v5, "stepNum"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v5, "msg"

    const-string v6, "onAdReady add View"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/ms/splash/g;->a()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 132
    const-string v6, "creativeType"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_5

    :catch_0
    move-exception v3

    goto :goto_2

    .line 133
    :cond_1
    :goto_0
    iget-object v5, p2, Lcom/meishu/sdk/platform/ms/splash/g;->i:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, "adView"

    if-eqz v5, :cond_2

    .line 134
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 135
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :goto_1
    iget-object v5, p2, Lcom/meishu/sdk/platform/ms/splash/g;->a:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 137
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 138
    :goto_3
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/ms/splash/g;->onADExposure()V

    .line 139
    iget-object v3, p2, Lcom/meishu/sdk/platform/ms/splash/g;->i:Landroid/view/View;

    if-eqz v3, :cond_7

    .line 140
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 141
    iget-object v4, p2, Lcom/meishu/sdk/platform/ms/splash/g;->i:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 142
    :cond_3
    new-instance v4, Lcom/meishu/sdk/core/view/TouchAdContainer;

    iget-object v5, p2, Lcom/meishu/sdk/platform/ms/splash/g;->i:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/meishu/sdk/core/view/TouchAdContainer;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    :try_start_4
    sget-object v5, Lcom/meishu/sdk/core/utils/r0;->m:Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/meishu/sdk/core/utils/PackageBean$AdBean;->getSplash()Lcom/meishu/sdk/core/utils/PackageBean$SplashConfigBean;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 144
    sget-object v5, Lcom/meishu/sdk/core/utils/r0;->m:Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

    invoke-virtual {v5}, Lcom/meishu/sdk/core/utils/PackageBean$AdBean;->getSplash()Lcom/meishu/sdk/core/utils/PackageBean$SplashConfigBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meishu/sdk/core/utils/PackageBean$SplashConfigBean;->getNie()I

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    :cond_4
    if-eq v2, v0, :cond_5

    .line 145
    :try_start_5
    invoke-virtual {v4}, Lcom/meishu/sdk/core/view/TouchAdContainer;->setInterceptDownEvent()V

    .line 146
    :cond_5
    new-instance v0, Lcom/meishu/sdk/core/view/TouchPositionListener;

    invoke-direct {v0, p1}, Lcom/meishu/sdk/core/view/TouchPositionListener;-><init>(Lcom/meishu/sdk/core/ad/IAd;)V

    invoke-virtual {v4, v0}, Lcom/meishu/sdk/core/view/TouchAdContainer;->setTouchPositionListener(Lcom/meishu/sdk/core/view/TouchPositionListener;)V

    .line 147
    iget-object v0, p2, Lcom/meishu/sdk/platform/ms/splash/g;->i:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v3, :cond_6

    .line 148
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 149
    :cond_6
    iput-object v4, p2, Lcom/meishu/sdk/platform/ms/splash/g;->i:Landroid/view/View;

    .line 150
    iput-object v4, p1, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    .line 151
    iget-object p2, p2, Lcom/meishu/sdk/platform/ms/splash/g;->d:Lcom/meishu/sdk/platform/ms/splash/b;

    if-eqz p2, :cond_8

    .line 152
    invoke-virtual {p2, v4}, Lcom/meishu/sdk/core/ad/a;->setAdView(Landroid/view/View;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 153
    :cond_7
    :try_start_6
    iget-object p2, p1, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 154
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    move-result-object p2

    const-string v0, "adView \u4e3anull"

    invoke-static {p2, v1, v0}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catch_2
    move-exception p2

    .line 155
    :try_start_7
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 156
    :cond_8
    :goto_4
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/splash/c;->c()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_7

    .line 157
    :goto_5
    :try_start_8
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 158
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5e7f\u544a\u52a0\u8f7d\u6210\u529f\uff0c\u52a0\u8f7d\u5230\u5bb9\u5668\u65f6\u53d1\u751f\u5f02\u5e38"

    invoke-static {p1, v1, v0}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;ILjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 160
    :goto_6
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_7
    return-void
.end method

.method public final a(Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/platform/ms/splash/a;Landroid/view/View;ZLandroid/view/ViewGroup;)V
    .locals 11

    const/4 v7, 0x2

    .line 161
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 162
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 163
    const-string v3, "stepNum"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v3, "msg"

    const-string v5, "start create layout"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v3, "creativeType"

    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v3, p1, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 167
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    if-eqz p7, :cond_0

    .line 169
    :try_start_1
    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_9

    .line 170
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 171
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAd_type()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAd_type()I

    move-result v2

    goto :goto_2

    :cond_1
    sget-object v2, Lcom/meishu/sdk/core/ad/AdType;->SPLASH:Lcom/meishu/sdk/core/ad/AdType;

    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    move-result v2

    .line 172
    :goto_2
    sget-object v3, Lcom/meishu/sdk/core/ad/AdType;->SPLASH:Lcom/meishu/sdk/core/ad/AdType;

    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    move-result v3

    const/4 v5, 0x0

    if-ne v2, v3, :cond_9

    .line 173
    sget v2, Lcom/meishu/sdk/R$layout;->ms_splash_ad_layout:I

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/v;->q:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 174
    iput-object v0, p1, Lcom/meishu/sdk/meishu_ad/splash/c;->e:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 175
    iput-object v0, p1, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    .line 176
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/v;->B:Lcom/meishu/sdk/meishu_ad/splash/l;

    .line 177
    iput-object v0, v2, Lcom/meishu/sdk/meishu_ad/splash/l;->c:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 178
    new-instance v2, Lcom/meishu/sdk/core/bquery/i;

    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v;->q:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    invoke-direct {v2, v0}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/view/View;)V

    .line 179
    invoke-virtual/range {p0 .. p1}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;)V

    .line 180
    iget-object v8, p0, Lcom/meishu/sdk/meishu_ad/v;->q:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    new-instance v0, Lcom/meishu/sdk/meishu_ad/v$i;

    move-object v1, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/meishu/sdk/meishu_ad/v$i;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/core/bquery/i;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/a;Landroid/view/View;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 181
    invoke-virtual {p4}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_width()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 182
    invoke-virtual {p4}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object v3

    check-cast v3, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    invoke-virtual {v3}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz p7, :cond_3

    if-gtz v0, :cond_2

    .line 183
    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getWidth()I

    move-result v0

    :cond_2
    if-gtz v3, :cond_3

    .line 184
    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 185
    :cond_3
    iget-object v4, p0, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    if-lez v0, :cond_5

    .line 186
    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v0, v5, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    move v9, v0

    goto :goto_5

    .line 187
    :cond_5
    :goto_4
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_3

    :goto_5
    if-lez v3, :cond_7

    .line 188
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v3, v0, :cond_6

    goto :goto_7

    :cond_6
    :goto_6
    move v8, v3

    goto :goto_8

    .line 189
    :cond_7
    :goto_7
    iget v3, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_6

    .line 190
    :goto_8
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v0

    if-ne v0, v7, :cond_8

    .line 191
    iget-object v5, p0, Lcom/meishu/sdk/meishu_ad/v;->q:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    invoke-virtual {p4}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->getVideoIsMute()Z

    move-result v0

    move-object v1, p0

    move-object v4, p1

    move-object v3, p2

    move-object/from16 v7, p5

    move-object v6, v2

    move v10, v8

    move-object v2, p3

    move v8, v0

    invoke-virtual/range {v1 .. v10}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/core/bquery/i;Landroid/view/View;ZII)V

    goto/16 :goto_b

    .line 192
    :cond_8
    iget-object v5, p0, Lcom/meishu/sdk/meishu_ad/v;->q:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    move-object v1, p0

    move-object v4, p1

    move-object v3, p2

    move-object v2, p3

    move-object/from16 v6, p5

    move v7, v9

    invoke-virtual/range {v1 .. v8}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Landroid/view/View;II)V

    goto :goto_b

    .line 193
    :cond_9
    sget-object v3, Lcom/meishu/sdk/core/ad/AdType;->FEED:Lcom/meishu/sdk/core/ad/AdType;

    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    move-result v3

    if-ne v2, v3, :cond_a

    .line 194
    sget v2, Lcom/meishu/sdk/R$layout;->ms_layout_native_splash:I

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    iput-object v6, p0, Lcom/meishu/sdk/meishu_ad/v;->q:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 195
    iput-object v6, p1, Lcom/meishu/sdk/meishu_ad/splash/c;->e:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 196
    iput-object v6, p1, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    .line 197
    new-instance v0, Lcom/meishu/sdk/meishu_ad/v$j;

    move-object v1, p0

    move-object v3, p1

    move-object v2, p2

    move-object v4, p3

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/meishu/sdk/meishu_ad/v$j;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/a;Landroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 198
    iget-object v5, p0, Lcom/meishu/sdk/meishu_ad/v;->q:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    move-object v1, p0

    move-object v4, p1

    move-object v3, p2

    move-object v2, p3

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Landroid/view/View;)V

    goto :goto_b

    .line 199
    :cond_a
    const-string v0, "unsupported type"

    sget-object v2, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->UNSUPPORTED_TYPE:Ljava/lang/Integer;

    invoke-virtual {p0, p3, v0, v2}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_b

    .line 200
    :goto_9
    :try_start_2
    iget-object v0, p1, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 201
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const v4, 0x895441

    invoke-static {v0, v4, v3}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 203
    :goto_a
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b
    return-void
.end method

.method public a(Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/platform/ms/splash/a;Landroid/view/View;Z)V
    .locals 10

    .line 96
    :try_start_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/v;->d:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    :goto_0
    new-instance v2, Lcom/meishu/sdk/meishu_ad/splash/c;

    invoke-direct {v2, p1, p3, p5}, Lcom/meishu/sdk/meishu_ad/splash/c;-><init>(Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/platform/ms/splash/a;Z)V

    .line 99
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    move-object v1, p0

    move-object v4, p2

    goto/16 :goto_6

    :cond_1
    const/4 v0, 0x0

    .line 100
    iput v0, p0, Lcom/meishu/sdk/meishu_ad/v;->f:I

    .line 101
    sget-object v1, Lcom/meishu/sdk/core/utils/r0;->m:Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/PackageBean$AdBean;->getSplash()Lcom/meishu/sdk/core/utils/PackageBean$SplashConfigBean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 102
    sget-object v1, Lcom/meishu/sdk/core/utils/r0;->m:Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/PackageBean$AdBean;->getSplash()Lcom/meishu/sdk/core/utils/PackageBean$SplashConfigBean;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 103
    :goto_1
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getRs()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 104
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getRs()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/meishu/sdk/meishu_ad/v;->A:I

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 105
    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/PackageBean$SplashConfigBean;->getRs()I

    move-result v3

    iput v3, p0, Lcom/meishu/sdk/meishu_ad/v;->A:I

    .line 106
    :cond_4
    :goto_2
    iget v3, p0, Lcom/meishu/sdk/meishu_ad/v;->A:I

    const/4 v9, 0x1

    if-eq v3, v9, :cond_5

    .line 107
    iput v9, p0, Lcom/meishu/sdk/meishu_ad/v;->f:I

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_6

    .line 108
    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/PackageBean$SplashConfigBean;->getAr()I

    move-result v1

    iput v1, p0, Lcom/meishu/sdk/meishu_ad/v;->f:I

    .line 109
    :cond_6
    :goto_3
    :try_start_1
    invoke-virtual {p3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object v1

    check-cast v1, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/c;->getT1()J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    const-wide/16 v3, 0x0

    .line 110
    :goto_4
    iput-wide v3, p0, Lcom/meishu/sdk/meishu_ad/v;->l:J

    .line 111
    :try_start_2
    invoke-virtual {p3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object v1

    check-cast v1, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->getFetchDelay()I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move v1, v0

    .line 112
    :goto_5
    iput v1, p0, Lcom/meishu/sdk/meishu_ad/v;->m:I

    .line 113
    new-instance v1, Lcom/meishu/sdk/meishu_ad/v$b;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    move-object v3, v2

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/meishu/sdk/meishu_ad/v$b;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/platform/ms/splash/a;Landroid/view/View;Z)V

    move-object p1, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    .line 114
    iget-object p2, v2, Lcom/meishu/sdk/meishu_ad/splash/c;->i:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget p1, v1, Lcom/meishu/sdk/meishu_ad/v;->f:I

    if-ne p1, v9, :cond_7

    const/4 v8, 0x0

    .line 116
    invoke-virtual/range {v1 .. v8}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/platform/ms/splash/a;Landroid/view/View;ZLandroid/view/ViewGroup;)V

    .line 117
    :cond_7
    iget p1, v1, Lcom/meishu/sdk/meishu_ad/v;->A:I

    if-ne p1, v9, :cond_8

    move v0, v9

    :cond_8
    invoke-static {v0, v4, v2}, Lcom/meishu/sdk/meishu_ad/v;->a(ZLcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/c;)V

    return-void

    .line 118
    :goto_6
    const-string p1, "AdNative"

    const-string p2, "empty srcUrls"

    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object p1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->EMPTY_SRC_URL:Ljava/lang/Integer;

    const-string p2, "\u56fe\u7247url\u4e3a\u7a7a"

    invoke-virtual {p0, v4, p2, p1}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
