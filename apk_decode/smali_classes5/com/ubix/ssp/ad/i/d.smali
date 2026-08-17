.class public Lcom/ubix/ssp/ad/i/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/g/g;


# instance fields
.field private a:Lcom/ubix/ssp/ad/g/f;

.field private b:Lcom/ubix/ssp/ad/i/c;

.field private c:Lcom/ubix/ssp/open/AdSize;

.field private d:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/ad/g/f;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/ubix/ssp/open/AdSize;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/ubix/ssp/open/AdSize;-><init>(II)V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/ubix/ssp/ad/i/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/open/AdSize;Lcom/ubix/ssp/ad/g/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/open/AdSize;Lcom/ubix/ssp/ad/g/f;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/i/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/i/d;->d:Ljava/lang/ref/SoftReference;

    iput-object p4, p0, Lcom/ubix/ssp/ad/i/d;->a:Lcom/ubix/ssp/ad/g/f;

    if-nez p3, :cond_0

    new-instance p3, Lcom/ubix/ssp/open/AdSize;

    const/4 p4, -0x1

    const/4 v0, -0x2

    invoke-direct {p3, p4, v0}, Lcom/ubix/ssp/open/AdSize;-><init>(II)V

    :cond_0
    iput-object p3, p0, Lcom/ubix/ssp/ad/i/d;->c:Lcom/ubix/ssp/open/AdSize;

    new-instance p3, Lcom/ubix/ssp/ad/i/c;

    invoke-direct {p3, p1, p2, p0}, Lcom/ubix/ssp/ad/i/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/ad/g/g;)V

    iput-object p3, p0, Lcom/ubix/ssp/ad/i/d;->b:Lcom/ubix/ssp/ad/i/c;

    return-void
.end method

