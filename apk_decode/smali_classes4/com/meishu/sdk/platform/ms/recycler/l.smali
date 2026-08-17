.class public Lcom/meishu/sdk/platform/ms/recycler/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;


# static fields
.field public static p:I = 0xfa


# instance fields
.field public final a:Lcom/meishu/sdk/platform/ms/recycler/MsCustomVideo;

.field public b:Lcom/meishu/sdk/meishu_ad/nativ/b;

.field public c:Lcom/meishu/sdk/platform/ms/recycler/c;

.field public d:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

.field public e:Z

.field public f:I

.field public g:Z

.field public h:Lcom/meishu/sdk/core/ad/recycler/DownloadStatusListener;

.field public volatile i:Z

.field public j:I

.field public k:Landroid/widget/FrameLayout;

.field public l:Z

.field public m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public n:I

.field public o:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/c;Lcom/meishu/sdk/meishu_ad/nativ/b;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->l:Z

    .line 6
    .line 7
    new-instance v0, Lcom/meishu/sdk/platform/ms/recycler/l$e;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/ms/recycler/l$e;-><init>(Lcom/meishu/sdk/platform/ms/recycler/l;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->o:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->c:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 17
    .line 18
    iput p3, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->n:I

    .line 19
    .line 20
    new-instance p1, Lcom/meishu/sdk/platform/ms/recycler/MsCustomVideo;

    .line 21
    .line 22
    invoke-interface {p2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-direct {p1, p3}, Lcom/meishu/sdk/platform/ms/recycler/MsCustomVideo;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/f;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->a:Lcom/meishu/sdk/platform/ms/recycler/MsCustomVideo;

    .line 30
    .line 31
    iget p1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->f:I

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->b()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput p1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->f:I

    .line 44
    .line 45
    :cond_0
    :try_start_0
    sget-object p1, Lcom/meishu/sdk/core/ad/AdType;->FEED_MIX:Lcom/meishu/sdk/core/ad/AdType;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/meishu/sdk/core/utils/h;->a()V

    .line 51
    .line 52
    .line 53
    invoke-interface {p2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-virtual {p3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    invoke-static {p3, p1}, Lcom/meishu/sdk/core/utils/h;->a(II)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-interface {p2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-virtual {p3, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setAct_type(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    :goto_0
    invoke-interface {p2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_index()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-lez p1, :cond_1

    .line 90
    .line 91
    invoke-interface {p2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_index()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    mul-int/lit8 p1, p1, 0x5

    .line 100
    .line 101
    sput p1, Lcom/meishu/sdk/platform/ms/recycler/l;->p:I

    .line 102
    .line 103
    :cond_1
    return-void
.end method

.method private a(Landroid/view/ViewGroup;FFJFFFI)V
    .locals 10

    move/from16 v8, p9

    int-to-float v0, v8

    div-float v0, v0, p8

    .line 25
    sget v1, Lcom/meishu/sdk/platform/ms/recycler/l;->p:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    .line 26
    invoke-virtual/range {v0 .. v9}, Lcom/meishu/sdk/platform/ms/recycler/l;->a(Landroid/view/ViewGroup;FFJFFIZ)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/meishu/sdk/platform/ms/recycler/l;Landroid/view/ViewGroup;FFJFFFI)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/meishu/sdk/platform/ms/recycler/l;->a(Landroid/view/ViewGroup;FFJFFFI)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/recycler/l;->c()V

    .line 4
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->m:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->c:Lcom/meishu/sdk/platform/ms/recycler/c;

    invoke-virtual {p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object p2

    check-cast p2, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    invoke-virtual {p2}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->getInstance()Lcom/meishu/sdk/core/view/FeedAdOverlayManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/recycler/l;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p1}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->onAdClickedIfOverlayExists(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic a(Lcom/meishu/sdk/platform/ms/recycler/l;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->e:Z

    return p1
.end method

.method public static synthetic b(Lcom/meishu/sdk/platform/ms/recycler/l;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/ms/recycler/l;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception v0

    .line 8
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getNativeSE()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/recycler/l;->d()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 11
    iget-boolean v2, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->l:Z

    if-eqz v2, :cond_3

    move-object p3, v0

    :cond_3
    if-eqz p3, :cond_8

    .line 12
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_5

    .line 13
    :cond_4
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->k:Landroid/widget/FrameLayout;

    if-nez v2, :cond_7

    .line 14
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    const/4 v3, -0x1

    if-gtz p1, :cond_5

    move p1, v3

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 16
    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    if-gtz v4, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 17
    :goto_3
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, p1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 19
    iput-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->k:Landroid/widget/FrameLayout;

    .line 20
    :cond_7
    new-instance p1, LU0/d;

    invoke-direct {p1, p0, p2}, LU0/d;-><init>(Lcom/meishu/sdk/platform/ms/recycler/l;Landroid/view/ViewGroup;)V

    .line 21
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->k:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/meishu/sdk/platform/ms/recycler/l$c;

    invoke-direct {v3, p0, p3, p1}, Lcom/meishu/sdk/platform/ms/recycler/l$c;-><init>(Lcom/meishu/sdk/platform/ms/recycler/l;Ljava/util/List;Lcom/meishu/sdk/platform/ms/recycler/t$a;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 22
    new-instance p1, Lcom/meishu/sdk/platform/ms/recycler/l$d;

    invoke-direct {p1, p0, p2, v1, v0}, Lcom/meishu/sdk/platform/ms/recycler/l$d;-><init>(Lcom/meishu/sdk/platform/ms/recycler/l;Landroid/view/ViewGroup;ZLjava/util/List;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 23
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->o:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 24
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_5
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;FFJFFIZ)V
    .locals 5

    .line 27
    :try_start_0
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->i:Z

    if-nez v0, :cond_5

    if-eqz p9, :cond_3

    iget-object p9, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->k:Landroid/widget/FrameLayout;

    if-eqz p9, :cond_2

    .line 28
    invoke-virtual {p9}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p9}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 30
    invoke-virtual {p9, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/2addr v0, v1

    .line 32
    invoke-virtual {p9}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p9}, Landroid/view/View;->getWidth()I

    move-result p9

    mul-int/2addr p9, v1

    int-to-double v1, p9

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v1, v3

    double-to-int p9, v1

    if-lez p9, :cond_2

    if-ge v0, p9, :cond_3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_2

    :cond_2
    :goto_0
    return-void

    .line 33
    :cond_3
    iget-boolean p9, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->e:Z

    if-eqz p9, :cond_5

    const/4 p9, 0x1

    .line 34
    iput-boolean p9, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :try_start_1
    iget-object p9, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {p9}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object p9

    invoke-virtual {p9}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCbc()I

    move-result p9

    if-nez p9, :cond_4

    iget-object p9, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->d:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    if-eqz p9, :cond_4

    .line 36
    invoke-interface {p9}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p9, v0

    .line 37
    :try_start_2
    invoke-virtual {p9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    :cond_4
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 39
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object p9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->c:Lcom/meishu/sdk/platform/ms/recycler/c;

    invoke-virtual {v3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object v3

    check-cast v3, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    invoke-virtual {v3}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_adp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p9, v2, v0, v1}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;J)V

    .line 40
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object p9

    const-string v2, "adg_time"

    invoke-virtual {p9, v2, v0, v1}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;J)V

    .line 41
    iget-object p9, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {p9}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object p9

    const/16 v0, 0x200

    invoke-virtual {p9, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkActType(I)V

    .line 42
    iget-object p9, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {p9}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object p9

    invoke-virtual {p9, p8}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkPower(I)V

    move p8, p7

    move p7, p6

    move-wide p5, p4

    move p4, p3

    move p3, p2

    .line 43
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-static/range {p2 .. p8}, Lcom/meishu/sdk/platform/ms/recycler/s;->a(Lcom/meishu/sdk/core/ad/IAd;FFJFF)V

    .line 44
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/recycler/l;->c()V

    .line 45
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-static {p2, p1}, Lcom/meishu/sdk/core/utils/i0;->a(Lcom/meishu/sdk/platform/ms/c;Landroid/view/ViewGroup;)V

    .line 46
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/platform/ms/c;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 47
    :try_start_3
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->o:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 48
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_1
    :cond_5
    :goto_3
    return-void
.end method

.method public bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v5, p4

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    :try_start_0
    const-string v0, "MeishuRecyclerAdDataAda"

    .line 14
    .line 15
    const-string v2, "adContainer is null"

    .line 16
    .line 17
    invoke-static {v0, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, v1, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iput-object v5, v1, Lcom/meishu/sdk/platform/ms/recycler/l;->d:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 35
    .line 36
    new-instance v6, Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 39
    .line 40
    .line 41
    instance-of v0, v2, Landroid/app/Activity;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    move-object v0, v2

    .line 46
    check-cast v0, Landroid/app/Activity;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    instance-of v0, v0, Landroid/app/Activity;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 62
    .line 63
    :goto_0
    move-object v7, v0

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const/4 v0, 0x0

    .line 66
    goto :goto_0

    .line 67
    :goto_1
    const/4 v8, 0x1

    .line 68
    if-nez v7, :cond_3

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    :try_start_1
    iget-boolean v0, v1, Lcom/meishu/sdk/platform/ms/recycler/l;->g:Z

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 77
    .line 78
    const/16 v9, 0x1d

    .line 79
    .line 80
    if-lt v0, v9, :cond_5

    .line 81
    .line 82
    iput-boolean v8, v1, Lcom/meishu/sdk/platform/ms/recycler/l;->g:Z

    .line 83
    .line 84
    new-instance v0, Lcom/meishu/sdk/platform/ms/recycler/n;

    .line 85
    .line 86
    invoke-direct {v0, v1}, Lcom/meishu/sdk/platform/ms/recycler/n;-><init>(Lcom/meishu/sdk/platform/ms/recycler/l;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v7, v0}, Landroidx/lifecycle/j;->a(Landroid/app/Activity;Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    .line 96
    .line 97
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 98
    .line 99
    invoke-direct {v0, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iput-object v0, v1, Lcom/meishu/sdk/platform/ms/recycler/l;->m:Ljava/lang/ref/WeakReference;

    .line 103
    .line 104
    invoke-static {}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->getInstance()Lcom/meishu/sdk/core/view/FeedAdOverlayManager;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/ms/recycler/l;->e()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    invoke-virtual {v0, v9, v3}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->updateAdContainer(Ljava/lang/String;Landroid/view/View;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    new-instance v9, Lcom/meishu/sdk/platform/ms/recycler/l$a;

    .line 120
    .line 121
    invoke-direct {v9, v1, v3, v6, v5}, Lcom/meishu/sdk/platform/ms/recycler/l$a;-><init>(Lcom/meishu/sdk/platform/ms/recycler/l;Landroid/view/ViewGroup;Landroid/graphics/Rect;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v9}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 125
    .line 126
    .line 127
    const-class v0, Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 128
    .line 129
    const-class v6, Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 130
    .line 131
    invoke-static {v3, v0, v6}, Lcom/meishu/sdk/core/ad/recycler/d;->a(Landroid/view/ViewGroup;Ljava/lang/Class;Ljava/lang/Class;)[Landroid/view/ViewGroup;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    aget-object v6, v0, v8

    .line 136
    .line 137
    const/4 v9, 0x0

    .line 138
    if-nez v6, :cond_8

    .line 139
    .line 140
    aget-object v6, v0, v9

    .line 141
    .line 142
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    move-object v10, v0

    .line 147
    check-cast v10, Landroid/view/ViewGroup;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 148
    .line 149
    if-nez v10, :cond_6

    .line 150
    .line 151
    :try_start_3
    const-string v0, ""

    .line 152
    .line 153
    new-instance v10, Ljava/lang/String;

    .line 154
    .line 155
    const-string v11, "c2VsZiByZW5kZXIgYmluZEFkVG9WaWV3LCBUaGUgYWRDb250YWluZXIgbXVzdCBiZSBpbnNlcnRlZCBpbnRvIHRoZSBwYWdlIGxheW91dC4="

    .line 156
    .line 157
    invoke-static {v11}, Lcom/meishu/sdk/core/utils/g1;->a(Ljava/lang/String;)[B

    .line 158
    .line 159
    .line 160
    move-result-object v11

    .line 161
    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    .line 162
    .line 163
    .line 164
    invoke-static {v0, v10}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 165
    .line 166
    .line 167
    goto/16 :goto_4

    .line 168
    .line 169
    :cond_6
    :try_start_4
    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 170
    .line 171
    .line 172
    move-result v11

    .line 173
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 174
    .line 175
    .line 176
    move-result-object v12

    .line 177
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 178
    .line 179
    const/4 v13, -0x1

    .line 180
    invoke-direct {v0, v13, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 184
    .line 185
    .line 186
    new-instance v13, Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 187
    .line 188
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 189
    .line 190
    .line 191
    move-result-object v14

    .line 192
    invoke-direct {v13, v14}, Lcom/meishu/sdk/core/view/TouchAdContainer;-><init>(Landroid/content/Context;)V

    .line 193
    .line 194
    .line 195
    new-instance v14, Lcom/meishu/sdk/core/view/TouchPositionListener;

    .line 196
    .line 197
    iget-object v15, v1, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 198
    .line 199
    invoke-direct {v14, v15}, Lcom/meishu/sdk/core/view/TouchPositionListener;-><init>(Lcom/meishu/sdk/core/ad/IAd;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v13, v14}, Lcom/meishu/sdk/core/view/TouchAdContainer;->setTouchPositionListener(Lcom/meishu/sdk/core/view/TouchPositionListener;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v13, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    invoke-virtual {v13, v0}, Landroid/view/View;->setId(I)V

    .line 213
    .line 214
    .line 215
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->showFeedAdLogo()Z

    .line 220
    .line 221
    .line 222
    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 223
    if-eqz v0, :cond_7

    .line 224
    .line 225
    :try_start_5
    new-instance v0, Landroid/widget/ImageView;

    .line 226
    .line 227
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 228
    .line 229
    .line 230
    move-result-object v14

    .line 231
    invoke-direct {v0, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 238
    .line 239
    .line 240
    move-result-object v14

    .line 241
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 242
    .line 243
    .line 244
    move-result-object v14

    .line 245
    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 246
    .line 247
    .line 248
    move-result-object v14

    .line 249
    iget v14, v14, Landroid/util/DisplayMetrics;->density:F

    .line 250
    .line 251
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 252
    .line 253
    const/high16 v16, 0x41500000    # 13.0f

    .line 254
    .line 255
    mul-float v14, v14, v16

    .line 256
    .line 257
    const/high16 v16, 0x3f000000    # 0.5f

    .line 258
    .line 259
    add-float v14, v14, v16

    .line 260
    .line 261
    float-to-int v14, v14

    .line 262
    const/4 v9, -0x2

    .line 263
    invoke-direct {v15, v9, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 264
    .line 265
    .line 266
    const/16 v9, 0x55

    .line 267
    .line 268
    iput v9, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 269
    .line 270
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 271
    .line 272
    .line 273
    move-result-object v9

    .line 274
    sget v14, Lcom/meishu/sdk/R$drawable;->ms_ad:I

    .line 275
    .line 276
    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 277
    .line 278
    .line 279
    move-result-object v9

    .line 280
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v13, v0, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 284
    .line 285
    .line 286
    goto :goto_3

    .line 287
    :catchall_1
    move-exception v0

    .line 288
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 289
    .line 290
    .line 291
    :cond_7
    :goto_3
    iget-object v0, v1, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 292
    .line 293
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    iget-object v9, v1, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 302
    .line 303
    invoke-interface {v9}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 304
    .line 305
    .line 306
    move-result-object v9

    .line 307
    invoke-virtual {v9}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getLoadedTime()J

    .line 308
    .line 309
    .line 310
    move-result-wide v14

    .line 311
    invoke-static {v6, v0, v14, v15}, Lcom/meishu/sdk/core/utils/p1;->a(Landroid/view/ViewGroup;Ljava/lang/String;J)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v10, v13, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 315
    .line 316
    .line 317
    move-object v6, v13

    .line 318
    goto :goto_4

    .line 319
    :cond_8
    instance-of v0, v6, Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 320
    .line 321
    if-eqz v0, :cond_9

    .line 322
    .line 323
    move-object v0, v6

    .line 324
    check-cast v0, Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 325
    .line 326
    new-instance v9, Lcom/meishu/sdk/core/view/TouchPositionListener;

    .line 327
    .line 328
    iget-object v10, v1, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 329
    .line 330
    invoke-direct {v9, v10}, Lcom/meishu/sdk/core/view/TouchPositionListener;-><init>(Lcom/meishu/sdk/core/ad/IAd;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, v9}, Lcom/meishu/sdk/core/view/TouchAdContainer;->setTouchPositionListener(Lcom/meishu/sdk/core/view/TouchPositionListener;)V

    .line 334
    .line 335
    .line 336
    :catchall_2
    :cond_9
    :goto_4
    new-instance v9, Lcom/meishu/sdk/core/view/PositionView;

    .line 337
    .line 338
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-direct {v9, v0}, Lcom/meishu/sdk/core/view/PositionView;-><init>(Landroid/content/Context;)V

    .line 343
    .line 344
    .line 345
    iget v0, v1, Lcom/meishu/sdk/platform/ms/recycler/l;->f:I

    .line 346
    .line 347
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {v9, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    new-instance v0, Lcom/meishu/sdk/platform/ms/recycler/l$b;

    .line 355
    .line 356
    invoke-direct {v0, v1}, Lcom/meishu/sdk/platform/ms/recycler/l$b;-><init>(Lcom/meishu/sdk/platform/ms/recycler/l;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v9, v0}, Lcom/meishu/sdk/core/view/PositionView;->setOnWindownEventListener(Lcom/meishu/sdk/core/view/TouchAdContainer$OnWindownEventListener;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 360
    .line 361
    .line 362
    const/4 v0, 0x0

    .line 363
    :goto_5
    :try_start_7
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    if-ge v0, v3, :cond_b

    .line 368
    .line 369
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    instance-of v10, v3, Lcom/meishu/sdk/core/view/PositionView;

    .line 374
    .line 375
    if-eqz v10, :cond_a

    .line 376
    .line 377
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 378
    .line 379
    .line 380
    goto :goto_6

    .line 381
    :catch_0
    move-exception v0

    .line 382
    goto :goto_7

    .line 383
    :cond_a
    :goto_6
    add-int/lit8 v0, v0, 0x1

    .line 384
    .line 385
    goto :goto_5

    .line 386
    :goto_7
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 387
    .line 388
    .line 389
    :cond_b
    invoke-virtual {v6, v9, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v1, v7, v6, v4}, Lcom/meishu/sdk/platform/ms/recycler/l;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 393
    .line 394
    .line 395
    :try_start_9
    iget-object v0, v1, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 396
    .line 397
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppendInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->getHasClicked()Lcom/meishu/sdk/core/utils/b;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    new-instance v3, LU0/c;

    .line 410
    .line 411
    invoke-direct {v3, v1}, LU0/c;-><init>(Lcom/meishu/sdk/platform/ms/recycler/l;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0, v3}, Lcom/meishu/sdk/core/utils/b;->a(Lcom/meishu/sdk/core/utils/b$a;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 415
    .line 416
    .line 417
    goto :goto_8

    .line 418
    :catch_1
    move-exception v0

    .line 419
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 420
    .line 421
    .line 422
    :goto_8
    new-instance v0, Lcom/meishu/sdk/platform/ms/recycler/d;

    .line 423
    .line 424
    iget-object v3, v1, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 425
    .line 426
    invoke-direct {v0, v3, v5}, Lcom/meishu/sdk/platform/ms/recycler/d;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/b;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V

    .line 427
    .line 428
    .line 429
    invoke-interface {v3, v2, v6, v4, v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcom/meishu/sdk/platform/ms/recycler/d;)V

    .line 430
    .line 431
    .line 432
    iget-object v0, v1, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 433
    .line 434
    invoke-interface {v0, v5}, Lcom/meishu/sdk/core/ad/IAd;->setInteractionListener(Lcom/meishu/sdk/core/loader/InteractionListener;)V

    .line 435
    .line 436
    .line 437
    const-string v0, "meishu_media_view"

    .line 438
    .line 439
    invoke-virtual {v6, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    if-eqz v0, :cond_c

    .line 444
    .line 445
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    if-eqz v2, :cond_c

    .line 450
    .line 451
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 452
    .line 453
    .line 454
    move-result-object v2

    .line 455
    instance-of v2, v2, Landroid/view/ViewGroup;

    .line 456
    .line 457
    if-eqz v2, :cond_c

    .line 458
    .line 459
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    check-cast v2, Landroid/view/ViewGroup;

    .line 464
    .line 465
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 466
    .line 467
    .line 468
    goto :goto_9

    .line 469
    :catchall_3
    if-eqz v5, :cond_c

    .line 470
    .line 471
    invoke-interface {v5}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdRenderFailed()V

    .line 472
    .line 473
    .line 474
    :cond_c
    :goto_9
    return-void
.end method

.method public bindMediaView(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;IILcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
    .locals 3

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setDisplayMode(I)V

    if-lez p3, :cond_0

    int-to-float v2, p3

    .line 8
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setContainerWidth(F)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    if-lez p4, :cond_1

    int-to-float v2, p4

    .line 9
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setContainerHeight(F)V

    .line 10
    :cond_1
    iput-boolean v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->S:Z

    .line 11
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 12
    sget-object v0, Lcom/meishu/sdk/core/utils/h0;->a:Ljava/util/concurrent/ExecutorService;

    .line 13
    sget-object v0, Lcom/meishu/sdk/core/utils/h0$b;->a:Lcom/meishu/sdk/core/utils/h0;

    .line 14
    new-instance v2, Lcom/meishu/sdk/platform/ms/recycler/o;

    invoke-direct {v2, p0, v1}, Lcom/meishu/sdk/platform/ms/recycler/o;-><init>(Lcom/meishu/sdk/platform/ms/recycler/l;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/utils/h0;->a(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 15
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const/4 v1, 0x0

    .line 16
    :goto_2
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    if-lez p3, :cond_3

    if-lez p4, :cond_3

    .line 17
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 18
    iput p4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 19
    :cond_3
    new-instance p3, Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz v1, :cond_4

    .line 21
    instance-of p4, p1, Landroid/widget/LinearLayout;

    if-nez p4, :cond_4

    .line 22
    sget-object p4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, p4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 23
    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    :cond_4
    invoke-virtual {p1, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    :try_start_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    new-instance p4, Lcom/meishu/sdk/platform/ms/recycler/b;

    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->c:Lcom/meishu/sdk/platform/ms/recycler/c;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->c:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 26
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 27
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    invoke-direct {p4, v0, p5}, Lcom/meishu/sdk/platform/ms/recycler/b;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V

    invoke-interface {p1, p3, p2, p4}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Lcom/meishu/sdk/meishu_ad/nativ/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public bindMediaView(Landroid/view/ViewGroup;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    new-instance v1, Lcom/meishu/sdk/platform/ms/recycler/b;

    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->c:Lcom/meishu/sdk/platform/ms/recycler/c;

    invoke-virtual {v2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->c:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 3
    iget-object v2, v2, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 4
    check-cast v2, Lcom/meishu/sdk/meishu_ad/nativ/f;

    invoke-direct {v1, v2, p2}, Lcom/meishu/sdk/platform/ms/recycler/b;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V

    const/4 p2, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Lcom/meishu/sdk/meishu_ad/nativ/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/meishu/sdk/platform/ms/recycler/t;->a()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->j:I

    .line 6
    .line 7
    return-void
.end method

.method public final d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/String;

    .line 3
    .line 4
    const-string v2, "Z3N3"

    .line 5
    .line 6
    invoke-static {v2}, Lcom/meishu/sdk/core/utils/g1;->a(Ljava/lang/String;)[B

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->d:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 27
    .line 28
    .line 29
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-object v1, v0

    .line 32
    :goto_0
    if-nez v1, :cond_1

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    const/4 v2, 0x1

    .line 36
    :try_start_2
    iput-boolean v2, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->l:Z

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->d:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 42
    .line 43
    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48
    .line 49
    return-object v1

    .line 50
    :catchall_1
    return-object v0
.end method

.method public destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_4

    .line 6
    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    instance-of v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->d()V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->f:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(I)V

    .line 41
    .line 42
    .line 43
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->getInstance()Lcom/meishu/sdk/core/view/FeedAdOverlayManager;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/recycler/l;->e()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->removeOverlay(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 60
    .line 61
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getdUrl()[Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    array-length v1, v0

    .line 72
    if-lez v1, :cond_2

    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    aget-object v0, v0, v1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    goto :goto_3

    .line 80
    :cond_2
    const/4 v0, 0x0

    .line 81
    :goto_1
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 82
    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 92
    .line 93
    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPackageName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    const-string v1, ""

    .line 103
    .line 104
    :goto_2
    sget-object v2, Lcom/meishu/sdk/core/utils/DownloadUtils;->h:Ljava/util/Map;

    .line 105
    .line 106
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-nez v2, :cond_4

    .line 111
    .line 112
    sget-object v2, Lcom/meishu/sdk/core/utils/DownloadUtils;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 113
    .line 114
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_5

    .line 122
    .line 123
    sget-object v0, Lcom/meishu/sdk/core/utils/DownloadUtils;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .line 127
    .line 128
    goto :goto_4

    .line 129
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    .line 131
    .line 132
    :cond_5
    :goto_4
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 7
    .line 8
    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getReq_id()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "_"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->n:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return-object v0

    .line 34
    :catch_0
    const-string v0, ""

    .line 35
    .line 36
    return-object v0
.end method

.method public getActionText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->d:Ljava/lang/String;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    const-string v0, ""

    .line 21
    .line 22
    return-object v0
.end method

.method public getAdPatternType()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x2

    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    return v2

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->x:I

    .line 26
    .line 27
    packed-switch v0, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getAdPatternType()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    return v0

    .line 37
    :pswitch_0
    const/16 v0, 0xd

    .line 38
    .line 39
    return v0

    .line 40
    :pswitch_1
    const/16 v0, 0xb

    .line 41
    .line 42
    return v0

    .line 43
    :cond_1
    :pswitch_2
    return v1

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getAdView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/IAd;->getAdView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getAppIntro()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_intro()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const-string v0, ""

    .line 23
    .line 24
    return-object v0
.end method

.method public getAppIntroUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_intor_url()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const-string v0, ""

    .line 23
    .line 24
    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const-string v0, ""

    .line 23
    .line 24
    return-object v0
.end method

.method public getAppPermissionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/domain/MeishuAdInfo$PermissionBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_permission()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public getAppPremissionUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_permission_url()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const-string v0, ""

    .line 23
    .line 24
    return-object v0
.end method

.method public getAppSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_size()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const-string v0, ""

    .line 23
    .line 24
    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_ver()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const-string v0, ""

    .line 23
    .line 24
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->c:Ljava/lang/String;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    const-string v0, ""

    .line 21
    .line 22
    return-object v0
.end method

.method public getCustomVideo()Lcom/meishu/sdk/platform/ms/recycler/MsCustomVideo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->a:Lcom/meishu/sdk/platform/ms/recycler/MsCustomVideo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getData()Lcom/meishu/sdk/core/utils/ResultBean;
    .locals 3

    .line 1
    new-instance v0, Lcom/meishu/sdk/core/utils/ResultBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/meishu/sdk/core/utils/ResultBean;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->c:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 9
    .line 10
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setCid(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->c:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 22
    .line 23
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCat()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setCat(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->c:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 35
    .line 36
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setAderId(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->c:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 48
    .line 49
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setFromId(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->c:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 61
    .line 62
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDrawing()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setDrawing(I)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->c:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 72
    .line 73
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 74
    .line 75
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setPid(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->c:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 85
    .line 86
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 87
    .line 88
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getReq_id()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setReqId(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->c:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 98
    .line 99
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 100
    .line 101
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEcpm()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setPrice(I)V

    .line 108
    .line 109
    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->c:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 116
    .line 117
    iget-object v2, v2, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 118
    .line 119
    check-cast v2, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEcpm()I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v2, ""

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setEcpm(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->c:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 141
    .line 142
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 143
    .line 144
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getS_ext()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setS_ext(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->c:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 154
    .line 155
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 156
    .line 157
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 158
    .line 159
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getS_code()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setS_code(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->c:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 167
    .line 168
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 169
    .line 170
    check-cast v1, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 171
    .line 172
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/a;->a(Lcom/meishu/sdk/core/ad/BaseAdSlot;)Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setAdInfo(Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .line 178
    .line 179
    goto :goto_0

    .line 180
    :catchall_0
    move-exception v1

    .line 181
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 182
    .line 183
    .line 184
    :goto_0
    const-string v1, "MS"

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setSdkName(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getDesc()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public getDeveloper()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDeveloper()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const-string v0, ""

    .line 23
    .line 24
    return-object v0
.end method

.method public getDuration()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getDuration()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    int-to-long v0, v0

    .line 34
    return-wide v0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 46
    .line 47
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-wide v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->y:J

    .line 52
    .line 53
    const-wide/16 v2, 0x3e8

    .line 54
    .line 55
    mul-long/2addr v0, v2

    .line 56
    return-wide v0

    .line 57
    :cond_1
    const-wide/16 v0, 0x0

    .line 58
    .line 59
    return-wide v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->f:Ljava/lang/String;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    const-string v0, ""

    .line 21
    .line 22
    return-object v0
.end method

.method public getFromId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const-string v0, ""

    .line 23
    .line 24
    return-object v0
.end method

.method public getFromLogo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const-string v0, ""

    .line 23
    .line 24
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->b:I

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method public getIconTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->e:Ljava/lang/String;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    const-string v0, ""

    .line 21
    .line 22
    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getIconUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public getImgUrls()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getImgUrls()[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getInteractionType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getMediaView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const-string v0, ""

    .line 23
    .line 24
    return-object v0
.end method

.method public getPlatFormEcpm()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "MS"

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrivacyAgreement()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPrivacy_agreement()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const-string v0, ""

    .line 23
    .line 24
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getTitle()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public getVideoCover()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getVideo_cover()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    const-string v0, ""

    .line 17
    .line 18
    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/recycler/l;->getAdPatternType()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x2

    .line 7
    if-ne v1, v2, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getImgUrls()[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    move-object v1, v0

    .line 21
    :goto_0
    const/4 v2, 0x0

    .line 22
    aget-object v0, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    return-object v0

    .line 25
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->a:I

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method public isAdValid()Z
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->c:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 4
    .line 5
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getExpire_timestamp()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    const-wide/32 v0, 0x1a8ce0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    mul-int/lit16 v0, v0, 0x3e8

    .line 18
    .line 19
    int-to-long v0, v0

    .line 20
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->c:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 25
    .line 26
    iget-object v4, v4, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 27
    .line 28
    check-cast v4, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 29
    .line 30
    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getLoadedTime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    sub-long/2addr v2, v4

    .line 35
    cmp-long v0, v2, v0

    .line 36
    .line 37
    if-ltz v0, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    return v0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :cond_1
    const/4 v0, 0x1

    .line 46
    return v0
.end method

.method public isNativeExpress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public mute()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/recycler/l;->getAdPatternType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/n0;->mute()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public pauseVideo()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/recycler/l;->getAdPatternType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/n0;->pause()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public replay()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/recycler/l;->getAdPatternType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/meishu/sdk/platform/ms/recycler/l$g;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/ms/recycler/l$g;-><init>(Lcom/meishu/sdk/platform/ms/recycler/l;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v2, 0x12c

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public resumeVideo()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/recycler/l;->getAdPatternType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/n0;->resume()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public sendLossNotification(Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->c:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->c:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 10
    .line 11
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getLossUrl()[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1, p1}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public sendWinNotification(Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->c:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->c:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 10
    .line 11
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getWinUrl()[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1, p1}, Lcom/meishu/sdk/core/utils/a0;->b(Landroid/content/Context;[Ljava/lang/String;Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setDownloadStatusListener(Lcom/meishu/sdk/core/ad/recycler/DownloadStatusListener;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->h:Lcom/meishu/sdk/core/ad/recycler/DownloadStatusListener;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getInteractionType()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    const/4 v2, 0x1

    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getdUrl()[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_4

    .line 34
    :cond_2
    move-object v0, v2

    .line 35
    :goto_1
    if-eqz v0, :cond_3

    .line 36
    .line 37
    array-length v3, v0

    .line 38
    if-lez v3, :cond_3

    .line 39
    .line 40
    aget-object v2, v0, v1

    .line 41
    .line 42
    :cond_3
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 53
    .line 54
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPackageName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    goto :goto_2

    .line 63
    :cond_4
    const-string v0, ""

    .line 64
    .line 65
    :goto_2
    sget-object v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->h:Ljava/util/Map;

    .line 66
    .line 67
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_5

    .line 72
    .line 73
    if-eqz p1, :cond_5

    .line 74
    .line 75
    sget-object v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    .line 77
    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_6

    .line 85
    .line 86
    if-eqz p1, :cond_6

    .line 87
    .line 88
    sget-object v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 89
    .line 90
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    :cond_6
    :goto_3
    return-void

    .line 94
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public setExpressMediaListener(Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;)V
    .locals 0

    return-void
.end method

.method public startVideo()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/recycler/l;->getAdPatternType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/meishu/sdk/platform/ms/recycler/l$f;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/ms/recycler/l$f;-><init>(Lcom/meishu/sdk/platform/ms/recycler/l;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v2, 0x12c

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public stopVideo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->l()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public unmute()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/recycler/l;->getAdPatternType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/n0;->unmute()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
