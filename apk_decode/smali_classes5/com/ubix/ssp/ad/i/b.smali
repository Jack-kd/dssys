.class public Lcom/ubix/ssp/ad/i/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/ubix/ssp/ad/i/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/ubix/ssp/open/nativee/NativeAd;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/ubix/ssp/ad/i/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Lcom/ubix/ssp/ad/d/l;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/i/c;Lcom/ubix/ssp/open/nativee/NativeAd;Lcom/ubix/ssp/ad/i/a;Lcom/ubix/ssp/ad/d/l;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/i/c;",
            "Lcom/ubix/ssp/open/nativee/NativeAd;",
            "Lcom/ubix/ssp/ad/i/a;",
            "Lcom/ubix/ssp/ad/d/l;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/i/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/i/b;->e:I

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/i/b;->a:Ljava/lang/ref/SoftReference;

    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/b;->b:Ljava/lang/ref/SoftReference;

    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/b;->c:Ljava/lang/ref/SoftReference;

    iput-object p5, p0, Lcom/ubix/ssp/ad/i/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p4, p0, Lcom/ubix/ssp/ad/i/b;->f:Lcom/ubix/ssp/ad/d/l;

    return-void
.end method

.method private a()Lcom/ubix/ssp/open/nativee/NativeAd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b;->b:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/open/nativee/NativeAd;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/open/nativee/NativeAd;
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ubix/ssp/ad/i/b;->a()Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object p0

    return-object p0
.end method

.method private a(I)V
    .locals 18

    .line 3
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/ubix/ssp/ad/i/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_11

    const-string v0, "native_ad_bean_key"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-direct/range {p0 .. p1}, Lcom/ubix/ssp/ad/i/b;->b(I)I

    move-result v4

    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, v1, Lcom/ubix/ssp/ad/i/b;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v0, v4}, Lcom/ubix/ssp/ad/i/c;->n(I)Lcom/ubix/ssp/ad/d/a;

    move-result-object v5

    const-string v0, "native_core_view"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    const-string v6, "native_images_array_key"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    const-string v7, "native_videos_array_key"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/ubix/ssp/ad/b;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v3, :cond_11

    if-nez v9, :cond_1

    goto/16 :goto_6

    :cond_1
    const/4 v7, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v10, v7

    goto :goto_1

    :cond_2
    move-object v10, v7

    :goto_0
    if-eqz v6, :cond_3

    :try_start_1
    check-cast v6, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v6

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    iget v0, v5, Lcom/ubix/ssp/ad/d/a;->p:I

    const/16 v6, 0x7d5

    const-string v11, "IMAGE_URL"

    const/4 v12, 0x2

    const/4 v13, 0x0

    if-ne v0, v6, :cond_7

    if-eqz v10, :cond_11

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_6

    :cond_4
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_6

    if-eq v6, v12, :cond_5

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v0, v13

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v0, v7

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v0, v12

    goto :goto_3

    :cond_5
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v0, v13

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v0, v7

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v0, v12

    goto :goto_3

    :cond_6
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v0, v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v0, v7

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v0, v12

    :goto_3
    invoke-virtual {v8, v11, v0}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    const/16 v6, 0x7dd

    if-eq v0, v6, :cond_9

    const/16 v6, 0x7dc

    if-eq v0, v6, :cond_9

    const/16 v6, 0x7de

    if-eq v0, v6, :cond_9

    const/16 v6, 0x7db

    if-ne v0, v6, :cond_8

    goto :goto_4

    :cond_8
    if-eqz v10, :cond_d

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    :goto_4
    if-eqz v10, :cond_a

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v11, v0}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_a
    const-string v0, "VIDEO_URL"

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_b

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v0, v6}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v8, v11}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_c

    new-array v6, v13, [Ljava/lang/String;

    invoke-virtual {v8, v11, v6}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v8, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_d

    new-array v6, v13, [Ljava/lang/String;

    invoke-virtual {v8, v0, v6}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_d
    :goto_5
    iget-object v0, v5, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->L:Lcom/ubix/ssp/ad/e/y/a/a$b$f;

    if-eqz v0, :cond_e

    iget v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$f;->b:I

    if-eqz v0, :cond_e

    const-string v6, "RENDER_MODE"

    invoke-virtual {v8, v6, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, v5, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->L:Lcom/ubix/ssp/ad/e/y/a/a$b$f;

    iget v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$f;->c:I

    int-to-float v0, v0

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v0, v6

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v0, v6

    const-string v6, "SCALE_IGNORE_PERCENT"

    invoke-virtual {v8, v6, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v0, v5, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->L:Lcom/ubix/ssp/ad/e/y/a/a$b$f;

    iget v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$f;->d:I

    const-string v6, "SCALE_HORIZONTAL_MARGIN"

    invoke-virtual {v8, v6, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, v5, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->L:Lcom/ubix/ssp/ad/e/y/a/a$b$f;

    iget v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$f;->e:I

    const-string v5, "SCALE_VERTICAL_MARGIN"

    invoke-virtual {v8, v5, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_e
    iget-object v0, v1, Lcom/ubix/ssp/ad/i/b;->f:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->G0()Z

    move-result v0

    const-string v5, "IS_UNNAMED"

    invoke-virtual {v8, v5, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v9, v8}, Lcom/ubix/ssp/ad/b;->b(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "interaction_listener_key"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

    if-eqz v0, :cond_11

    const-string v2, "\u5185\u5bb9\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v12, v2}, Lcom/ubix/ssp/ad/e/a0/a0/a;->g(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;->onAdRenderFailed(Lcom/ubix/ssp/open/AdError;)V

    goto :goto_6

    :cond_f
    invoke-direct {v1}, Lcom/ubix/ssp/ad/i/b;->c()Lcom/ubix/ssp/ad/i/c;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-direct {v1}, Lcom/ubix/ssp/ad/i/b;->c()Lcom/ubix/ssp/ad/i/c;

    move-result-object v0

    invoke-virtual {v0, v4, v9}, Lcom/ubix/ssp/ad/i/c;->a(ILcom/ubix/ssp/ad/b;)V

    :cond_10
    invoke-interface {v3}, Lcom/ubix/ssp/open/nativee/NativeAd;->isDownloadAd()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v3}, Lcom/ubix/ssp/open/nativee/NativeAd;->getAppName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3}, Lcom/ubix/ssp/open/nativee/NativeAd;->getAppVersion()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3}, Lcom/ubix/ssp/open/nativee/NativeAd;->getAppPublisher()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3}, Lcom/ubix/ssp/open/nativee/NativeAd;->getAppPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3}, Lcom/ubix/ssp/open/nativee/NativeAd;->getAppICPNumber()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3}, Lcom/ubix/ssp/open/nativee/NativeAd;->getAppSuitableAge()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3}, Lcom/ubix/ssp/open/nativee/NativeAd;->getAppDownloadSize()J

    move-result-wide v16

    invoke-virtual/range {v9 .. v17}, Lcom/ubix/ssp/ad/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_11
    :goto_6
    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/i/b;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/i/b;->a(I)V

    return-void