.method private a(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

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
    const/4 p1, 0x0

    return p1
.end method

.method private a(Lcom/ubix/ssp/ad/d/a;)Lcom/ubix/ssp/open/AdError;
    .locals 4

    .line 2
    const-string v0, "\u5e7f\u544a\u6a21\u677fId\u5f02\u5e38,\u6216\u8d44\u6e90\u4e0e\u6a21\u677f\u4e0d\u5339\u914d"

    const/16 v1, 0x10

    if-nez p1, :cond_0

    invoke-static {v1, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->k(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    return-object p1

    :cond_0
    iget v2, p1, Lcom/ubix/ssp/ad/d/a;->p:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-static {v1, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->k(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object v0, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return-object v3

    :cond_3
    :goto_0
    const/16 p1, 0xc

    const-string v0, "\u89c6\u9891\u8d44\u6e90\u94fe\u63a5\u5f02\u5e38"

    :goto_1
    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->k(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_2
    const/16 p1, 0xd

    const-string v0, "\u5c01\u9762\u56fe\u8d44\u6e90\u94fe\u63a5\u5f02\u5e38"

    goto :goto_1

    :pswitch_2
    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->j:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    if-eqz p1, :cond_6

    array-length v0, p1

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    return-object v3

    :cond_6
    :goto_3
    const/16 p1, 0xa

    const-string v0, "\u56fe\u7247\u8d44\u6e90\u94fe\u63a5\u5f02\u5e38"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/d;->b:Lcom/ubix/ssp/ad/i/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/i/c;->B()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/ubix/ssp/open/nativee/NativeAd;)V
    .locals 3

    .line 5
    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_3

    const-string v1, "native_core_view"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ubix/ssp/ad/i/a;

    const-string v2, "native_parent_view_key"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/i/a;->j()V

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_3
    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/NativeAd;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Lcom/ubix/ssp/open/nativee/NativeAd;J)V
    .locals 1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/i/d;->a(I)I

    move-result p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/d;->b:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/i/c;->n(I)Lcom/ubix/ssp/ad/d/a;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/d;->b:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;J)V

    return-void
.end method

.method public a(Lcom/ubix/ssp/open/nativee/NativeAd;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;)V
    .locals 17

    .line 7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/ubix/ssp/ad/i/d;->b:Lcom/ubix/ssp/ad/i/c;

    const-string v3, "\u53c2\u6570\u5f02\u5e38"

    const/16 v4, 0xc

    const-string v5, "onAdRenderFailed out"

    const-string v6, "onAdRenderFailed in"

    if-nez v2, :cond_1

    invoke-static {v4, v3}, Lcom/ubix/ssp/ad/e/a0/a0/a;->g(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v2

    invoke-static {v6}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-interface {v1, v2}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;->onAdRenderFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    invoke-static {v5}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/ubix/ssp/ad/i/c;->v()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-direct {v0, v9}, Lcom/ubix/ssp/ad/i/d;->a(I)I

    move-result v9

    :try_start_0
    iget-object v10, v0, Lcom/ubix/ssp/ad/i/d;->b:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v10, v9}, Lcom/ubix/ssp/ad/i/c;->p(I)Lcom/ubix/ssp/ad/d/l;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v15, :cond_b

    if-gez v9, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/ubix/ssp/ad/i/d;->d(Lcom/ubix/ssp/open/nativee/NativeAd;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v2, 0x4

    const-string v3, "\u6587\u4ef6\u5df2\u7ecf\u8fc7\u671f"

    invoke-static {v2, v3}, Lcom/ubix/ssp/ad/e/a0/a0/a;->g(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v2

    invoke-static {v6}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    invoke-interface {v1, v2}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;->onAdRenderFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_3
    invoke-static {v5}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v3, v0, Lcom/ubix/ssp/ad/i/d;->b:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v3, v9}, Lcom/ubix/ssp/ad/i/c;->n(I)Lcom/ubix/ssp/ad/d/a;

    move-result-object v3

    iget-object v4, v0, Lcom/ubix/ssp/ad/i/d;->c:Lcom/ubix/ssp/open/AdSize;

    invoke-virtual {v4}, Lcom/ubix/ssp/open/AdSize;->getWidth()I

    move-result v4

    const-string v5, "AD_WIDTH"

    invoke-virtual {v8, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, v0, Lcom/ubix/ssp/ad/i/d;->c:Lcom/ubix/ssp/open/AdSize;

    invoke-virtual {v4}, Lcom/ubix/ssp/open/AdSize;->getHeight()I

    move-result v4

    const-string v5, "AD_HEIGHT"

    invoke-virtual {v8, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-interface/range {p1 .. p1}, Lcom/ubix/ssp/open/nativee/NativeAd;->getDesc()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TITLE"

    invoke-virtual {v8, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v3, Lcom/ubix/ssp/ad/d/a;->p:I

    const-string v5, "TEMPLATE_ID"

    invoke-virtual {v8, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v15}, Lcom/ubix/ssp/ad/d/l;->b()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {p1 .. p1}, Lcom/ubix/ssp/open/nativee/NativeAd;->getAdSource()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AD_SOURCE"

    invoke-virtual {v8, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-interface/range {p1 .. p1}, Lcom/ubix/ssp/open/nativee/NativeAd;->getActionButtonText()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BUTTON_TEXT"

    invoke-virtual {v8, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/ubix/ssp/ad/d/l;->K0()Z

    move-result v4

    const-string v5, "AUTO_MUTE"

    invoke-virtual {v8, v5, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v15}, Lcom/ubix/ssp/ad/d/l;->c()I

    move-result v4

    const-string v5, "AUTO_PLAY"

    invoke-virtual {v8, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "DO_NOT_RESTRICT_SIZE"

    const/4 v5, 0x1

    invoke-virtual {v8, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-interface/range {p1 .. p1}, Lcom/ubix/ssp/open/nativee/NativeAd;->isDownloadAd()Z

    move-result v4

    const-string v6, "IS_DOWNLOAD"

    invoke-virtual {v8, v6, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v15}, Lcom/ubix/ssp/ad/d/l;->k0()I

    move-result v4

    const-string v6, "VIDEO_RENDER_TYPE"

    invoke-virtual {v8, v6, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v4, v3, Lcom/ubix/ssp/ad/d/a;->t:Z

    const-string v6, "isSlided"

    invoke-virtual {v8, v6, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v15}, Lcom/ubix/ssp/ad/d/l;->G0()Z

    move-result v4

    const-string v6, "IS_UNNAMED"

    invoke-virtual {v8, v6, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, v3, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz v4, :cond_6

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz v4, :cond_6

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/y/a/a$b;->O:Lcom/ubix/ssp/ad/e/y/a/a$b$a;

    if-eqz v4, :cond_6

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/y/a/a$b$a;->b:Lcom/ubix/ssp/ad/e/y/a/a$b$e;

    if-eqz v4, :cond_6

    iget v4, v4, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->b:F

    const-string v6, "AD_MARGIN_LEFT"

    invoke-virtual {v8, v6, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v4, v3, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/y/a/a$b;->O:Lcom/ubix/ssp/ad/e/y/a/a$b$a;

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/y/a/a$b$a;->b:Lcom/ubix/ssp/ad/e/y/a/a$b$e;

    iget v4, v4, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->c:F

    const-string v6, "AD_MARGIN_TOP"

    invoke-virtual {v8, v6, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v4, v3, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/y/a/a$b;->O:Lcom/ubix/ssp/ad/e/y/a/a$b$a;

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/y/a/a$b$a;->b:Lcom/ubix/ssp/ad/e/y/a/a$b$e;

    iget v4, v4, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->d:F

    const-string v6, "AD_MARGIN_RIGHT"

    invoke-virtual {v8, v6, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v4, v3, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/y/a/a$b;->O:Lcom/ubix/ssp/ad/e/y/a/a$b$a;

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/y/a/a$b$a;->b:Lcom/ubix/ssp/ad/e/y/a/a$b$e;

    iget v4, v4, Lcom/ubix/ssp/ad/e/y/a/a$b$e;->e:F

    const-string v6, "AD_MARGIN_BOTTOM"

    invoke-virtual {v8, v6, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_6
    iget-object v4, v0, Lcom/ubix/ssp/ad/i/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v6, "native_core_view"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_9

    iget-object v9, v0, Lcom/ubix/ssp/ad/i/d;->d:Ljava/lang/ref/SoftReference;

    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    const/4 v10, 0x2

    invoke-static {v9, v8, v10, v5}, Lcom/ubix/ssp/ad/b;->a(Landroid/content/Context;Landroid/os/Bundle;IZ)Lcom/ubix/ssp/ad/b;

    move-result-object v5

    check-cast v5, Lcom/ubix/ssp/ad/i/a;

    if-nez v5, :cond_8

    if-eqz v1, :cond_7

    const/4 v2, 0x6

    const-string v3, "\u521b\u5efaViewClass\u5931\u8d25\uff0c\u8bf7\u52ff\u91cd\u8bd5"

    invoke-static {v2, v3}, Lcom/ubix/ssp/ad/e/a0/a0/a;->g(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;->onAdRenderFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_7
    return-void

    :cond_8
    :goto_0
    move-object v14, v5

    goto :goto_1

    :cond_9
    move-object v5, v9

    check-cast v5, Lcom/ubix/ssp/ad/i/a;

    goto :goto_0

    :goto_1
    new-instance v11, Lcom/ubix/ssp/ad/i/b;

    iget-object v12, v0, Lcom/ubix/ssp/ad/i/d;->b:Lcom/ubix/ssp/ad/i/c;

    iget-object v5, v0, Lcom/ubix/ssp/ad/i/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v13, p1

    move-object/from16 v16, v5

    invoke-direct/range {v11 .. v16}, Lcom/ubix/ssp/ad/i/b;-><init>(Lcom/ubix/ssp/ad/i/c;Lcom/ubix/ssp/open/nativee/NativeAd;Lcom/ubix/ssp/ad/i/a;Lcom/ubix/ssp/ad/d/l;Ljava/util/concurrent/ConcurrentHashMap;)V

    invoke-virtual {v11, v1}, Lcom/ubix/ssp/ad/i/b;->b(Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;)V

    invoke-virtual {v11, v3, v1, v2, v7}, Lcom/ubix/ssp/ad/i/b;->a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_a

    iget-object v5, v0, Lcom/ubix/ssp/ad/i/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v5, :cond_a

    const-string v5, "native_parent_view_key"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_a

    invoke-virtual {v4, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-direct {v0, v4, v6, v14}, Lcom/ubix/ssp/ad/i/d;->a(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    iget v3, v3, Lcom/ubix/ssp/ad/d/a;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "native_notify_id_key"

    invoke-direct {v0, v4, v5, v3}, Lcom/ubix/ssp/ad/i/d;->a(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const-string v4, "interaction_listener_key"

    invoke-direct {v0, v3, v4, v1}, Lcom/ubix/ssp/ad/i/d;->a(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v3, "native_images_array_key"

    invoke-direct {v0, v1, v3, v2}, Lcom/ubix/ssp/ad/i/d;->a(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "native_videos_array_key"

    invoke-direct {v0, v1, v2, v7}, Lcom/ubix/ssp/ad/i/d;->a(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "native_single_render"

    invoke-direct {v0, v1, v2, v11}, Lcom/ubix/ssp/ad/i/d;->a(ILjava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_b
    :goto_2
    invoke-static {v4, v3}, Lcom/ubix/ssp/ad/e/a0/a0/a;->g(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v2

    invoke-static {v6}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    if-eqz v1, :cond_c

    invoke-interface {v1, v2}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;->onAdRenderFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_c
    invoke-static {v5}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    return-void

    :catchall_0
    invoke-static {v4, v3}, Lcom/ubix/ssp/ad/e/a0/a0/a;->g(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v2

    invoke-static {v6}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    if-eqz v1, :cond_d

    invoke-interface {v1, v2}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;->onAdRenderFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_d
    invoke-static {v5}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ubix/ssp/open/nativee/NativeAd;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressVideoListener;)V
    .locals 1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    const-string v0, "video_listener_key"

    invoke-direct {p0, p1, v0, p2}, Lcom/ubix/ssp/ad/i/d;->a(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/ubix/ssp/open/nativee/NativeAd;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/open/nativee/NativeAd;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/i/d;->a(I)I

    move-result p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/d;->b:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/i/c;->n(I)Lcom/ubix/ssp/ad/d/a;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/d;->b:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v0, p1, p2}, Lcom/ubix/ssp/ad/i/c;->c(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/d;->b:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/i/c;->h(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ubix/ssp/open/nativee/NativeAd;",
            ">;)V"
        }
    .end annotation

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ubix/ssp/open/nativee/NativeAd;

    iget-object v3, p0, Lcom/ubix/ssp/ad/i/d;->b:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/i/c;->n(I)Lcom/ubix/ssp/ad/d/a;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ubix/ssp/ad/i/d;->a(Lcom/ubix/ssp/ad/d/a;)Lcom/ubix/ssp/open/AdError;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/d;->a:Lcom/ubix/ssp/ad/g/f;

    if-eqz p1, :cond_3

    invoke-interface {p1, v3}, Lcom/ubix/ssp/ad/g/f;->onAdLoadFailed(Lcom/ubix/ssp/open/AdError;)V

    return-void

    :cond_0
    new-instance v3, Lcom/ubix/ssp/ad/d/i;

    invoke-direct {v3}, Lcom/ubix/ssp/ad/d/i;-><init>()V

    invoke-virtual {v3, v2}, Lcom/ubix/ssp/ad/d/i;->a(Lcom/ubix/ssp/open/nativee/NativeAd;)V

    invoke-virtual {v3, p0}, Lcom/ubix/ssp/ad/d/i;->a(Lcom/ubix/ssp/ad/i/d;)V

    invoke-interface {v2}, Lcom/ubix/ssp/open/nativee/NativeAd;->isVideoAd()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ubix/ssp/ad/d/i;->a(Z)V

    invoke-interface {v2}, Lcom/ubix/ssp/open/nativee/NativeAd;->getVideoDuration()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/ubix/ssp/ad/d/i;->b(J)V

    invoke-interface {v2}, Lcom/ubix/ssp/open/nativee/NativeAd;->getCreativeType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ubix/ssp/ad/d/i;->a(I)V

    invoke-interface {v2}, Lcom/ubix/ssp/open/nativee/NativeAd;->getPrice()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/ubix/ssp/ad/d/i;->a(J)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/ubix/ssp/ad/i/d;->d:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v4, 0x30d40

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    iget-object v4, p0, Lcom/ubix/ssp/ad/i/d;->b:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v4, v1}, Lcom/ubix/ssp/ad/i/c;->p(I)Lcom/ubix/ssp/ad/d/l;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ubix/ssp/ad/d/l;->G()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const-string v5, "native_ad_bean_key"

    invoke-direct {p0, v4, v5, v2}, Lcom/ubix/ssp/ad/i/d;->a(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const-string v5, "native_parent_view_key"

    invoke-direct {p0, v4, v5, v3}, Lcom/ubix/ssp/ad/i/d;->a(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "native_ad_index_key"

    invoke-direct {p0, v2, v4, v3}, Lcom/ubix/ssp/ad/i/d;->a(ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/d;->a:Lcom/ubix/ssp/ad/g/f;

    if-eqz p1, :cond_3

    invoke-interface {p1, v0}, Lcom/ubix/ssp/ad/g/f;->onAdLoadSucceed(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/d;->b:Lcom/ubix/ssp/ad/i/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/a;->a(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/ubix/ssp/open/nativee/NativeAd;)Landroid/widget/RelativeLayout;
    .locals 2

    .line 1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/i/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    const-string v1, "native_parent_view_key"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-object v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public b()V
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/i/d;->b(I)V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/d;->b:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/i/c;->m(I)V

    return-void
.end method

.method public c(Lcom/ubix/ssp/open/nativee/NativeAd;)Lcom/ubix/ssp/open/ParamsReview;
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/i/d;->a(I)I

    move-result p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/d;->b:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/i/c;->n(I)Lcom/ubix/ssp/ad/d/a;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/d;->b:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/i/c;->o(Lcom/ubix/ssp/ad/d/a;)Lcom/ubix/ssp/open/ParamsReview;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Lcom/ubix/ssp/open/nativee/NativeAd;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/d;->b:Lcom/ubix/ssp/ad/i/c;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/i/d;->a(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/i/c;->n(I)Lcom/ubix/ssp/ad/d/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/i/c;->s(Lcom/ubix/ssp/ad/d/a;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onAdLoadFailed(Lcom/ubix/ssp/open/AdError;)V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/d;->a:Lcom/ubix/ssp/ad/g/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/g/f;->onAdLoadFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    return-void
.end method