.end method

.method private b(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    const-string v0, "native_ad_index_key"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private b()Lcom/ubix/ssp/ad/i/a;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b;->c:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/i/a;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/ubix/ssp/ad/i/b;->a:Ljava/lang/ref/SoftReference;

    return-object p0
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/ad/d/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/i/b;->f:Lcom/ubix/ssp/ad/d/l;

    return-object p0
.end method

.method private c()Lcom/ubix/ssp/ad/i/c;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b;->a:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/i/c;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic d(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/i/b;->b:Ljava/lang/ref/SoftReference;

    return-object p0
.end method

.method public static synthetic e(Lcom/ubix/ssp/ad/i/b;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/i/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static synthetic f(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/ad/i/c;
    .locals 0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/i/b;->c()Lcom/ubix/ssp/ad/i/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/ubix/ssp/ad/i/b;)I
    .locals 0

    iget p0, p0, Lcom/ubix/ssp/ad/i/b;->e:I

    return p0
.end method

.method public static synthetic h(Lcom/ubix/ssp/ad/i/b;)I
    .locals 2

    iget v0, p0, Lcom/ubix/ssp/ad/i/b;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ubix/ssp/ad/i/b;->e:I

    return v0
.end method

.method public static synthetic i(Lcom/ubix/ssp/ad/i/b;)Lcom/ubix/ssp/ad/i/a;
    .locals 0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/i/b;->b()Lcom/ubix/ssp/ad/i/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/ubix/ssp/ad/i/b;)Ljava/lang/ref/SoftReference;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/i/b;->c:Ljava/lang/ref/SoftReference;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/d/a;",
            "Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/ubix/ssp/ad/i/b;->a()Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object v0

    const-string v1, "\u5e7f\u544aView\u4e3a\u7a7a"

    const-string v2, "onAdRenderFailed out"

    const-string v3, "onAdRenderFailed in"

    const/4 v4, 0x2

    if-nez v0, :cond_2

    invoke-static {v4, v1}, Lcom/ubix/ssp/ad/e/a0/a0/a;->g(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    iget-object p3, p0, Lcom/ubix/ssp/ad/i/b;->a:Ljava/lang/ref/SoftReference;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/ubix/ssp/ad/i/b;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {p3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {p3, p1}, Lcom/ubix/ssp/ad/i/c;->c(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;->onAdRenderFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_1
    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b;->c:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/ubix/ssp/ad/d/a;->s:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b;->c:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/i/a;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/b;->k()V

    :cond_3
    iget p1, p1, Lcom/ubix/ssp/ad/d/a;->p:I

    const/16 v0, 0x7dd

    if-eq p1, v0, :cond_4

    const/16 v0, 0x7dc

    if-eq p1, v0, :cond_4

    const/16 v0, 0x7de

    if-eq p1, v0, :cond_4

    const/16 v0, 0x7db

    if-ne p1, v0, :cond_5

    :cond_4
    move-object v5, p0

    move-object v7, p2

    move-object v6, p3

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/ubix/ssp/ad/i/b;->a()Lcom/ubix/ssp/open/nativee/NativeAd;

    move-result-object p1

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/NativeAd;->getImageList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-static {v4, v1}, Lcom/ubix/ssp/ad/e/a0/a0/a;->g(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    iget-object p4, p0, Lcom/ubix/ssp/ad/i/b;->a:Ljava/lang/ref/SoftReference;

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_6

    iget-object p4, p0, Lcom/ubix/ssp/ad/i/b;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {p4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {p4, p1}, Lcom/ubix/ssp/ad/i/c;->c(Lcom/ubix/ssp/open/AdError;)V

    :cond_6
    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_7

    invoke-interface {p2, p1}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;->onAdRenderFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_7
    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    :cond_8
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/NativeAd;->getImageList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {v8, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/b;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/NativeAd;->getImageList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {v9, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    const/4 p1, 0x0

    :goto_0
    iget-object p4, p0, Lcom/ubix/ssp/ad/i/b;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {p4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-interface {p4}, Lcom/ubix/ssp/open/nativee/NativeAd;->getImageList()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p1, p4, :cond_9

    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object p4

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/b;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/NativeAd;->getImageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/open/nativee/UBiXImage;

    invoke-virtual {v0}, Lcom/ubix/ssp/open/nativee/UBiXImage;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/ubix/ssp/ad/i/b$b;

    move-object v5, p0

    move-object v7, p2

    move-object v6, p3

    invoke-direct/range {v4 .. v9}, Lcom/ubix/ssp/ad/i/b$b;-><init>(Lcom/ubix/ssp/ad/i/b;Ljava/util/ArrayList;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {p4, v0, v4}, Lcom/ubix/ssp/ad/e/v/a;->a(Ljava/lang/String;Lcom/ubix/ssp/ad/e/v/e$b;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_9
    move-object v5, p0

    return-void

    :goto_1
    iget-object p1, v5, Lcom/ubix/ssp/ad/i/b;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/NativeAd;->getCustomizeVideo()Lcom/ubix/ssp/open/nativee/NativeAd$CustomizeVideo;

    move-result-object p1

    if-nez p1, :cond_c

    const-string p1, "Custom\u89c6\u9891\u5185\u5bb9\u4e3a\u7a7a"

    invoke-static {v4, p1}, Lcom/ubix/ssp/ad/e/a0/a0/a;->g(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    iget-object p2, v5, Lcom/ubix/ssp/ad/i/b;->a:Ljava/lang/ref/SoftReference;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_a

    iget-object p2, v5, Lcom/ubix/ssp/ad/i/b;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {p2, p1}, Lcom/ubix/ssp/ad/i/c;->c(Lcom/ubix/ssp/open/AdError;)V

    :cond_a
    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    if-eqz v7, :cond_b

    invoke-interface {v7, p1}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;->onAdRenderFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_b
    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object p1

    iget-object p2, v5, Lcom/ubix/ssp/ad/i/b;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-interface {p2}, Lcom/ubix/ssp/open/nativee/NativeAd;->getCustomizeVideo()Lcom/ubix/ssp/open/nativee/NativeAd$CustomizeVideo;

    move-result-object p2

    invoke-interface {p2}, Lcom/ubix/ssp/open/nativee/NativeAd$CustomizeVideo;->getCoverUrl()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/ubix/ssp/ad/i/b$a;

    invoke-direct {p3, p0, v7, v6, p4}, Lcom/ubix/ssp/ad/i/b$a;-><init>(Lcom/ubix/ssp/ad/i/b;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const/4 p4, -0x1

    invoke-interface {p1, p2, p4, p3}, Lcom/ubix/ssp/ad/e/v/a;->a(Ljava/lang/String;ILcom/ubix/ssp/ad/e/v/e$b;)V

    return-void
.end method

.method public a(Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;)V
    .locals 4

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/b;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ubix/ssp/open/nativee/NativeAd;

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/b;->c:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v3, Lcom/ubix/ssp/ad/i/b$d;

    invoke-direct {v3, p0, p1}, Lcom/ubix/ssp/ad/i/b$d;-><init>(Lcom/ubix/ssp/ad/i/b;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;)V

    const/4 p1, 0x0

    invoke-interface {v1, v2, v0, p1, v3}, Lcom/ubix/ssp/open/nativee/NativeAd;->registerViews(Landroid/view/ViewGroup;Ljava/util/List;Landroid/view/View;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V

    return-void
.end method

.method public b(Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Lcom/ubix/ssp/ad/i/b;->c()Lcom/ubix/ssp/ad/i/c;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/b;->c:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/i/b;->c:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ubix/ssp/ad/i/a;

    new-instance v2, Lcom/ubix/ssp/ad/i/b$c;

    invoke-direct {v2, p0, v0, p1}, Lcom/ubix/ssp/ad/i/b$c;-><init>(Lcom/ubix/ssp/ad/i/b;Lcom/ubix/ssp/ad/i/c;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;)V

    invoke-virtual {v1, v2}, Lcom/ubix/ssp/ad/i/a;->setInnerListener(Lcom/ubix/ssp/ad/g/k/b;)V

    :cond_1
    :goto_0
    return-void
.end method
