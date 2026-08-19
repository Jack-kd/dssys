.class public Lcom/meishu/sdk/platform/ms/recycler/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;


# static fields
.field public static C:I = 0xfa


# instance fields
.field public A:Z

.field public B:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field public a:Lcom/meishu/sdk/meishu_ad/nativ/b;

.field public b:Lcom/meishu/sdk/platform/ms/recycler/c;

.field public c:Landroid/widget/RelativeLayout;

.field public d:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

.field public e:I

.field public f:I

.field public g:Z

.field public h:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;

.field public i:I

.field public j:Z

.field public k:Z

.field public volatile l:Z

.field public m:I

.field public n:Landroid/widget/FrameLayout;

.field public o:Lcom/meishu/sdk/core/view/TouchAdContainer;

.field public p:Z

.field public q:Landroid/widget/FrameLayout;

.field public r:I

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public w:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field public x:I

.field public y:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field public z:I


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/c;Lcom/meishu/sdk/meishu_ad/nativ/b;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->f:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->g:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->u:Z

    .line 10
    .line 11
    new-instance v1, Lcom/meishu/sdk/platform/ms/recycler/i$j;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/ms/recycler/i$j;-><init>(Lcom/meishu/sdk/platform/ms/recycler/i;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->y:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 17
    .line 18
    iput v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->z:I

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->A:Z

    .line 22
    .line 23
    new-instance v0, Lcom/meishu/sdk/platform/ms/recycler/i$m;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/ms/recycler/i$m;-><init>(Lcom/meishu/sdk/platform/ms/recycler/i;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->B:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 33
    .line 34
    iput p3, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->x:I

    .line 35
    .line 36
    iget p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->i:I

    .line 37
    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->b()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iput p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->i:I

    .line 49
    .line 50
    :cond_0
    :try_start_0
    sget-object p1, Lcom/meishu/sdk/core/ad/AdType;->FEED_MIX:Lcom/meishu/sdk/core/ad/AdType;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/meishu/sdk/core/utils/h;->a()V

    .line 56
    .line 57
    .line 58
    iget-object p3, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 59
    .line 60
    invoke-interface {p3}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-virtual {p3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-static {p3, p1}, Lcom/meishu/sdk/core/utils/h;->a(II)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iget-object p3, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 77
    .line 78
    invoke-interface {p3}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    invoke-virtual {p3, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setAct_type(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    :goto_0
    invoke-interface {p2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_index()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-lez p1, :cond_1

    .line 99
    .line 100
    invoke-interface {p2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_index()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    mul-int/lit8 p1, p1, 0x5

    .line 109
    .line 110
    sput p1, Lcom/meishu/sdk/platform/ms/recycler/i;->C:I

    .line 111
    .line 112
    :cond_1
    return-void
.end method

.method private synthetic a(Lcom/meishu/sdk/core/view/TouchAdContainer;FFJFFFI)V
    .locals 9

    move/from16 v8, p9

    int-to-float v0, v8

    div-float v0, v0, p8

    .line 44
    sget v1, Lcom/meishu/sdk/platform/ms/recycler/i;->C:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    move/from16 v7, p7

    .line 45
    invoke-virtual/range {v0 .. v8}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Lcom/meishu/sdk/core/view/TouchAdContainer;FFJFFI)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/meishu/sdk/platform/ms/recycler/i;)V
    .locals 2

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    :try_start_0
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->t:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 14
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/recycler/c;->c:Lcom/meishu/sdk/platform/ms/recycler/a;

    .line 15
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/ms/recycler/a;->onADExposure()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 16
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    :goto_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->d:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    if-eqz v1, :cond_0

    .line 18
    invoke-interface {v1}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdExposure()V

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v1

    .line 20
    iput-boolean v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->B:Z

    .line 21
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/recycler/i;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public static synthetic a(Lcom/meishu/sdk/platform/ms/recycler/i;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    .line 23
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/recycler/i;->d()V

    .line 24
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->v:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    invoke-virtual {p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object p2

    check-cast p2, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    invoke-virtual {p2}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    move-result-object p2

    .line 26
    invoke-static {}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->getInstance()Lcom/meishu/sdk/core/view/FeedAdOverlayManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/recycler/i;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p1}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->onAdClickedIfOverlayExists(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic a(Lcom/meishu/sdk/platform/ms/recycler/i;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->p:Z

    return p1
.end method

.method public static a(Lcom/meishu/sdk/platform/ms/recycler/i;[B)Z
    .locals 2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    const/4 v0, 0x4

    .line 4
    :try_start_0
    new-array v1, v0, [B

    .line 5
    invoke-static {p1, p0, v1, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    new-instance p1, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {p1, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v1, 0x10

    .line 7
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    const-string v1, "47494638"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    return v0

    :catchall_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return p0
.end method

.method public static b(Lcom/meishu/sdk/platform/ms/recycler/i;)V
    .locals 13

    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/h;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getAdPatternType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/h;->b(I)I

    move-result v4

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 19
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v3}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v5}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getLoadedTime()J

    move-result-wide v5

    iget-object v7, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v7}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v7

    invoke-virtual {v7}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDclk()Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;

    move-result-object v7

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(Ljava/lang/String;JLcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;)V

    move-wide v2, v0

    .line 20
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    move-result-object v1

    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_index2()I

    move-result v0

    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v5}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_index()I

    move-result v5

    iget-object v6, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v6}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_delay()I

    move-result v6

    int-to-long v6, v6

    iget-object v8, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v8}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v8

    invoke-virtual {v8}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_count()I

    move-result v8

    move-wide v9, v2

    move v3, v5

    move-wide v5, v6

    move v7, v8

    iget v8, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->i:I

    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEcpm()I

    move-result v2

    move-wide v11, v9

    new-instance v10, Lcom/meishu/sdk/platform/ms/recycler/f;

    invoke-direct {v10, p0, v11, v12}, Lcom/meishu/sdk/platform/ms/recycler/f;-><init>(Lcom/meishu/sdk/platform/ms/recycler/i;J)V

    move v9, v2

    move v2, v0

    invoke-virtual/range {v1 .. v10}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(IIIJIIILcom/meishu/sdk/platform/ms/splash/ShakeUtil$c;)V

    .line 21
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/meishu/sdk/platform/ms/recycler/i;Lcom/meishu/sdk/core/view/TouchAdContainer;FFJFFFI)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Lcom/meishu/sdk/core/view/TouchAdContainer;FFJFFFI)V

    return-void
.end method

.method public static synthetic b(Lcom/meishu/sdk/platform/ms/recycler/i;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->j:Z

    return p1
.end method

.method public static c(Lcom/meishu/sdk/platform/ms/recycler/i;)V
    .locals 14

    .line 2
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->j:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->g:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->p:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->j:Z

    .line 4
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 5
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/recycler/c;->c:Lcom/meishu/sdk/platform/ms/recycler/a;

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 7
    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getAdPatternType()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 8
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v1

    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v3}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getMonitorUrl()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v5}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v5

    .line 9
    iget-wide v5, v5, Lcom/meishu/sdk/meishu_ad/nativ/f;->C:J

    .line 10
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v6}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v5}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v5

    .line 11
    iget-wide v5, v5, Lcom/meishu/sdk/meishu_ad/nativ/f;->D:J

    .line 12
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/meishu/sdk/core/utils/i0;->b([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setMonitorUrl([Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 14
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/recycler/c;->c:Lcom/meishu/sdk/platform/ms/recycler/a;

    .line 15
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/ms/recycler/a;->onADExposure()V

    .line 16
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->d:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    if-eqz v1, :cond_0

    .line 17
    invoke-interface {v1}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdExposure()V

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v1

    .line 19
    iput-boolean v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->B:Z

    .line 20
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/recycler/i;->c()V

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v1

    invoke-static {v1}, Lcom/meishu/sdk/core/utils/h;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getAdPatternType()I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 22
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v1

    invoke-static {v1}, Lcom/meishu/sdk/core/utils/h;->b(I)I

    move-result v5

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 24
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v4}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v6}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getLoadedTime()J

    move-result-wide v6

    iget-object v8, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v8}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v8

    invoke-virtual {v8}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDclk()Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;

    move-result-object v8

    invoke-virtual {v3, v4, v6, v7, v8}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(Ljava/lang/String;JLcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;)V

    move-wide v3, v1

    .line 25
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    move-result-object v2

    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_index2()I

    move-result v1

    iget-object v6, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v6}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_index()I

    move-result v6

    iget-object v7, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v7}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v7

    invoke-virtual {v7}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_delay()I

    move-result v7

    int-to-long v7, v7

    iget-object v9, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v9}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v9

    invoke-virtual {v9}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_count()I

    move-result v9

    move-wide v10, v3

    move v4, v6

    move-wide v6, v7

    move v8, v9

    iget v9, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->i:I

    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v3}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEcpm()I

    move-result v3

    move-wide v12, v10

    new-instance v11, Lcom/meishu/sdk/platform/ms/recycler/j;

    invoke-direct {v11, p0, v12, v13}, Lcom/meishu/sdk/platform/ms/recycler/j;-><init>(Lcom/meishu/sdk/platform/ms/recycler/i;J)V

    move v10, v3

    move v3, v1

    invoke-virtual/range {v2 .. v11}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(IIIJIIILcom/meishu/sdk/platform/ms/splash/ShakeUtil$c;)V

    .line 26
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(Z)V

    :cond_2
    return-void
.end method

.method public static synthetic c(Lcom/meishu/sdk/platform/ms/recycler/i;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->A:Z

    return p1
.end method

.method public static synthetic d(Lcom/meishu/sdk/platform/ms/recycler/i;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->g:Z

    return p1
.end method


# virtual methods
.method public a(Ljava/util/List;ILjava/lang/String;)Landroid/graphics/drawable/GradientDrawable;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Landroid/graphics/drawable/GradientDrawable;"
        }
    .end annotation

    .line 174
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 175
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/4 v2, -0x1

    .line 176
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    if-lez p2, :cond_0

    .line 177
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_0
    if-eqz p1, :cond_1

    .line 178
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x4

    if-ne p2, p3, :cond_1

    .line 179
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x2

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    const/4 v9, 0x3

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    const/16 v11, 0x8

    new-array v11, v11, [F

    aput p2, v11, v1

    aput v2, v11, v3

    aput v4, v11, v6

    aput v5, v11, v9

    aput v7, v11, p3

    const/4 p2, 0x5

    aput v8, v11, p2

    const/4 p2, 0x6

    aput v10, v11, p2

    const/4 p2, 0x7

    aput p1, v11, p2

    invoke-virtual {v0, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    .line 180
    :catch_0
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    return-object p1
.end method

.method public final a(ILjava/lang/String;)V
    .locals 3

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->d:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdRenderFailed()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 162
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    move-result-object v1

    new-instance v2, Lcom/meishu/sdk/core/utils/q;

    invoke-direct {v2, v0, p1, p2}, Lcom/meishu/sdk/core/utils/q;-><init>([Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 164
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0, p2}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;ILjava/lang/String;)V

    .line 165
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getMonitorUrl()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/meishu/sdk/core/utils/i0;->b([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 166
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/meishu/sdk/core/view/TouchAdContainer;)V
    .locals 4

    if-eqz p1, :cond_5

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 28
    new-instance v0, Lcom/meishu/sdk/core/view/TouchPositionListener;

    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-direct {v0, v1}, Lcom/meishu/sdk/core/view/TouchPositionListener;-><init>(Lcom/meishu/sdk/core/ad/IAd;)V

    invoke-virtual {p2, v0}, Lcom/meishu/sdk/core/view/TouchAdContainer;->setTouchPositionListener(Lcom/meishu/sdk/core/view/TouchPositionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception v0

    .line 29
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    :cond_0
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->o:Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 31
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 32
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 33
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->n:Landroid/widget/FrameLayout;

    if-ne v2, v3, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_2
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->n:Landroid/widget/FrameLayout;

    .line 35
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    const/4 v0, -0x1

    if-gtz p1, :cond_3

    move p1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 36
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gtz v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 37
    :goto_2
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->n:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, p1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->n:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 39
    :goto_3
    new-instance p1, LU0/b;

    invoke-direct {p1, p0, p2}, LU0/b;-><init>(Lcom/meishu/sdk/platform/ms/recycler/i;Lcom/meishu/sdk/core/view/TouchAdContainer;)V

    .line 40
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->n:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/meishu/sdk/platform/ms/recycler/i$k;

    invoke-direct {v1, p0, p1}, Lcom/meishu/sdk/platform/ms/recycler/i$k;-><init>(Lcom/meishu/sdk/platform/ms/recycler/i;Lcom/meishu/sdk/platform/ms/recycler/t$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 41
    new-instance p1, Lcom/meishu/sdk/platform/ms/recycler/i$l;

    invoke-direct {p1, p0, p2}, Lcom/meishu/sdk/platform/ms/recycler/i$l;-><init>(Lcom/meishu/sdk/platform/ms/recycler/i;Lcom/meishu/sdk/core/view/TouchAdContainer;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 42
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->B:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 43
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_5
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/meishu/sdk/core/view/ShakeImageView;)V
    .locals 2

    .line 157
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->u:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/meishu/sdk/core/utils/r0;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    const-string p1, "i"

    const-string p2, "no show shake float view"

    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->c:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/meishu/sdk/platform/ms/recycler/i$e;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/meishu/sdk/platform/ms/recycler/i$e;-><init>(Lcom/meishu/sdk/platform/ms/recycler/i;Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/meishu/sdk/core/view/ShakeImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;IIII)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    .line 76
    invoke-static {}, Lcom/meishu/sdk/core/utils/r0;->d()Z

    move-result v11

    const/4 v12, 0x1

    .line 77
    iput-boolean v12, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->u:Z

    if-eqz v11, :cond_0

    .line 78
    sget v0, Lcom/meishu/sdk/R$layout;->ms_item_pre_render_smallimage:I

    goto :goto_0

    .line 79
    :cond_0
    sget v0, Lcom/meishu/sdk/R$layout;->ms_item_pre_render_smallimage_v2:I

    .line 80
    :goto_0
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 81
    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    const/16 v7, 0x191

    if-eqz p2, :cond_2

    .line 82
    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    move-result v5

    if-ne v5, v7, :cond_2

    if-eqz v11, :cond_1

    .line 83
    sget v0, Lcom/meishu/sdk/R$layout;->ms_item_pre_render_smallimage_left:I

    goto :goto_1

    .line 84
    :cond_1
    sget v0, Lcom/meishu/sdk/R$layout;->ms_item_pre_render_smallimage_left_v2:I

    :cond_2
    :goto_1
    const/4 v5, 0x0

    .line 85
    invoke-static {v3, v0, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 86
    sget v0, Lcom/meishu/sdk/R$id;->ms_item_pre_render_smallimage_rootView:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->c:Landroid/widget/RelativeLayout;

    move/from16 v6, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v13, p6

    .line 87
    invoke-virtual {v0, v6, v9, v10, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 88
    sget v0, Lcom/meishu/sdk/R$id;->ms_item_pre_render_smallimage_imageview:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/meishu/sdk/core/view/RoundImageView;

    .line 89
    sget v0, Lcom/meishu/sdk/R$id;->ms_item_pre_render_smallimage_videoContainer:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 90
    sget v0, Lcom/meishu/sdk/R$id;->ms_item_pre_render_small_iamge_imagebg:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/ImageView;

    .line 91
    sget v0, Lcom/meishu/sdk/R$id;->ms_item_pre_render_smallimage_logo:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/ImageView;

    .line 92
    sget v0, Lcom/meishu/sdk/R$id;->ms_item_pre_render_smallimage_title:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/TextView;

    .line 93
    sget v0, Lcom/meishu/sdk/R$id;->ms_item_pre_render_smallimage_content:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/TextView;

    .line 94
    sget v0, Lcom/meishu/sdk/R$id;->ms_item_pre_render_smallimage_fromtext:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 95
    sget v0, Lcom/meishu/sdk/R$id;->ms_item_pre_render_smallimage_shake_text:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    sget v5, Lcom/meishu/sdk/R$id;->ms_item_pre_render_smallimage_close:I

    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 97
    sget v12, Lcom/meishu/sdk/R$id;->ms_item_pre_render_smallimage_shake_image:I

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    move/from16 v16, v4

    .line 98
    sget v4, Lcom/meishu/sdk/R$id;->ms_shakeRoot:I

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    move-object/from16 p3, v5

    .line 99
    sget v5, Lcom/meishu/sdk/R$id;->ms_shake_img:I

    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/meishu/sdk/core/view/ShakeImageView;

    move-object/from16 p4, v10

    .line 100
    sget v10, Lcom/meishu/sdk/R$id;->ms_shake_text:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move/from16 v17, v11

    .line 101
    iget-object v11, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v11}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v11

    .line 102
    iget-object v11, v11, Lcom/meishu/sdk/core/ad/BaseAdSlot;->title:Ljava/lang/String;

    .line 103
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v11, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v11}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v11

    .line 105
    iget-object v11, v11, Lcom/meishu/sdk/meishu_ad/nativ/f;->c:Ljava/lang/String;

    .line 106
    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v11, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v11}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v11

    .line 108
    iget-object v11, v11, Lcom/meishu/sdk/meishu_ad/nativ/f;->e:Ljava/lang/String;

    .line 109
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v11, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v11}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v11

    invoke-virtual {v11}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v11

    invoke-static {v11}, Lcom/meishu/sdk/core/utils/h;->d(I)Z

    move-result v11

    move-object/from16 p5, v7

    const/4 v7, 0x0

    if-eqz v11, :cond_3

    .line 111
    invoke-virtual {v1, v3, v4, v5}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/meishu/sdk/core/view/ShakeImageView;)V

    .line 112
    invoke-virtual {v12, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v10, :cond_5

    .line 113
    const-string v4, "\u6447\u4e00\u6447"

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 114
    :cond_3
    iget-object v11, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v11}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v11

    invoke-virtual {v11}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v11

    invoke-static {v11}, Lcom/meishu/sdk/core/utils/h;->e(I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 115
    invoke-virtual {v1, v3, v4, v5}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/meishu/sdk/core/view/ShakeImageView;)V

    .line 116
    invoke-virtual {v12, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v10, :cond_5

    .line 117
    const-string v4, "\u626d\u4e00\u626d"

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    if-nez v17, :cond_5

    .line 118
    sget v4, Lcom/meishu/sdk/R$drawable;->ms_ic_right:I

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    invoke-virtual {v12, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    :cond_5
    :goto_2
    iget-object v4, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v4}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    const-string v4, "\u7acb\u5373\u4e0b\u8f7d"

    goto :goto_3

    :cond_6
    const-string v4, "\u67e5\u770b\u8be6\u60c5"

    :goto_3
    if-eqz v0, :cond_7

    .line 121
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_7
    iget-object v0, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getAdPatternType()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_a

    const/4 v0, 0x4

    .line 123
    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 124
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :try_start_0
    iget-object v0, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    if-eqz v0, :cond_8

    const/4 v5, 0x1

    .line 126
    invoke-virtual {v0, v5}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setDisplayMode(I)V

    .line 127
    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setContainerWidth(F)V

    .line 128
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42960000    # 75.0f

    mul-float/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setContainerHeight(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    :cond_8
    :goto_4
    iget-object v0, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    new-instance v2, Lcom/meishu/sdk/platform/ms/recycler/b;

    iget-object v4, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    invoke-virtual {v4}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    iget-object v4, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 131
    iget-object v4, v4, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 132
    check-cast v4, Lcom/meishu/sdk/meishu_ad/nativ/f;

    new-instance v5, Lcom/meishu/sdk/platform/ms/recycler/i$a;

    invoke-direct {v5, v1}, Lcom/meishu/sdk/platform/ms/recycler/i$a;-><init>(Lcom/meishu/sdk/platform/ms/recycler/i;)V

    invoke-direct {v2, v4, v5}, Lcom/meishu/sdk/platform/ms/recycler/b;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V

    const/4 v4, 0x0

    invoke-interface {v0, v6, v4, v2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Lcom/meishu/sdk/meishu_ad/nativ/e;)V

    .line 133
    iget-object v0, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getImgUrls()[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, v7

    .line 134
    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 135
    sget-object v0, Lcom/meishu/sdk/core/utils/h0;->a:Ljava/util/concurrent/ExecutorService;

    .line 136
    sget-object v7, Lcom/meishu/sdk/core/utils/h0$b;->a:Lcom/meishu/sdk/core/utils/h0;

    .line 137
    new-instance v0, Lcom/meishu/sdk/platform/ms/recycler/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v5, p2

    move-object/from16 v10, p3

    move-object/from16 v4, p4

    :try_start_2
    invoke-direct/range {v0 .. v6}, Lcom/meishu/sdk/platform/ms/recycler/g;-><init>(Lcom/meishu/sdk/platform/ms/recycler/i;Ljava/lang/String;Landroid/content/Context;Landroid/widget/ImageView;Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v7, v0}, Lcom/meishu/sdk/core/utils/h0;->a(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    move-object v2, v9

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v10, p3

    goto :goto_6

    :cond_9
    move-object/from16 v10, p3

    goto :goto_5

    .line 138
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :cond_a
    move-object/from16 v10, p3

    move-object/from16 v4, p4

    const/16 v0, 0x8

    .line 139
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 140
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v0, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getImgUrls()[Ljava/lang/String;

    move-result-object v0

    aget-object v6, v0, v7

    new-instance v0, Lcom/meishu/sdk/platform/ms/recycler/i$b;

    move-object/from16 v3, p1

    move-object v5, v4

    move-object v2, v9

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/meishu/sdk/platform/ms/recycler/i$b;-><init>(Lcom/meishu/sdk/platform/ms/recycler/i;Lcom/meishu/sdk/core/view/RoundImageView;Landroid/content/Context;FLandroid/widget/ImageView;)V

    const/4 v5, 0x1

    .line 142
    invoke-static {v6, v0, v5}, Lcom/meishu/sdk/core/cache/a;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/y;Z)V

    .line 143
    :goto_7
    invoke-virtual {v1, v13}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Landroid/widget/ImageView;)V

    .line 144
    invoke-virtual {v1, v10, v8}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Landroid/widget/TextView;Landroid/view/View;)V

    if-eqz v17, :cond_c

    if-eqz p2, :cond_c

    .line 145
    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    move-result v0

    const/16 v3, 0x12d

    if-eq v0, v3, :cond_b

    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    move-result v0

    const/16 v3, 0x191

    if-ne v0, v3, :cond_c

    .line 146
    :cond_b
    iget-object v3, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->c:Landroid/widget/RelativeLayout;

    move-object v7, v10

    const/4 v10, 0x0

    move-object/from16 v9, p5

    move-object v6, v2

    move-object v8, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v10}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/meishu/sdk/core/view/RoundImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    :cond_c
    if-nez v17, :cond_f

    .line 147
    :try_start_3
    iget-object v0, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 148
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 149
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_d

    goto :goto_8

    .line 150
    :cond_d
    iget-object v0, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->c:Landroid/widget/RelativeLayout;

    sget v2, Lcom/meishu/sdk/R$id;->ms_item_pre_render_smallimage_app_logo_name:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 151
    iget-object v2, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->c:Landroid/widget/RelativeLayout;

    sget v3, Lcom/meishu/sdk/R$id;->ms_item_pre_render_smallimage_logo_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_f

    if-nez v2, :cond_e

    goto :goto_8

    .line 152
    :cond_e
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 153
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xf

    .line 154
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 155
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :goto_8
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getAdPatternType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    instance-of v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/d;

    if-eqz v1, :cond_0

    .line 67
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/d;

    new-instance v1, Lcom/meishu/sdk/platform/ms/recycler/i$n;

    invoke-direct {v1, p0, p1, p2}, Lcom/meishu/sdk/platform/ms/recycler/i$n;-><init>(Lcom/meishu/sdk/platform/ms/recycler/i;Landroid/content/Context;Ljava/util/List;)V

    .line 68
    iget-object p1, v0, Lcom/meishu/sdk/meishu_ad/nativ/d;->h:Lcom/meishu/sdk/meishu_ad/n0;

    .line 69
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/n0;->getVideoView()Landroid/view/View;

    move-result-object p1

    .line 70
    instance-of p1, p1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, v0, Lcom/meishu/sdk/meishu_ad/nativ/d;->h:Lcom/meishu/sdk/meishu_ad/n0;

    .line 72
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/n0;->getVideoView()Landroid/view/View;

    move-result-object p1

    .line 73
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    invoke-virtual {p1, v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setOnExposureListener(Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V

    :cond_0
    return-void

    .line 74
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->c:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/meishu/sdk/platform/ms/recycler/d;

    new-instance v3, Lcom/meishu/sdk/platform/ms/recycler/e;

    invoke-direct {v3, p0}, Lcom/meishu/sdk/platform/ms/recycler/e;-><init>(Lcom/meishu/sdk/platform/ms/recycler/i;)V

    invoke-direct {v2, v0, v3}, Lcom/meishu/sdk/platform/ms/recycler/d;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/b;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcom/meishu/sdk/platform/ms/recycler/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(Landroid/widget/ImageView;)V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/meishu/sdk/core/bquery/i;

    invoke-direct {v0, p1}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/view/View;)V

    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-virtual {v0, v2, v1}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 171
    :cond_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->showLogo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_1
    const/16 v0, 0x8

    .line 173
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final a(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 1

    .line 167
    new-instance v0, Lcom/meishu/sdk/platform/ms/recycler/i$f;

    invoke-direct {v0, p0, p2}, Lcom/meishu/sdk/platform/ms/recycler/i$f;-><init>(Lcom/meishu/sdk/platform/ms/recycler/i;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/meishu/sdk/core/view/RoundImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 181
    :try_start_0
    iget-object v9, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    invoke-virtual {v9}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 182
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 183
    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getContainer()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;

    move-result-object v10

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x0

    if-eqz v10, :cond_1

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getContainer()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;->getPadding()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 186
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lt v11, v14, :cond_0

    .line 187
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 188
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 189
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v15, 0x3

    .line 190
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    float-to-int v10, v10

    int-to-float v11, v11

    mul-float/2addr v11, v9

    float-to-int v11, v11

    int-to-float v13, v13

    mul-float/2addr v13, v9

    float-to-int v13, v13

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v12, v12

    .line 191
    invoke-virtual {v0, v10, v11, v13, v12}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_6

    .line 192
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getContainer()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;->getBorder()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 193
    invoke-virtual {v10}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getClip()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v10}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v10}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lt v11, v14, :cond_1

    .line 194
    invoke-virtual {v10}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v10

    const-string v11, ""

    const/4 v12, 0x0

    invoke-virtual {v1, v10, v12, v11}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Ljava/util/List;ILjava/lang/String;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v10

    .line 195
    invoke-virtual {v0, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 196
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v10, 0x14

    const-string v11, "#"

    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    .line 197
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getMargin()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getMargin()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v14, :cond_2

    .line 198
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 199
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v12

    invoke-virtual {v12}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getMargin()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v12, v12

    iput v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 200
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v12

    invoke-virtual {v12}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getMargin()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v12, v12

    iput v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 201
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v12

    invoke-virtual {v12}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getMargin()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x2

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v12, v12

    iput v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v12

    invoke-virtual {v12}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getMargin()Ljava/util/List;

    move-result-object v12

    const/4 v15, 0x3

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v12, v12

    iput v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 203
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getPadding()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getPadding()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v14, :cond_3

    .line 205
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getPadding()Ljava/util/List;

    move-result-object v0

    const/4 v15, 0x3

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v0, v0

    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v12

    invoke-virtual {v12}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getPadding()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v12, v12

    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v13

    invoke-virtual {v13}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getPadding()Ljava/util/List;

    move-result-object v13

    const/4 v15, 0x1

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v9

    float-to-int v13, v13

    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v15

    invoke-virtual {v15}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getPadding()Ljava/util/List;

    move-result-object v15

    const/4 v14, 0x2

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v9

    float-to-int v14, v14

    invoke-virtual {v2, v0, v12, v13, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 206
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getText()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getText()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v12

    invoke-virtual {v12}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getText()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v12

    invoke-virtual {v12}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getColor()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getText()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getSize()I

    move-result v0

    if-lez v0, :cond_5

    .line 210
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getText()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getSize()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 211
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getText()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getLines()I

    move-result v0

    if-nez v0, :cond_6

    .line 212
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1

    .line 213
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getText()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getLines()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 214
    :cond_7
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v0

    if-eqz v0, :cond_d

    if-eqz v3, :cond_d

    .line 215
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getMargin()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getMargin()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v12, 0x4

    if-lt v0, v12, :cond_8

    .line 216
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 217
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v12

    invoke-virtual {v12}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getMargin()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v12, v12

    iput v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 218
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v12

    invoke-virtual {v12}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getMargin()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v12, v12

    iput v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 219
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v12

    invoke-virtual {v12}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getMargin()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x2

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v12, v12

    iput v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 220
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v12

    invoke-virtual {v12}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getMargin()Ljava/util/List;

    move-result-object v12

    const/4 v15, 0x3

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v12, v12

    iput v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 221
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getPadding()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getPadding()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v12, 0x4

    if-lt v0, v12, :cond_9

    .line 223
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getPadding()Ljava/util/List;

    move-result-object v0

    const/4 v15, 0x3

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v0, v0

    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v12

    invoke-virtual {v12}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getPadding()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v12, v12

    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v13

    invoke-virtual {v13}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getPadding()Ljava/util/List;

    move-result-object v13

    const/4 v15, 0x1

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v9

    float-to-int v13, v13

    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v14

    invoke-virtual {v14}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getPadding()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x2

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v9

    float-to-int v14, v14

    invoke-virtual {v3, v0, v12, v13, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 224
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getText()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 225
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getText()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v12

    invoke-virtual {v12}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getText()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v12

    invoke-virtual {v12}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getColor()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getText()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getSize()I

    move-result v0

    if-lez v0, :cond_b

    .line 228
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getText()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getSize()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 229
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getText()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getLines()I

    move-result v0

    if-nez v0, :cond_c

    .line 230
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_2

    .line 231
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getText()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getLines()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 232
    :cond_d
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getCreative()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;

    move-result-object v0

    if-eqz v0, :cond_f

    if-eqz v4, :cond_f

    .line 233
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getCreative()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;->getBorder()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 234
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getClip()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v12, 0x4

    if-lt v2, v12, :cond_e

    .line 235
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v2

    const/4 v13, 0x0

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v2, v2

    invoke-virtual {v4, v2}, Lcom/meishu/sdk/core/view/RoundImageView;->setCornerTopLeftRadius(I)V

    .line 236
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v2

    const/4 v13, 0x1

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v2, v2

    invoke-virtual {v4, v2}, Lcom/meishu/sdk/core/view/RoundImageView;->setCornerTopRightRadius(I)V

    .line 237
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v2

    const/4 v13, 0x2

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v2, v2

    invoke-virtual {v4, v2}, Lcom/meishu/sdk/core/view/RoundImageView;->setCornerBottomRightRadius(I)V

    .line 238
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v0

    const/4 v15, 0x3

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Lcom/meishu/sdk/core/view/RoundImageView;->setCornerBottomLeftRadius(I)V

    .line 239
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getCreative()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;->getMargin()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getCreative()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;->getMargin()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v12, 0x4

    if-lt v0, v12, :cond_f

    .line 240
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 241
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getCreative()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;->getMargin()Ljava/util/List;

    move-result-object v2

    const/4 v13, 0x0

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 242
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getCreative()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;->getMargin()Ljava/util/List;

    move-result-object v2

    const/4 v13, 0x1

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 243
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getCreative()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;->getMargin()Ljava/util/List;

    move-result-object v2

    const/4 v13, 0x2

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 244
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getCreative()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;->getMargin()Ljava/util/List;

    move-result-object v2

    const/4 v15, 0x3

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 245
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getDislike()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    move-result-object v0

    const/16 v2, 0x8

    if-eqz v0, :cond_16

    .line 247
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getDislike()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;->isHide()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 248
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_10
    const/4 v13, 0x0

    .line 249
    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    .line 250
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getDislike()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;->getText()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getDislike()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;->getText()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getSize()I

    move-result v3

    if-lez v3, :cond_11

    .line 253
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 254
    :cond_11
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getColor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    :cond_12
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getLines()I

    move-result v3

    if-lez v3, :cond_13

    .line 257
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getLines()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 258
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getDislike()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;->getMargin()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getDislike()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;->getMargin()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v12, 0x4

    if-lt v0, v12, :cond_14

    .line 259
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 260
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getDislike()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;->getMargin()Ljava/util/List;

    move-result-object v3

    const/4 v13, 0x0

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v9

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 261
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getDislike()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;->getMargin()Ljava/util/List;

    move-result-object v3

    const/4 v13, 0x1

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v9

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 262
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getDislike()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;->getMargin()Ljava/util/List;

    move-result-object v3

    const/4 v13, 0x2

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v9

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 263
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getDislike()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;->getMargin()Ljava/util/List;

    move-result-object v3

    const/4 v15, 0x3

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v9

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 264
    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getDislike()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;->getPadding()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 266
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v12, 0x4

    if-lt v3, v12, :cond_15

    const/4 v13, 0x0

    .line 267
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v9

    float-to-int v3, v3

    const/4 v13, 0x1

    .line 268
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v9

    float-to-int v4, v4

    const/4 v13, 0x2

    .line 269
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    float-to-int v10, v10

    const/4 v15, 0x3

    .line 270
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v0, v0

    .line 271
    invoke-virtual {v5, v0, v3, v4, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 272
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getDislike()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;->getBorder()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 273
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getDislike()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;->getBorder()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getSize()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getDislike()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;->getBorder()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getColor()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v3, v4}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Ljava/util/List;ILjava/lang/String;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 274
    invoke-virtual {v5, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 275
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getLogo()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$LogoBean;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 276
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getLogo()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$LogoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$LogoBean;->isHide()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 277
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 278
    :cond_17
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->showLogo()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v13, 0x0

    .line 279
    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    :cond_18
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getLogo()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$LogoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$LogoBean;->getMargin()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getLogo()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$LogoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$LogoBean;->getMargin()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v12, 0x4

    if-lt v0, v12, :cond_19

    .line 281
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 282
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getLogo()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$LogoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$LogoBean;->getMargin()Ljava/util/List;

    move-result-object v3

    const/4 v13, 0x0

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v9

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 283
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getLogo()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$LogoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$LogoBean;->getMargin()Ljava/util/List;

    move-result-object v3

    const/4 v13, 0x1

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v9

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 284
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getLogo()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$LogoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$LogoBean;->getMargin()Ljava/util/List;

    move-result-object v3

    const/4 v13, 0x2

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v9

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 285
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getLogo()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$LogoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$LogoBean;->getMargin()Ljava/util/List;

    move-result-object v3

    const/4 v15, 0x3

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v9

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 286
    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getSource()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

    move-result-object v0

    if-eqz v0, :cond_1e

    if-eqz v7, :cond_1e

    .line 288
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getSource()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;->isHide()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 289
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_1a
    const/4 v13, 0x0

    .line 290
    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    .line 291
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getSource()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;->getMargin()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getSource()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;->getMargin()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v12, 0x4

    if-lt v0, v12, :cond_1b

    .line 292
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 293
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getSource()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;->getMargin()Ljava/util/List;

    move-result-object v2

    const/4 v13, 0x0

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 294
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getSource()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;->getMargin()Ljava/util/List;

    move-result-object v2

    const/4 v13, 0x1

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 295
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getSource()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;->getMargin()Ljava/util/List;

    move-result-object v2

    const/4 v13, 0x2

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 296
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getSource()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;->getMargin()Ljava/util/List;

    move-result-object v2

    const/4 v15, 0x3

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 297
    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getSource()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;->getPadding()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 299
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v12, 0x4

    if-lt v2, v12, :cond_1c

    const/4 v13, 0x0

    .line 300
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v2, v2

    const/4 v13, 0x1

    .line 301
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v9

    float-to-int v3, v3

    const/4 v13, 0x2

    .line 302
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v9

    float-to-int v4, v4

    const/4 v15, 0x3

    .line 303
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v0, v0

    .line 304
    invoke-virtual {v7, v0, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 305
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getSource()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;->getText()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 306
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getSource()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;->getText()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getSize()I

    move-result v2

    if-lez v2, :cond_1d

    .line 308
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 309
    :cond_1d
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 311
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getButton()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    move-result-object v0

    if-eqz v0, :cond_23

    if-eqz v8, :cond_23

    .line 312
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getButton()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->getMargin()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getButton()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->getMargin()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v12, 0x4

    if-lt v0, v12, :cond_1f

    .line 313
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 314
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getButton()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->getMargin()Ljava/util/List;

    move-result-object v2

    const/4 v13, 0x0

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 315
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getButton()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->getMargin()Ljava/util/List;

    move-result-object v2

    const/4 v13, 0x1

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 316
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getButton()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->getMargin()Ljava/util/List;

    move-result-object v2

    const/4 v13, 0x2

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 317
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getButton()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->getMargin()Ljava/util/List;

    move-result-object v2

    const/4 v15, 0x3

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 318
    invoke-virtual {v8, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getButton()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->getPadding()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 320
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v12, 0x4

    if-lt v2, v12, :cond_20

    const/4 v13, 0x0

    .line 321
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v2, v2

    const/4 v13, 0x1

    .line 322
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v9

    float-to-int v3, v3

    const/4 v13, 0x2

    .line 323
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v9

    float-to-int v4, v4

    const/4 v15, 0x3

    .line 324
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v0, v0

    .line 325
    invoke-virtual {v8, v0, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 326
    :cond_20
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getButton()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->getText()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 327
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getButton()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->getText()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getSize()I

    move-result v2

    if-lez v2, :cond_21

    .line 329
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 330
    :cond_21
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 332
    :cond_22
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getButton()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->getBorder()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 333
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getButton()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->getBorder()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 334
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v12, 0x4

    if-lt v2, v12, :cond_23

    .line 335
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getButton()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->getBorder()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getSize()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getButton()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->getBorder()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getColor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Ljava/util/List;ILjava/lang/String;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 336
    invoke-virtual {v8, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_23
    return-void

    .line 337
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(Lcom/meishu/sdk/core/view/TouchAdContainer;FFJFFI)V
    .locals 5

    .line 46
    :try_start_0
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v0

    .line 47
    iget-boolean v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->B:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->l:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 49
    :try_start_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCbc()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->d:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 51
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 53
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    invoke-virtual {v4}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object v4

    check-cast v4, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    invoke-virtual {v4}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_adp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;J)V

    .line 54
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object v2

    const-string v3, "adg_time"

    invoke-virtual {v2, v3, v0, v1}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;J)V

    .line 55
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkActType(I)V

    .line 56
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v0

    invoke-virtual {v0, p8}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkPower(I)V

    move p8, p7

    move p7, p6

    move-wide p5, p4

    move p4, p3

    move p3, p2

    .line 57
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-static/range {p2 .. p8}, Lcom/meishu/sdk/platform/ms/recycler/s;->a(Lcom/meishu/sdk/core/ad/IAd;FFJFF)V

    .line 58
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/recycler/i;->d()V

    .line 59
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-static {p2, p1}, Lcom/meishu/sdk/core/utils/i0;->a(Lcom/meishu/sdk/platform/ms/c;Landroid/view/ViewGroup;)V

    .line 60
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/platform/ms/c;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 61
    :try_start_3
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->n:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    iget-object p3, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->B:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 62
    :catch_0
    :try_start_4
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->n:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 63
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    move-object p1, v0

    .line 64
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public final b(Landroid/app/Activity;Lcom/meishu/sdk/core/view/TouchAdContainer;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 4
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->r:I

    .line 5
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->s:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/h;->c(I)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 7
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->q:Landroid/widget/FrameLayout;

    if-nez v0, :cond_3

    .line 9
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->q:Landroid/widget/FrameLayout;

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    const/4 v0, -0x1

    if-gtz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 11
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gtz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 12
    :goto_1
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->q:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, p1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->q:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    .line 14
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->q:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->y:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 15
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_4
    return-void
.end method

.method public final b(Landroid/content/Context;Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;IIII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    .line 22
    iput-boolean v2, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->u:Z

    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 24
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 25
    iget-object v4, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v4}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getImgUrls()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    iget-object v4, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v4}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getImgUrls()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_15

    .line 26
    invoke-static {}, Lcom/meishu/sdk/core/utils/r0;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    sget v5, Lcom/meishu/sdk/R$layout;->ms_item_pre_render_three_img:I

    goto :goto_0

    .line 28
    :cond_0
    sget v5, Lcom/meishu/sdk/R$layout;->ms_item_pre_render_three_img_v2:I

    :goto_0
    const/4 v6, 0x0

    .line 29
    invoke-static {v1, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 30
    sget v6, Lcom/meishu/sdk/R$id;->ms_item_pre_render_three_img_container:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->c:Landroid/widget/RelativeLayout;

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    .line 31
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 32
    sget v6, Lcom/meishu/sdk/R$id;->ms_item_pre_render_three_img_title:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 33
    sget v7, Lcom/meishu/sdk/R$id;->ms_item_pre_render_three_img_close:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 34
    sget v8, Lcom/meishu/sdk/R$id;->ms_item_pre_render_three_img_logo:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 35
    sget v9, Lcom/meishu/sdk/R$id;->ms_item_pre_render_three_img_fromtext:I

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 36
    sget v10, Lcom/meishu/sdk/R$id;->ms_item_pre_render_three_img_type:I

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 37
    sget v11, Lcom/meishu/sdk/R$id;->ms_item_pre_render_three_shake_image:I

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 38
    sget v12, Lcom/meishu/sdk/R$id;->ms_shakeRoot:I

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 39
    sget v13, Lcom/meishu/sdk/R$id;->ms_shake_img:I

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/meishu/sdk/core/view/ShakeImageView;

    .line 40
    sget v14, Lcom/meishu/sdk/R$id;->ms_shake_text:I

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 41
    iget-object v15, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v15}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v15

    invoke-virtual {v15}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v15

    const/4 v2, 0x4

    and-int/2addr v15, v2

    move/from16 v16, v3

    const/4 v3, 0x0

    if-eq v15, v2, :cond_5

    iget-object v15, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v15}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v15

    invoke-virtual {v15}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v15

    const/16 v2, 0x40

    and-int/2addr v15, v2

    if-ne v15, v2, :cond_1

    goto :goto_1

    .line 42
    :cond_1
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v2

    invoke-static {v2}, Lcom/meishu/sdk/core/utils/h;->e(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 43
    invoke-virtual {v0, v1, v12, v13}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/meishu/sdk/core/view/ShakeImageView;)V

    .line 44
    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v14, :cond_2

    .line 45
    const-string v2, "\u626d\u4e00\u626d"

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :cond_2
    const-string v2, "\u626d\u52a8\u6216\u70b9\u51fb"

    goto :goto_2

    :cond_3
    if-nez v4, :cond_4

    .line 47
    sget v2, Lcom/meishu/sdk/R$drawable;->ms_ic_right:I

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    const-string v2, "\u70b9\u51fb"

    goto :goto_2

    .line 49
    :cond_5
    :goto_1
    invoke-virtual {v0, v1, v12, v13}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/meishu/sdk/core/view/ShakeImageView;)V

    .line 50
    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v14, :cond_6

    .line 51
    const-string v2, "\u6447\u4e00\u6447"

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_6
    const-string v2, "\u6447\u52a8\u6216\u70b9\u51fb"

    :goto_2
    iget-object v11, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v11}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getInteractionType()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    .line 53
    const-string v11, "\u7acb\u5373\u4e0b\u8f7d"

    goto :goto_3

    :cond_7
    const-string v11, "\u67e5\u770b\u8be6\u60c5"

    .line 54
    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v2

    .line 58
    iget-object v2, v2, Lcom/meishu/sdk/meishu_ad/nativ/f;->e:Ljava/lang/String;

    .line 59
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v0, v8}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Landroid/widget/ImageView;)V

    .line 61
    invoke-virtual {v0, v7, v5}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Landroid/widget/TextView;Landroid/view/View;)V

    .line 62
    sget v2, Lcom/meishu/sdk/R$id;->ms_item_pre_render_three_img_containerll:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move v5, v3

    move v11, v5

    .line 63
    :goto_4
    iget-object v12, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v12}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getImgUrls()[Ljava/lang/String;

    move-result-object v12

    array-length v12, v12

    if-ge v5, v12, :cond_14

    .line 64
    iget-object v12, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v12}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getImgUrls()[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v5

    .line 65
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    move/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 p4, v6

    move-object/from16 p5, v7

    move v7, v3

    const/4 v3, 0x1

    goto/16 :goto_b

    .line 66
    :cond_8
    new-instance v13, Lcom/meishu/sdk/core/view/RoundImageView;

    invoke-direct {v13, v1}, Lcom/meishu/sdk/core/view/RoundImageView;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x1

    .line 67
    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 68
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v14, 0x2

    .line 69
    invoke-virtual {v13, v14}, Lcom/meishu/sdk/core/view/RoundImageView;->setCornerRadius(I)V

    if-eqz v4, :cond_12

    if-eqz p2, :cond_12

    .line 70
    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getCreatives()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;

    move-result-object v17

    if-eqz v17, :cond_12

    const/4 v15, 0x3

    if-nez v5, :cond_b

    .line 71
    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getCreatives()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;->getChilds()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;->getLeft()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v14

    const/4 v3, 0x4

    if-lt v14, v3, :cond_b

    .line 72
    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getCreatives()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;->getChilds()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;->getLeft()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

    move-result-object v3

    .line 73
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 74
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v15

    const/4 v1, 0x0

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 75
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v15

    move/from16 p4, v1

    const/4 v1, 0x1

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 76
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v3

    const/4 v15, 0x2

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 77
    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getCreatives()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;

    move-result-object v15

    invoke-virtual {v15}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;->getChilds()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;

    move-result-object v15

    invoke-virtual {v15}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;->getLeft()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

    move-result-object v15

    invoke-virtual {v15}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getBorder()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    move-result-object v15

    if-eqz v15, :cond_9

    .line 78
    invoke-virtual {v15}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getClip()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-virtual {v15}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_9

    invoke-virtual {v15}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v18

    move/from16 v19, v1

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v18, v3

    const/4 v3, 0x4

    if-lt v1, v3, :cond_a

    .line 79
    invoke-virtual {v15}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v13, v1}, Lcom/meishu/sdk/core/view/RoundImageView;->setCornerTopLeftRadius(I)V

    .line 80
    invoke-virtual {v15}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v13, v1}, Lcom/meishu/sdk/core/view/RoundImageView;->setCornerTopRightRadius(I)V

    .line 81
    invoke-virtual {v15}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v13, v1}, Lcom/meishu/sdk/core/view/RoundImageView;->setCornerBottomRightRadius(I)V

    .line 82
    invoke-virtual {v15}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v13, v1}, Lcom/meishu/sdk/core/view/RoundImageView;->setCornerBottomLeftRadius(I)V

    goto :goto_5

    :cond_9
    move/from16 v19, v1

    move/from16 v18, v3

    :cond_a
    :goto_5
    move/from16 v1, p4

    move v15, v14

    :goto_6
    const/4 v14, 0x1

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    const/4 v15, 0x6

    const/16 v18, 0x0

    const/16 v19, 0x0

    goto :goto_6

    :goto_7
    if-ne v5, v14, :cond_e

    .line 83
    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getCreatives()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;->getChilds()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;->getCenter()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v14, 0x4

    if-lt v3, v14, :cond_e

    .line 84
    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getCreatives()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;->getChilds()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;->getCenter()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v3

    const/4 v14, 0x3

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 86
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 87
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v15

    move-object/from16 p4, v1

    const/4 v1, 0x1

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 88
    invoke-virtual/range {p4 .. p4}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v15

    move/from16 p4, v1

    const/4 v1, 0x2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 89
    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getCreatives()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;

    move-result-object v15

    invoke-virtual {v15}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;->getChilds()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;

    move-result-object v15

    invoke-virtual {v15}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;->getCenter()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

    move-result-object v15

    invoke-virtual {v15}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getBorder()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    move-result-object v15

    if-eqz v15, :cond_c

    .line 90
    invoke-virtual {v15}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getClip()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-virtual {v15}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_c

    invoke-virtual {v15}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v18

    move/from16 v19, v1

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v18, v3

    const/4 v3, 0x4

    if-lt v1, v3, :cond_d

    .line 91
    invoke-virtual {v15}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v13, v1}, Lcom/meishu/sdk/core/view/RoundImageView;->setCornerTopLeftRadius(I)V

    .line 92
    invoke-virtual {v15}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v13, v1}, Lcom/meishu/sdk/core/view/RoundImageView;->setCornerTopRightRadius(I)V

    .line 93
    invoke-virtual {v15}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v13, v1}, Lcom/meishu/sdk/core/view/RoundImageView;->setCornerBottomRightRadius(I)V

    .line 94
    invoke-virtual {v15}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v13, v1}, Lcom/meishu/sdk/core/view/RoundImageView;->setCornerBottomLeftRadius(I)V

    goto :goto_8

    :cond_c
    move/from16 v19, v1

    move/from16 v18, v3

    :cond_d
    :goto_8
    move v1, v14

    move/from16 v15, v18

    move/from16 v18, v19

    move/from16 v19, p4

    :cond_e
    const/4 v3, 0x2

    if-ne v5, v3, :cond_11

    .line 95
    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getCreatives()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;->getChilds()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;->getRight()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v14, 0x4

    if-lt v3, v14, :cond_11

    .line 96
    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getCreatives()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;->getChilds()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;->getRight()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v3

    const/4 v14, 0x3

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 98
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v3

    const/4 v14, 0x0

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 99
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v14

    move-object/from16 p4, v1

    const/4 v1, 0x1

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 100
    invoke-virtual/range {p4 .. p4}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v14

    move/from16 p4, v1

    const/4 v1, 0x2

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 101
    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getCreatives()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;

    move-result-object v14

    invoke-virtual {v14}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;->getChilds()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;

    move-result-object v14

    invoke-virtual {v14}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;->getRight()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

    move-result-object v14

    invoke-virtual {v14}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getBorder()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    move-result-object v14

    if-eqz v14, :cond_f

    .line 102
    invoke-virtual {v14}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getClip()Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-virtual {v14}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_f

    invoke-virtual {v14}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v18

    move/from16 v19, v1

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v18, v3

    const/4 v3, 0x4

    if-lt v1, v3, :cond_10

    .line 103
    invoke-virtual {v14}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v13, v1}, Lcom/meishu/sdk/core/view/RoundImageView;->setCornerTopLeftRadius(I)V

    .line 104
    invoke-virtual {v14}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v13, v1}, Lcom/meishu/sdk/core/view/RoundImageView;->setCornerTopRightRadius(I)V

    .line 105
    invoke-virtual {v14}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v13, v1}, Lcom/meishu/sdk/core/view/RoundImageView;->setCornerBottomRightRadius(I)V

    .line 106
    invoke-virtual {v14}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v1

    const/4 v14, 0x3

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v13, v1}, Lcom/meishu/sdk/core/view/RoundImageView;->setCornerBottomLeftRadius(I)V

    goto :goto_9

    :cond_f
    move/from16 v19, v1

    move/from16 v18, v3

    :cond_10
    :goto_9
    move/from16 v3, p4

    move/from16 v17, v4

    move/from16 v14, v18

    move/from16 v1, v19

    goto :goto_a

    :cond_11
    move v14, v1

    move/from16 v17, v4

    move/from16 v1, v18

    move/from16 v3, v19

    goto :goto_a

    :cond_12
    move/from16 v17, v4

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    .line 107
    :goto_a
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v18, v5

    const/4 v5, -0x2

    move-object/from16 p4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 p5, v7

    const/4 v7, 0x0

    invoke-direct {v4, v7, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    add-int/lit8 v5, v11, 0x1

    if-lez v11, :cond_13

    int-to-float v6, v15

    mul-float v6, v6, v16

    float-to-int v6, v6

    int-to-float v11, v14

    mul-float v11, v11, v16

    float-to-int v11, v11

    int-to-float v3, v3

    mul-float v3, v3, v16

    float-to-int v3, v3

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    .line 108
    invoke-virtual {v4, v6, v11, v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 109
    :cond_13
    invoke-virtual {v2, v13, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance v1, Lcom/meishu/sdk/platform/ms/recycler/i$c;

    invoke-direct {v1, v0, v13}, Lcom/meishu/sdk/platform/ms/recycler/i$c;-><init>(Lcom/meishu/sdk/platform/ms/recycler/i;Lcom/meishu/sdk/core/view/RoundImageView;)V

    const/4 v3, 0x1

    .line 111
    invoke-static {v12, v1, v3}, Lcom/meishu/sdk/core/cache/a;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/y;Z)V

    move v11, v5

    :goto_b
    add-int/lit8 v5, v18, 0x1

    move-object/from16 v1, p1

    move-object/from16 v6, p4

    move v3, v7

    move/from16 v4, v17

    move-object/from16 v7, p5

    goto/16 :goto_4

    :cond_14
    move/from16 v17, v4

    move-object/from16 p4, v6

    move-object/from16 p5, v7

    if-eqz v17, :cond_15

    if-eqz p2, :cond_15

    .line 112
    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    move-result v1

    const/16 v2, 0x1f5

    if-ne v1, v2, :cond_15

    .line 113
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->c:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v6, p5

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    invoke-virtual/range {v0 .. v9}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/meishu/sdk/core/view/RoundImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    :cond_15
    return-void
.end method

.method public bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
    .locals 7
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
    const-string p3, "container size is too small"

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p4, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->d:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object p4

    .line 22
    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 23
    .line 24
    .line 25
    move-result-object p4

    .line 26
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_width()Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_width()Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-lez v0, :cond_0

    .line 57
    .line 58
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_width()Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    int-to-float v0, v0

    .line 75
    iget v1, p4, Landroid/util/DisplayMetrics;->density:F

    .line 76
    .line 77
    div-float/2addr v0, v1

    .line 78
    float-to-int v0, v0

    .line 79
    iput v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->e:I

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    goto/16 :goto_7

    .line 84
    .line 85
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    .line 99
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-lez v0, :cond_1

    .line 116
    .line 117
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    int-to-float v0, v0

    .line 134
    iget v1, p4, Landroid/util/DisplayMetrics;->density:F

    .line 135
    .line 136
    div-float/2addr v0, v1

    .line 137
    float-to-int v0, v0

    .line 138
    iput v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->f:I

    .line 139
    .line 140
    :cond_1
    iget v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->e:I

    .line 141
    .line 142
    const-wide v1, 0x3fd3333333333333L    # 0.3

    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    if-lez v0, :cond_2

    .line 148
    .line 149
    int-to-float v0, v0

    .line 150
    iget v3, p4, Landroid/util/DisplayMetrics;->density:F

    .line 151
    .line 152
    mul-float/2addr v0, v3

    .line 153
    float-to-double v3, v0

    .line 154
    iget v0, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 155
    .line 156
    int-to-double v5, v0

    .line 157
    mul-double/2addr v5, v1

    .line 158
    cmpg-double v0, v3, v5

    .line 159
    .line 160
    if-ltz v0, :cond_3

    .line 161
    .line 162
    :cond_2
    iget v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->f:I

    .line 163
    .line 164
    if-lez v0, :cond_4

    .line 165
    .line 166
    int-to-float v0, v0

    .line 167
    iget v3, p4, Landroid/util/DisplayMetrics;->density:F

    .line 168
    .line 169
    mul-float/2addr v0, v3

    .line 170
    float-to-double v3, v0

    .line 171
    iget p4, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 172
    .line 173
    int-to-double v5, p4

    .line 174
    mul-double/2addr v5, v1

    .line 175
    cmpg-double p4, v3, v5

    .line 176
    .line 177
    if-gez p4, :cond_4

    .line 178
    .line 179
    :cond_3
    const-string p1, "i"

    .line 180
    .line 181
    invoke-static {p1, p3}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    sget-object p1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    invoke-virtual {p0, p1, p3}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(ILjava/lang/String;)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :cond_4
    new-instance p3, Landroid/graphics/Rect;

    .line 195
    .line 196
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 197
    .line 198
    .line 199
    instance-of p4, p1, Landroid/app/Activity;

    .line 200
    .line 201
    if-eqz p4, :cond_5

    .line 202
    .line 203
    check-cast p1, Landroid/app/Activity;

    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    instance-of p1, p1, Landroid/app/Activity;

    .line 211
    .line 212
    if-eqz p1, :cond_6

    .line 213
    .line 214
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    check-cast p1, Landroid/app/Activity;

    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_6
    const/4 p1, 0x0

    .line 222
    :goto_1
    const/4 p4, 0x1

    .line 223
    if-nez p1, :cond_7

    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_7
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->k:Z

    .line 227
    .line 228
    if-eqz v0, :cond_8

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 232
    .line 233
    const/16 v1, 0x1d

    .line 234
    .line 235
    if-lt v0, v1, :cond_9

    .line 236
    .line 237
    iput-boolean p4, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->k:Z

    .line 238
    .line 239
    new-instance v0, Lcom/meishu/sdk/platform/ms/recycler/k;

    .line 240
    .line 241
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/ms/recycler/k;-><init>(Lcom/meishu/sdk/platform/ms/recycler/i;)V

    .line 242
    .line 243
    .line 244
    invoke-static {p1, v0}, Landroidx/lifecycle/j;->a(Landroid/app/Activity;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 245
    .line 246
    .line 247
    :cond_9
    :goto_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 248
    .line 249
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    iput-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->v:Ljava/lang/ref/WeakReference;

    .line 253
    .line 254
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 255
    .line 256
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    iput-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->w:Ljava/lang/ref/WeakReference;

    .line 260
    .line 261
    invoke-static {}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->getInstance()Lcom/meishu/sdk/core/view/FeedAdOverlayManager;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/recycler/i;->e()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {v0, v1, p2}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->updateAdContainer(Ljava/lang/String;Landroid/view/View;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    new-instance v1, Lcom/meishu/sdk/platform/ms/recycler/i$g;

    .line 277
    .line 278
    invoke-direct {v1, p0, p2, p3}, Lcom/meishu/sdk/platform/ms/recycler/i$g;-><init>(Lcom/meishu/sdk/platform/ms/recycler/i;Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/recycler/i;->getAdView()Landroid/view/View;

    .line 288
    .line 289
    .line 290
    move-result-object p3

    .line 291
    if-nez p3, :cond_a

    .line 292
    .line 293
    goto/16 :goto_8

    .line 294
    .line 295
    :cond_a
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    if-eqz v0, :cond_b

    .line 300
    .line 301
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 306
    .line 307
    if-eqz v0, :cond_b

    .line 308
    .line 309
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    check-cast v0, Landroid/view/ViewGroup;

    .line 314
    .line 315
    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 316
    .line 317
    .line 318
    :cond_b
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 319
    .line 320
    const/4 v1, -0x1

    .line 321
    const/4 v2, -0x2

    .line 322
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 323
    .line 324
    .line 325
    new-instance v1, Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 326
    .line 327
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    invoke-direct {v1, v2}, Lcom/meishu/sdk/core/view/TouchAdContainer;-><init>(Landroid/content/Context;)V

    .line 332
    .line 333
    .line 334
    new-instance v2, Lcom/meishu/sdk/core/view/TouchPositionListener;

    .line 335
    .line 336
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 337
    .line 338
    invoke-direct {v2, v3}, Lcom/meishu/sdk/core/view/TouchPositionListener;-><init>(Lcom/meishu/sdk/core/ad/IAd;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/view/TouchAdContainer;->setTouchPositionListener(Lcom/meishu/sdk/core/view/TouchPositionListener;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    .line 346
    .line 347
    new-instance p3, Lcom/meishu/sdk/core/view/PositionView;

    .line 348
    .line 349
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-direct {p3, v0}, Lcom/meishu/sdk/core/view/PositionView;-><init>(Landroid/content/Context;)V

    .line 354
    .line 355
    .line 356
    iget v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->i:I

    .line 357
    .line 358
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    new-instance v0, Lcom/meishu/sdk/platform/ms/recycler/i$i;

    .line 366
    .line 367
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/ms/recycler/i$i;-><init>(Lcom/meishu/sdk/platform/ms/recycler/i;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {p3, v0}, Lcom/meishu/sdk/core/view/PositionView;->setOnWindownEventListener(Lcom/meishu/sdk/core/view/TouchAdContainer$OnWindownEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    .line 372
    .line 373
    const/4 v0, 0x0

    .line 374
    :goto_3
    :try_start_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    if-ge v0, v2, :cond_d

    .line 379
    .line 380
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    instance-of v3, v2, Lcom/meishu/sdk/core/view/PositionView;

    .line 385
    .line 386
    if-eqz v3, :cond_c

    .line 387
    .line 388
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    .line 390
    .line 391
    goto :goto_4

    .line 392
    :catch_0
    move-exception v0

    .line 393
    goto :goto_5

    .line 394
    :cond_c
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 395
    .line 396
    goto :goto_3

    .line 397
    :goto_5
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 398
    .line 399
    .line 400
    :cond_d
    invoke-virtual {v1, p3, p4, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {p0, p1, v1}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Landroid/app/Activity;Lcom/meishu/sdk/core/view/TouchAdContainer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 407
    .line 408
    .line 409
    :try_start_3
    iget-object p3, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 410
    .line 411
    invoke-interface {p3}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 412
    .line 413
    .line 414
    move-result-object p3

    .line 415
    invoke-virtual {p3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppendInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

    .line 416
    .line 417
    .line 418
    move-result-object p3

    .line 419
    invoke-virtual {p3}, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->getHasClicked()Lcom/meishu/sdk/core/utils/b;

    .line 420
    .line 421
    .line 422
    move-result-object p3

    .line 423
    new-instance p4, LU0/a;

    .line 424
    .line 425
    invoke-direct {p4, p0}, LU0/a;-><init>(Lcom/meishu/sdk/platform/ms/recycler/i;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {p3, p4}, Lcom/meishu/sdk/core/utils/b;->a(Lcom/meishu/sdk/core/utils/b$a;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 429
    .line 430
    .line 431
    goto :goto_6

    .line 432
    :catch_1
    move-exception p3

    .line 433
    :try_start_4
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 434
    .line 435
    .line 436
    :goto_6
    invoke-virtual {p0, p1, v1}, Lcom/meishu/sdk/platform/ms/recycler/i;->b(Landroid/app/Activity;Lcom/meishu/sdk/core/view/TouchAdContainer;)V

    .line 437
    .line 438
    .line 439
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 440
    .line 441
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object p1

    .line 449
    iget-object p3, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 450
    .line 451
    invoke-interface {p3}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 452
    .line 453
    .line 454
    move-result-object p3

    .line 455
    invoke-virtual {p3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getLoadedTime()J

    .line 456
    .line 457
    .line 458
    move-result-wide p3

    .line 459
    invoke-static {p2, p1, p3, p4}, Lcom/meishu/sdk/core/utils/p1;->a(Landroid/view/ViewGroup;Ljava/lang/String;J)V

    .line 460
    .line 461
    .line 462
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 463
    .line 464
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->d:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 465
    .line 466
    invoke-interface {p1, p2}, Lcom/meishu/sdk/core/ad/IAd;->setInteractionListener(Lcom/meishu/sdk/core/loader/InteractionListener;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 467
    .line 468
    .line 469
    goto :goto_8

    .line 470
    :goto_7
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->d:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 471
    .line 472
    if-eqz p2, :cond_e

    .line 473
    .line 474
    invoke-interface {p2}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdRenderFailed()V

    .line 475
    .line 476
    .line 477
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 478
    .line 479
    .line 480
    :goto_8
    return-void
.end method

.method public bindMediaView(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;IILcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bindMediaView(Landroid/view/ViewGroup;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final c()V
    .locals 9

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->v:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    move-object v2, v1

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->w:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    :cond_1
    move-object v3, v1

    if-eqz v2, :cond_3

    if-nez v3, :cond_2

    goto :goto_1

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-static {}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->getInstance()Lcom/meishu/sdk/core/view/FeedAdOverlayManager;

    move-result-object v1

    sget v5, Lcom/meishu/sdk/platform/ms/recycler/i;->C:I

    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 85
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v6

    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/recycler/i;->e()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/meishu/sdk/platform/ms/recycler/i$h;

    invoke-direct {v8, p0, v3}, Lcom/meishu/sdk/platform/ms/recycler/i$h;-><init>(Lcom/meishu/sdk/platform/ms/recycler/i;Landroid/view/ViewGroup;)V

    .line 86
    invoke-virtual/range {v1 .. v8}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->addOverlay(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;ILcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OnOverlayTriggerAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    .line 87
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final c(Landroid/content/Context;Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;IIII)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p5

    .line 27
    invoke-static {}, Lcom/meishu/sdk/core/utils/r0;->d()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 28
    sget v3, Lcom/meishu/sdk/R$layout;->ms_item_pre_render_large_image:I

    goto :goto_0

    .line 29
    :cond_0
    sget v3, Lcom/meishu/sdk/R$layout;->ms_item_pre_render_large_image_v2:I

    :goto_0
    const/16 v13, 0xc9

    if-eqz p2, :cond_4

    .line 30
    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    move-result v4

    if-eq v4, v13, :cond_2

    const/16 v5, 0x259

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    if-nez v12, :cond_4

    .line 31
    sget v3, Lcom/meishu/sdk/R$layout;->ms_item_pre_render_large_image_top_v2_601:I

    goto :goto_1

    :cond_2
    if-eqz v12, :cond_3

    .line 32
    sget v3, Lcom/meishu/sdk/R$layout;->ms_item_pre_render_large_image_top:I

    goto :goto_1

    .line 33
    :cond_3
    sget v3, Lcom/meishu/sdk/R$layout;->ms_item_pre_render_large_image_top_v2:I

    :cond_4
    :goto_1
    const/4 v4, 0x0

    move-object/from16 v5, p1

    .line 34
    invoke-static {v5, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 35
    sget v3, Lcom/meishu/sdk/R$id;->ms_item_pre_render_large_iamge_rootview:I

    invoke-virtual {v14, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->c:Landroid/widget/RelativeLayout;

    move/from16 v4, p4

    move/from16 v6, p6

    .line 36
    invoke-virtual {v3, v1, v4, v2, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 37
    sget v3, Lcom/meishu/sdk/R$id;->ms_item_pre_render_large_iamge_title:I

    invoke-virtual {v14, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/TextView;

    .line 38
    sget v3, Lcom/meishu/sdk/R$id;->ms_item_pre_render_large_iamge_content:I

    invoke-virtual {v14, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 39
    sget v4, Lcom/meishu/sdk/R$id;->ms_item_pre_render_large_iamge_imageview:I

    invoke-virtual {v14, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meishu/sdk/core/view/RoundImageView;

    .line 40
    sget v6, Lcom/meishu/sdk/R$id;->ms_item_pre_render_large_iamge_imagebg:I

    invoke-virtual {v14, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 41
    sget v7, Lcom/meishu/sdk/R$id;->ms_item_pre_render_large_iamge_logo:I

    invoke-virtual {v14, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 42
    sget v8, Lcom/meishu/sdk/R$id;->ms_item_pre_render_large_iamge_fromtext:I

    invoke-virtual {v14, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 43
    sget v9, Lcom/meishu/sdk/R$id;->ms_item_pre_render_large_iamge_close:I

    invoke-virtual {v14, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 44
    sget v10, Lcom/meishu/sdk/R$id;->ms_item_pre_render_large_shake_layout:I

    invoke-virtual {v14, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Landroid/view/ViewGroup;

    .line 45
    sget v10, Lcom/meishu/sdk/R$id;->ms_item_pre_render_large_shake_image:I

    invoke-virtual {v14, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 46
    sget v13, Lcom/meishu/sdk/R$id;->ms_item_pre_render_large_iamge_shake_text:I

    invoke-virtual {v14, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 47
    sget v1, Lcom/meishu/sdk/R$id;->ms_shakeRoot:I

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    move-object/from16 p4, v1

    .line 48
    sget v1, Lcom/meishu/sdk/R$id;->ms_shake_img:I

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meishu/sdk/core/view/ShakeImageView;

    move-object/from16 p6, v1

    .line 49
    sget v1, Lcom/meishu/sdk/R$id;->ms_shake_text:I

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 50
    const-string v16, "clkType="

    move-object/from16 v17, v1

    invoke-static/range {v16 .. v16}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "i"

    invoke-static {v2, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v1

    .line 52
    iget-object v1, v1, Lcom/meishu/sdk/core/ad/BaseAdSlot;->title:Ljava/lang/String;

    .line 53
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    move/from16 v16, v1

    const/16 v1, 0x8

    if-eqz v16, :cond_5

    .line 54
    invoke-virtual {v15, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 55
    :cond_5
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v1

    .line 56
    iget-object v1, v1, Lcom/meishu/sdk/core/ad/BaseAdSlot;->title:Ljava/lang/String;

    .line 57
    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :goto_2
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v1

    .line 59
    iget-object v1, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->c:Ljava/lang/String;

    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    .line 61
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 62
    :cond_6
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v1

    .line 63
    iget-object v1, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->c:Ljava/lang/String;

    .line 64
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :goto_3
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v1

    .line 66
    iget-object v1, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->e:Ljava/lang/String;

    if-nez v1, :cond_7

    const/16 v1, 0x8

    .line 67
    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 68
    :cond_7
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v1

    .line 69
    iget-object v1, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->e:Ljava/lang/String;

    .line 70
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :goto_4
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getImgUrls()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getImgUrls()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_8

    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getImgUrls()[Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x0

    aget-object v1, v1, v16

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 72
    const-string v1, " \u5bb9\u5668\u5bbd\u5ea6\uff1a"

    invoke-static {v1}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v18, v3

    iget-object v3, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    invoke-virtual {v3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object v3

    check-cast v3, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    invoke-virtual {v3}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_width()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v1, v1, p3

    sub-int v3, v1, p5

    .line 74
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getImgUrls()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v16

    new-instance v0, Lcom/meishu/sdk/platform/ms/recycler/i$d;

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v16, v8

    move-object v8, v10

    move-object/from16 v10, v17

    move-object/from16 v6, p4

    move-object/from16 v17, v14

    move-object/from16 p4, v15

    move-object v14, v1

    move-object v15, v9

    move-object v9, v13

    move-object/from16 v1, p0

    move-object v13, v7

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v12}, Lcom/meishu/sdk/platform/ms/recycler/i$d;-><init>(Lcom/meishu/sdk/platform/ms/recycler/i;Lcom/meishu/sdk/core/view/RoundImageView;ILandroid/content/Context;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Lcom/meishu/sdk/core/view/ShakeImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/ViewGroup;Z)V

    move-object/from16 v19, v1

    move-object v1, v0

    move-object/from16 v0, v19

    const/4 v3, 0x1

    .line 75
    invoke-static {v14, v1, v3}, Lcom/meishu/sdk/core/cache/a;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/y;Z)V

    goto :goto_5

    :cond_8
    move-object/from16 v18, v3

    move-object v2, v4

    move-object v13, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v14

    move-object/from16 p4, v15

    move-object v15, v9

    .line 76
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, "\u56fe\u7247\u52a0\u8f7d\u9519\u8bef"

    invoke-virtual {v0, v1, v3}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(ILjava/lang/String;)V

    .line 77
    :goto_5
    invoke-virtual {v0, v13}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Landroid/widget/ImageView;)V

    move-object/from16 v1, v17

    .line 78
    invoke-virtual {v0, v15, v1}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Landroid/widget/TextView;Landroid/view/View;)V

    if-eqz v12, :cond_a

    if-eqz p2, :cond_a

    .line 79
    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    move-result v1

    const/16 v3, 0x65

    if-eq v1, v3, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    move-result v1

    const/16 v3, 0xc9

    if-ne v1, v3, :cond_a

    :cond_9
    move-object v5, v2

    .line 80
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->c:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    move-object/from16 v1, p2

    move-object/from16 v3, p4

    move-object v7, v13

    move-object v6, v15

    move-object/from16 v8, v16

    move-object/from16 v4, v18

    invoke-virtual/range {v0 .. v9}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/meishu/sdk/core/view/RoundImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    :cond_a
    return-void
.end method

.method public final d()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/meishu/sdk/platform/ms/recycler/t;->a()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->m:I

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->A:Z

    .line 5
    iput v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->z:I

    return-void
.end method

.method public final d(Landroid/content/Context;Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;IIII)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    .line 6
    invoke-static {}, Lcom/meishu/sdk/core/utils/r0;->d()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 7
    sget v0, Lcom/meishu/sdk/R$layout;->ms_item_pre_render_large_image:I

    goto :goto_0

    .line 8
    :cond_0
    sget v0, Lcom/meishu/sdk/R$layout;->ms_item_pre_render_large_image_v2:I

    :goto_0
    const/16 v8, 0xc9

    if-eqz p2, :cond_4

    .line 9
    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    move-result v2

    if-eq v2, v8, :cond_2

    const/16 v4, 0x259

    if-eq v2, v4, :cond_1

    goto :goto_1

    :cond_1
    if-nez v7, :cond_4

    .line 10
    sget v0, Lcom/meishu/sdk/R$layout;->ms_item_pre_render_large_image_top_v2_601:I

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_3

    .line 11
    sget v0, Lcom/meishu/sdk/R$layout;->ms_item_pre_render_large_image_top:I

    goto :goto_1

    .line 12
    :cond_3
    sget v0, Lcom/meishu/sdk/R$layout;->ms_item_pre_render_large_image_top_v2:I

    :cond_4
    :goto_1
    const/4 v2, 0x0

    .line 13
    invoke-static {v3, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 14
    sget v4, Lcom/meishu/sdk/R$id;->ms_item_pre_render_large_iamge_rootview:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->c:Landroid/widget/RelativeLayout;

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v9, p5

    move/from16 v10, p6

    .line 15
    invoke-virtual {v4, v5, v6, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 16
    sget v4, Lcom/meishu/sdk/R$id;->ms_item_pre_render_large_iamge_videocontainer:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 17
    sget v4, Lcom/meishu/sdk/R$id;->ms_item_pre_render_large_iamge_imagebg:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 18
    sget v5, Lcom/meishu/sdk/R$id;->ms_item_pre_render_large_iamge_title:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Landroid/widget/TextView;

    .line 19
    sget v5, Lcom/meishu/sdk/R$id;->ms_item_pre_render_large_iamge_content:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroid/widget/TextView;

    .line 20
    sget v5, Lcom/meishu/sdk/R$id;->ms_item_pre_render_large_iamge_imageview:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 21
    sget v11, Lcom/meishu/sdk/R$id;->ms_item_pre_render_large_iamge_logo:I

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 22
    sget v12, Lcom/meishu/sdk/R$id;->ms_item_pre_render_large_iamge_fromtext:I

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 23
    sget v13, Lcom/meishu/sdk/R$id;->ms_item_pre_render_large_iamge_close:I

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 24
    iget-object v14, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v14}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v14

    .line 25
    iget-object v14, v14, Lcom/meishu/sdk/core/ad/BaseAdSlot;->title:Ljava/lang/String;

    .line 26
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    const/16 v15, 0x8

    if-eqz v14, :cond_5

    .line 27
    invoke-virtual {v9, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 28
    :cond_5
    iget-object v14, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v14}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v14

    .line 29
    iget-object v14, v14, Lcom/meishu/sdk/core/ad/BaseAdSlot;->title:Ljava/lang/String;

    .line 30
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    :goto_2
    iget-object v14, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v14}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v14

    .line 32
    iget-object v14, v14, Lcom/meishu/sdk/meishu_ad/nativ/f;->c:Ljava/lang/String;

    .line 33
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 34
    invoke-virtual {v10, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 35
    :cond_6
    iget-object v14, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v14}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v14

    .line 36
    iget-object v14, v14, Lcom/meishu/sdk/meishu_ad/nativ/f;->c:Ljava/lang/String;

    .line 37
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    :goto_3
    iget-object v14, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v14}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v14

    .line 39
    iget-object v14, v14, Lcom/meishu/sdk/meishu_ad/nativ/f;->e:Ljava/lang/String;

    .line 40
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 41
    invoke-virtual {v12, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 42
    :cond_7
    iget-object v14, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v14}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v14

    .line 43
    iget-object v14, v14, Lcom/meishu/sdk/meishu_ad/nativ/f;->e:Ljava/lang/String;

    .line 44
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :goto_4
    sget v14, Lcom/meishu/sdk/R$id;->ms_item_pre_render_large_shake_layout:I

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .line 46
    sget v8, Lcom/meishu/sdk/R$id;->ms_item_pre_render_large_shake_image:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 47
    sget v2, Lcom/meishu/sdk/R$id;->ms_item_pre_render_large_iamge_shake_text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 48
    sget v15, Lcom/meishu/sdk/R$id;->ms_shakeRoot:I

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    move/from16 v16, v7

    .line 49
    sget v7, Lcom/meishu/sdk/R$id;->ms_shake_img:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/meishu/sdk/core/view/ShakeImageView;

    move-object/from16 p4, v9

    .line 50
    sget v9, Lcom/meishu/sdk/R$id;->ms_shake_text:I

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 51
    const-string v17, "clkType="

    move-object/from16 p5, v10

    invoke-static/range {v17 .. v17}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 p6, v12

    iget-object v12, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v12}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v12

    invoke-virtual {v12}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "i"

    invoke-static {v12, v10}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v10, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v10}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v10

    invoke-virtual {v10}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v10

    invoke-static {v10}, Lcom/meishu/sdk/core/utils/h;->d(I)Z

    move-result v10

    const/4 v12, 0x0

    if-eqz v10, :cond_9

    .line 53
    invoke-virtual {v1, v3, v15, v7}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/meishu/sdk/core/view/ShakeImageView;)V

    .line 54
    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    if-eqz v9, :cond_8

    .line 56
    const-string v7, "\u6447\u4e00\u6447"

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_8
    const-string v7, "\u6447\u52a8\u6216\u70b9\u51fb"

    goto :goto_5

    .line 58
    :cond_9
    iget-object v10, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v10}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v10

    invoke-virtual {v10}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v10

    invoke-static {v10}, Lcom/meishu/sdk/core/utils/h;->e(I)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 59
    invoke-virtual {v1, v3, v15, v7}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/meishu/sdk/core/view/ShakeImageView;)V

    .line 60
    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    if-eqz v9, :cond_a

    .line 62
    const-string v7, "\u626d\u4e00\u626d"

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_a
    const-string v7, "\u626d\u52a8\u6216\u70b9\u51fb"

    goto :goto_5

    :cond_b
    if-eqz v14, :cond_c

    if-nez v16, :cond_c

    .line 64
    invoke-virtual {v14, v12}, Landroid/view/View;->setVisibility(I)V

    .line 65
    sget v7, Lcom/meishu/sdk/R$drawable;->ms_ic_right:I

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    const-string v7, "\u70b9\u51fb"

    .line 68
    :goto_5
    iget-object v8, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v8}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v8

    invoke-virtual {v8}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    const-string v8, "\u7acb\u5373\u4e0b\u8f7d"

    goto :goto_6

    :cond_d
    const-string v8, "\u67e5\u770b\u8be6\u60c5"

    .line 69
    :goto_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 70
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x8

    .line 71
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    invoke-virtual {v1, v11}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Landroid/widget/ImageView;)V

    .line 73
    invoke-virtual {v1, v13, v0}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Landroid/widget/TextView;Landroid/view/View;)V

    .line 74
    :try_start_0
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x1

    .line 75
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 76
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 77
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 78
    iget v5, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->e:I

    if-lez v5, :cond_e

    int-to-float v5, v5

    .line 79
    iget v7, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_9

    .line 80
    :cond_e
    :goto_7
    iget v5, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->f:I

    if-lez v5, :cond_f

    int-to-float v5, v5

    .line 81
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v2

    float-to-int v2, v5

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 82
    :cond_f
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x8

    .line 83
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    new-instance v2, Lcom/meishu/sdk/platform/ms/recycler/b;

    iget-object v5, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    invoke-virtual {v5}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    iget-object v5, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 85
    iget-object v5, v5, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 86
    check-cast v5, Lcom/meishu/sdk/meishu_ad/nativ/f;

    new-instance v7, Lcom/meishu/sdk/platform/ms/recycler/h;

    invoke-direct {v7, v1, v6}, Lcom/meishu/sdk/platform/ms/recycler/h;-><init>(Lcom/meishu/sdk/platform/ms/recycler/i;Landroid/view/ViewGroup;)V

    invoke-direct {v2, v5, v7}, Lcom/meishu/sdk/platform/ms/recycler/b;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V

    const/4 v5, 0x0

    invoke-interface {v0, v6, v5, v2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Lcom/meishu/sdk/meishu_ad/nativ/e;)V

    .line 87
    iget-object v0, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v0

    .line 88
    iget-object v2, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 90
    sget-object v0, Lcom/meishu/sdk/core/utils/h0;->a:Ljava/util/concurrent/ExecutorService;

    .line 91
    sget-object v7, Lcom/meishu/sdk/core/utils/h0$b;->a:Lcom/meishu/sdk/core/utils/h0;

    .line 92
    new-instance v0, Lcom/meishu/sdk/platform/ms/recycler/g;

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/meishu/sdk/platform/ms/recycler/g;-><init>(Lcom/meishu/sdk/platform/ms/recycler/i;Ljava/lang/String;Landroid/content/Context;Landroid/widget/ImageView;Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v7, v0}, Lcom/meishu/sdk/core/utils/h0;->a(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    .line 93
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_10
    :goto_8
    if-nez v16, :cond_11

    .line 94
    iget-object v0, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    move-result-object v0

    instance-of v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    if-eqz v0, :cond_11

    .line 95
    iget-object v0, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setRadius(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_a

    .line 96
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_11
    :goto_a
    if-eqz v16, :cond_13

    if-eqz p2, :cond_13

    .line 97
    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    move-result v0

    const/16 v2, 0x65

    if-eq v0, v2, :cond_12

    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    move-result v0

    const/16 v2, 0xc9

    if-ne v0, v2, :cond_13

    .line 98
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getCreative()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 99
    iget-object v3, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->c:Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v9, p6

    move-object v8, v11

    move-object v7, v13

    invoke-virtual/range {v1 .. v10}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/meishu/sdk/core/view/RoundImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    :cond_13
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->i:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->d()V

    .line 29
    .line 30
    .line 31
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->q:Landroid/widget/FrameLayout;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->y:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->getInstance()Lcom/meishu/sdk/core/view/FeedAdOverlayManager;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/recycler/i;->e()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->removeOverlay(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    :goto_1
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
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

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
    iget v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->x:I

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdPatternType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getAdPatternType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getAdView()Landroid/view/View;
    .locals 12

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->c:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    if-nez v0, :cond_e

    .line 4
    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

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
    const/4 v3, 0x6

    .line 28
    const/4 v4, 0x1

    .line 29
    if-lt v0, v4, :cond_1

    .line 30
    .line 31
    if-le v0, v3, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v5, v0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    move v5, v4

    .line 37
    :goto_1
    sget-object v0, Lcom/meishu/sdk/core/utils/c$a;->a:Lcom/meishu/sdk/core/utils/c;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/utils/c;->a(Landroid/content/Context;)Lcom/meishu/sdk/core/domain/LayoutBean;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    new-instance v0, Lcom/google/gson/Gson;

    .line 46
    .line 47
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v6, "{\n    \"dpi\": 160,\n    \"style\": [\n        {\n            \"id\": 1,\n            \"type\": 101,\n            \"container\": {\n                \"padding\": [\n                    0,\n                    10,\n                    0,\n                    10\n                ],\n                \"border\": {\n                    \"radius\": [\n                        0,\n                        0,\n                        0,\n                        0\n                    ],\n                    \"clip\": false\n                }\n            },\n            \"title\": {\n                \"margin\": [\n                    10,\n                    0,\n                    10,\n                    0\n                ],\n                \"padding\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"text\": {\n                    \"family\": \"monospace\",\n                    \"size\": 14,\n                    \"color\": \"000000\",\n                    \"lines\": 1\n                }\n            },\n            \"content\": {\n                \"margin\": [\n                    0,\n                    0,\n                    10,\n                    0\n                ],\n                \"padding\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"text\": {\n                    \"family\": \"monospace\",\n                    \"size\": 12,\n                    \"color\": \"808080\",\n                    \"lines\": 1\n                }\n            },\n            \"creative\": {\n                \"margin\": [\n                    0,\n                    0,\n                    10,\n                    0\n                ],\n                \"border\": {\n                    \"radius\": [\n                        0,\n                        0,\n                        0,\n                        0\n                    ],\n                    \"clip\": false\n                }\n            },\n            \"logo\": {\n                \"hide\": false,\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    2\n                ]\n            },\n            \"source\": {\n                \"hide\": false,\n                \"margin\": [\n                    1,\n                    0,\n                    0,\n                    4\n                ],\n                \"padding\": [\n                    2,\n                    2,\n                    2,\n                    2\n                ],\n                \"text\": {\n                    \"size\": 12,\n                    \"color\": \"808080\"\n                }\n            },\n            \"icon\": {\n                \"width\": 18,\n                \"margin\": [\n                    4,\n                    0,\n                    0,\n                    0\n                ],\n                \"border\": {\"radius\": [\n                    13,\n                    13,\n                    13,\n                    13\n                ]}\n            },\n            \"button\": {\n                \"margin\": [\n                    0,\n                    0,\n                    10,\n                    0\n                ],\n                \"padding\": [\n                    4,\n                    4,\n                    4,\n                    4\n                ],\n                \"border\": {\n                    \"size\": 1,\n                    \"color\": \"1A73E8\",\n                    \"radius\": [\n                        2,\n                        2,\n                        2,\n                        2\n                    ]\n                },\n                \"background\": {\"color\": null},\n                \"text\": {\n                    \"size\": 12,\n                    \"weight\": 400,\n                    \"color\": \"1A73E8\"\n                }\n            }\n        },\n        {\n            \"id\": 2,\n            \"type\": 201,\n            \"container\": {\n                \"padding\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"border\": {\n                    \"radius\": [\n                        0,\n                        0,\n                        0,\n                        0\n                    ],\n                    \"clip\": false\n                }\n            },\n            \"title\": {\n                \"margin\": [\n                    5,\n                    0,\n                    0,\n                    10\n                ],\n                \"padding\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"text\": {\n                    \"family\": \"monospace\",\n                    \"size\": 14,\n                    \"color\": \"000000\",\n                    \"lines\": 1\n                }\n            },\n            \"content\": {\n                \"margin\": [\n                    3,\n                    0,\n                    0,\n                    10\n                ],\n                \"padding\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"text\": {\n                    \"family\": \"monospace\",\n                    \"size\": 12,\n                    \"color\": \"808080\",\n                    \"lines\": 1\n                }\n            },\n            \"creative\": {\n                \"margin\": [\n                    10,\n                    10,\n                    0,\n                    10\n                ],\n                \"border\": {\n                    \"radius\": [\n                        0,\n                        0,\n                        0,\n                        0\n                    ],\n                    \"clip\": false\n                }\n            },\n            \"logo\": {\n                \"hide\": false,\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ]\n            },\n            \"source\": {\n                \"hide\": false,\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    4\n                ],\n                \"padding\": [\n                    2,\n                    2,\n                    2,\n                    2\n                ],\n                \"text\": {\n                    \"size\": 12,\n                    \"color\": \"808080\"\n                }\n            },\n            \"icon\": {\n                \"width\": 18,\n                \"margin\": [\n                    12,\n                    0,\n                    0,\n                    0\n                ],\n                \"border\": {\"radius\": [\n                    8,\n                    8,\n                    8,\n                    8\n                ]}\n            },\n            \"dislike\": {\n                \"hide\": false,\n                \"margin\": [\n                    0,\n                    10,\n                    0,\n                    0\n                ],\n                \"padding\": [\n                    1,\n                    3,\n                    1,\n                    3\n                ],\n                \"border\": {\n                    \"size\": 0,\n                    \"color\": \"808080\"\n                },\n                \"background\": {\"color\": null},\n                \"text\": {\"size\": 11}\n            },\n            \"button\": {\n                \"margin\": [\n                    0,\n                    0,\n                    10,\n                    0\n                ],\n                \"padding\": [\n                    4,\n                    4,\n                    4,\n                    4\n                ],\n                \"border\": {\n                    \"size\": 1,\n                    \"color\": \"1A73E8\",\n                    \"radius\": [\n                        2,\n                        2,\n                        2,\n                        2\n                    ]\n                },\n                \"background\": {\"color\": null},\n                \"text\": {\n                    \"size\": 12,\n                    \"weight\": 400,\n                    \"color\": \"1A73E8\"\n                }\n            }\n        },\n        {\n            \"id\": 3,\n            \"type\": 301,\n            \"container\": {\n                \"padding\": [\n                    16,\n                    16,\n                    16,\n                    16\n                ],\n                \"border\": {\n                    \"radius\": [\n                        0,\n                        0,\n                        0,\n                        0\n                    ],\n                    \"clip\": false\n                }\n            },\n            \"title\": {\n                \"margin\": [\n                    0,\n                    0,\n                    10,\n                    15\n                ],\n                \"padding\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"text\": {\n                    \"family\": \"monospace\",\n                    \"size\": 15,\n                    \"color\": \"000000\",\n                    \"lines\": 1\n                }\n            },\n            \"content\": {\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    15\n                ],\n                \"padding\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"text\": {\n                    \"family\": \"monospace\",\n                    \"size\": 12,\n                    \"color\": \"808080\",\n                    \"lines\": 1\n                }\n            },\n            \"creative\": {\n                \"width\": 138,\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"border\": {\n                    \"radius\": [\n                        0,\n                        0,\n                        0,\n                        0\n                    ],\n                    \"clip\": false\n                }\n            },\n            \"logo\": {\n                \"hide\": false,\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ]\n            },\n            \"source\": {\n                \"hide\": false,\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"padding\": [\n                    2,\n                    2,\n                    2,\n                    2\n                ],\n                \"text\": {\n                    \"size\": 13,\n                    \"color\": \"808080\"\n                }\n            },\n            \"dislike\": {\n                \"hide\": false,\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"padding\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"background\": {\"color\": null},\n                \"text\": {\"size\": 10}\n            }\n            ,\n            \"button\": {\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"padding\": [\n                    4,\n                    4,\n                    4,\n                    4\n                ],\n                \"background\": {\"color\": null},\n                \"text\": {\n                    \"size\": 12,\n                    \"weight\": 400,\n                    \"color\": \"1A73E8\"\n                }\n            }\n        },\n        {\n            \"id\": 4,\n            \"type\": 401,\n            \"container\": {\n                \"padding\": [\n                    16,\n                    16,\n                    16,\n                    16\n                ],\n                \"border\": {\n                    \"radius\": [\n                        0,\n                        0,\n                        0,\n                        0\n                    ],\n                    \"clip\": false\n                }\n            },\n            \"title\": {\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"padding\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"text\": {\n                    \"family\": \"monospace\",\n                    \"size\": 15,\n                    \"color\": \"000000\",\n                    \"lines\": 1\n                }\n            },\n            \"creative\": {\n                \"width\": 138,\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"border\": {\n                    \"radius\": [\n                        0,\n                        0,\n                        0,\n                        0\n                    ],\n                    \"clip\": false\n                }\n            },\n            \"logo\": {\n                \"hide\": false,\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ]\n            }, \"content\": {\n                \"margin\": [\n                    0,\n                    0,\n                    10,\n                    0\n                ],\n                \"padding\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"text\": {\n                    \"family\": \"monospace\",\n                    \"size\": 12,\n                    \"color\": \"808080\",\n                    \"lines\": 1\n                }\n            },\n            \"source\": {\n                \"hide\": false,\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"padding\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"text\": {\n                    \"size\": 13,\n                    \"color\": \"808080\"\n                }\n            },\n            \"dislike\": {\n                \"hide\": false,\n                \"margin\": [\n                    0,\n                    20,\n                    0,\n                    0\n                ],\n                \"padding\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"background\": {\"color\": null},\n                \"text\": {\"size\": 10}\n            },\n            \"button\": {\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"padding\": [\n                    4,\n                    4,\n                    4,\n                    4\n                ],\n                \"border\": {\n                    \"size\": 1,\n                    \"color\": \"1A73E8\",\n                    \"radius\": [\n                        2,\n                        2,\n                        2,\n                        2\n                    ]\n                },\n                \"background\": {\"color\": null},\n                \"text\": {\n                    \"size\": 12,\n                    \"weight\": 400,\n                    \"color\": \"000000\"\n                }\n            }\n        },\n        {\n            \"id\": 5,\n            \"type\": 501,\n            \"container\": {\n                \"padding\": [\n                    0,\n                    16,\n                    0,\n                    16\n                ],\n                \"border\": {\n                    \"radius\": [\n                        0,\n                        0,\n                        0,\n                        0\n                    ],\n                    \"clip\": false\n                }\n            },\n            \"title\": {\n                \"margin\": [\n                    9,\n                    0,\n                    12,\n                    0\n                ],\n                \"padding\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"text\": {\n                    \"family\": \"monospace\",\n                    \"size\": 15,\n                    \"color\": \"000000\",\n                    \"lines\": 1\n                }\n            },\n            \"content\": {\n                \"margin\": [\n                    0,\n                    0,\n                    10,\n                    0\n                ],\n                \"padding\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"text\": {\n                    \"family\": \"monospace\",\n                    \"size\": 12,\n                    \"color\": \"808080\",\n                    \"lines\": 1\n                }\n            },\n            \"source\": {\n                \"hide\": false,\n                \"margin\": [\n                    15,\n                    0,\n                    0,\n                    6\n                ],\n                \"padding\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"text\": {\n                    \"size\": 13,\n                    \"color\": \"808080\"\n                }\n            },\n            \"dislike\": {\n                \"hide\": false,\n                \"margin\": [\n                    14,\n                    0,\n                    0,\n                    0\n                ],\n                \"padding\": [\n                    2,\n                    4,\n                    2,\n                    4\n                ],\n                \"border\": {\n                    \"size\": 0,\n                    \"color\": \"808080\"\n                },\n                \"background\": {\"color\": null},\n                \"text\": {\"size\": 10}\n            },\n            \"creatives\": {\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"childs\": {\n                    \"left\": {\n                        \"margin\": [\n                            0,\n                            2,\n                            0,\n                            0\n                        ],\n                        \"border\": {\n                            \"radius\": [\n                                0,\n                                0,\n                                0,\n                                0\n                            ],\n                            \"clip\": false\n                        }\n                    },\n                    \"center\": {\n                        \"margin\": [\n                            0,\n                            0,\n                            0,\n                            0\n                        ],\n                        \"border\": {\n                            \"radius\": [\n                                0,\n                                0,\n                                0,\n                                0\n                            ],\n                            \"clip\": false\n                        }\n                    },\n                    \"right\": {\n                        \"margin\": [\n                            0,\n                            0,\n                            0,\n                            2\n                        ],\n                        \"border\": {\n                            \"radius\": [\n                                0,\n                                0,\n                                0,\n                                0\n                            ],\n                            \"clip\": false\n                        }\n                    }\n                }\n            },\n            \"logo\": {\n                \"hide\": false,\n                \"margin\": [\n                    0,\n                    0,\n                    0,\n                    10\n                ]\n            },\n            \"icon\": {\n                \"width\": 18,\n                \"margin\": [\n                    12,\n                    0,\n                    0,\n                    0\n                ],\n                \"border\": {\"radius\": [\n                    15,\n                    15,\n                    15,\n                    15\n                ]}\n            },\n            \"button\": {\n                \"margin\": [\n                    8,\n                    0,\n                    8,\n                    0\n                ],\n                \"padding\": [\n                    4,\n                    9,\n                    4,\n                    9\n                ],\n                \"border\": {\n                    \"size\": 1,\n                    \"color\": \"1A73E8\",\n                    \"radius\": [\n                        2,\n                        2,\n                        2,\n                        2\n                    ]\n                },\n                \"background\": {\"color\": null},\n                \"text\": {\n                    \"size\": 13,\n                    \"weight\": 400,\n                    \"color\": \"1A73E8\"\n                }\n            }\n        }\n    ]\n}"

    .line 51
    .line 52
    const-class v7, Lcom/meishu/sdk/core/domain/LayoutBean;

    .line 53
    .line 54
    invoke-virtual {v0, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/meishu/sdk/core/domain/LayoutBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    move-object v1, p0

    .line 63
    goto/16 :goto_b

    .line 64
    .line 65
    :cond_2
    :goto_2
    const/4 v6, 0x0

    .line 66
    const/4 v7, 0x0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    :try_start_1
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/LayoutBean;->getStyle()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    move v8, v6

    .line 76
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-ge v8, v9, :cond_4

    .line 81
    .line 82
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    check-cast v9, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;

    .line 87
    .line 88
    invoke-virtual {v9}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getId()I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-ne v5, v9, :cond_3

    .line 93
    .line 94
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    check-cast v9, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .line 100
    move-object v7, v9

    .line 101
    goto :goto_4

    .line 102
    :catch_0
    move-exception v0

    .line 103
    goto :goto_5

    .line 104
    :cond_3
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :goto_5
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 108
    .line 109
    .line 110
    :cond_4
    const/16 v0, 0x259

    .line 111
    .line 112
    if-ne v5, v3, :cond_5

    .line 113
    .line 114
    invoke-static {}, Lcom/meishu/sdk/core/utils/r0;->d()Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-nez v3, :cond_5

    .line 119
    .line 120
    new-instance v7, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;

    .line 121
    .line 122
    invoke-direct {v7}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7, v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->setType(I)V

    .line 126
    .line 127
    .line 128
    :cond_5
    move-object v3, v7

    .line 129
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 130
    .line 131
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {v5}, Lcom/meishu/sdk/core/MSAdConfig;->userPreRenderPaddings()[I

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    const/high16 v7, 0x41800000    # 16.0f

    .line 140
    .line 141
    mul-float/2addr v7, v1

    .line 142
    float-to-int v7, v7

    .line 143
    const/4 v8, 0x2

    .line 144
    if-eqz v5, :cond_6

    .line 145
    .line 146
    array-length v9, v5

    .line 147
    const/4 v10, 0x4

    .line 148
    if-ne v9, v10, :cond_6

    .line 149
    .line 150
    aget v6, v5, v6

    .line 151
    .line 152
    int-to-float v6, v6

    .line 153
    mul-float/2addr v6, v1

    .line 154
    float-to-int v7, v6

    .line 155
    aget v6, v5, v4

    .line 156
    .line 157
    int-to-float v6, v6

    .line 158
    mul-float/2addr v6, v1

    .line 159
    float-to-int v6, v6

    .line 160
    aget v9, v5, v8

    .line 161
    .line 162
    int-to-float v9, v9

    .line 163
    mul-float/2addr v9, v1

    .line 164
    float-to-int v9, v9

    .line 165
    const/4 v10, 0x3

    .line 166
    aget v5, v5, v10

    .line 167
    .line 168
    int-to-float v5, v5

    .line 169
    mul-float/2addr v5, v1

    .line 170
    float-to-int v1, v5

    .line 171
    move v5, v6

    .line 172
    move v6, v9

    .line 173
    goto :goto_6

    .line 174
    :cond_6
    move v1, v7

    .line 175
    move v5, v1

    .line 176
    move v6, v5

    .line 177
    :goto_6
    const-string v9, "i"

    .line 178
    .line 179
    new-instance v10, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    const-string v11, "AdPatternType = "

    .line 185
    .line 186
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    iget-object v11, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 190
    .line 191
    invoke-interface {v11}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getAdPatternType()I

    .line 192
    .line 193
    .line 194
    move-result v11

    .line 195
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    invoke-static {v9, v10}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object v9, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 206
    .line 207
    invoke-interface {v9}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 208
    .line 209
    .line 210
    move-result-object v9

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 212
    .line 213
    .line 214
    move-result-wide v10

    .line 215
    iput-wide v10, v9, Lcom/meishu/sdk/meishu_ad/nativ/f;->C:J

    .line 216
    .line 217
    if-eqz v3, :cond_b

    .line 218
    .line 219
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    const/16 v9, 0x65

    .line 224
    .line 225
    if-eq v4, v9, :cond_7

    .line 226
    .line 227
    const/16 v9, 0xc9

    .line 228
    .line 229
    if-eq v4, v9, :cond_7

    .line 230
    .line 231
    const/16 v9, 0x12d

    .line 232
    .line 233
    if-eq v4, v9, :cond_9

    .line 234
    .line 235
    const/16 v9, 0x191

    .line 236
    .line 237
    if-eq v4, v9, :cond_9

    .line 238
    .line 239
    const/16 v9, 0x1f5

    .line 240
    .line 241
    if-eq v4, v9, :cond_8

    .line 242
    .line 243
    if-eq v4, v0, :cond_7

    .line 244
    .line 245
    :goto_7
    move-object v1, p0

    .line 246
    goto/16 :goto_a

    .line 247
    .line 248
    :cond_7
    move v4, v7

    .line 249
    move v7, v1

    .line 250
    move-object v1, p0

    .line 251
    goto :goto_8

    .line 252
    :cond_8
    move v4, v7

    .line 253
    move v7, v1

    .line 254
    move-object v1, p0

    .line 255
    invoke-virtual/range {v1 .. v7}, Lcom/meishu/sdk/platform/ms/recycler/i;->b(Landroid/content/Context;Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    .line 257
    .line 258
    goto :goto_7

    .line 259
    :cond_9
    move v4, v7

    .line 260
    move v7, v1

    .line 261
    move-object v1, p0

    .line 262
    :try_start_3
    invoke-virtual/range {v1 .. v7}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Landroid/content/Context;Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;IIII)V

    .line 263
    .line 264
    .line 265
    goto :goto_a

    .line 266
    :catchall_1
    move-exception v0

    .line 267
    goto/16 :goto_b

    .line 268
    .line 269
    :goto_8
    iget-object v0, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 270
    .line 271
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getAdPatternType()I

    .line 272
    .line 273
    .line 274
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 275
    if-ne v0, v8, :cond_a

    .line 276
    .line 277
    :try_start_4
    invoke-virtual/range {v1 .. v7}, Lcom/meishu/sdk/platform/ms/recycler/i;->d(Landroid/content/Context;Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;IIII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 278
    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_a
    :try_start_5
    invoke-virtual/range {v1 .. v7}, Lcom/meishu/sdk/platform/ms/recycler/i;->c(Landroid/content/Context;Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;IIII)V

    .line 282
    .line 283
    .line 284
    goto :goto_a

    .line 285
    :cond_b
    move v0, v1

    .line 286
    move-object v1, p0

    .line 287
    iget-object v9, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 288
    .line 289
    invoke-interface {v9}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getAdPatternType()I

    .line 290
    .line 291
    .line 292
    move-result v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 293
    if-eq v9, v4, :cond_c

    .line 294
    .line 295
    if-eq v9, v8, :cond_d

    .line 296
    .line 297
    packed-switch v9, :pswitch_data_0

    .line 298
    .line 299
    .line 300
    goto :goto_a

    .line 301
    :pswitch_0
    move v4, v7

    .line 302
    move v7, v0

    .line 303
    :try_start_6
    invoke-virtual/range {v1 .. v7}, Lcom/meishu/sdk/platform/ms/recycler/i;->b(Landroid/content/Context;Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;IIII)V

    .line 304
    .line 305
    .line 306
    goto :goto_7

    .line 307
    :cond_c
    :pswitch_1
    move v4, v7

    .line 308
    move-object v1, p0

    .line 309
    move v7, v0

    .line 310
    goto :goto_9

    .line 311
    :pswitch_2
    move v4, v7

    .line 312
    move v7, v0

    .line 313
    invoke-virtual/range {v1 .. v7}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Landroid/content/Context;Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;IIII)V

    .line 314
    .line 315
    .line 316
    goto :goto_7

    .line 317
    :cond_d
    move v4, v7

    .line 318
    move v7, v0

    .line 319
    invoke-virtual/range {v1 .. v7}, Lcom/meishu/sdk/platform/ms/recycler/i;->d(Landroid/content/Context;Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;IIII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 320
    .line 321
    .line 322
    goto :goto_7

    .line 323
    :goto_9
    :try_start_7
    invoke-virtual/range {v1 .. v7}, Lcom/meishu/sdk/platform/ms/recycler/i;->c(Landroid/content/Context;Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;IIII)V

    .line 324
    .line 325
    .line 326
    :goto_a
    iget-object v0, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->c:Landroid/widget/RelativeLayout;

    .line 327
    .line 328
    if-eqz v0, :cond_f

    .line 329
    .line 330
    new-instance v0, Lcom/meishu/sdk/core/view/DownloadView;

    .line 331
    .line 332
    invoke-direct {v0}, Lcom/meishu/sdk/core/view/DownloadView;-><init>()V

    .line 333
    .line 334
    .line 335
    iget-object v4, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->c:Landroid/widget/RelativeLayout;

    .line 336
    .line 337
    iget-object v5, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 338
    .line 339
    invoke-interface {v5}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    invoke-virtual {v0, v4, v5, v3}, Lcom/meishu/sdk/core/view/DownloadView;->handleFeedDownloadView(Landroid/view/View;Lcom/meishu/sdk/core/ad/BaseAdSlot;Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;)V

    .line 344
    .line 345
    .line 346
    new-instance v0, Ljava/util/ArrayList;

    .line 347
    .line 348
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .line 350
    .line 351
    iget-object v3, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->c:Landroid/widget/RelativeLayout;

    .line 352
    .line 353
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0, v2, v0}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Landroid/content/Context;Ljava/util/List;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 357
    .line 358
    .line 359
    goto :goto_c

    .line 360
    :cond_e
    move-object v1, p0

    .line 361
    goto :goto_c

    .line 362
    :goto_b
    sget-object v2, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 363
    .line 364
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 365
    .line 366
    .line 367
    move-result v2

    .line 368
    const-string v3, "\u6e32\u67d3\u5931\u8d25"

    .line 369
    .line 370
    invoke-virtual {p0, v2, v3}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(ILjava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 374
    .line 375
    .line 376
    :cond_f
    :goto_c
    iget-object v0, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->c:Landroid/widget/RelativeLayout;

    .line 377
    .line 378
    return-object v0

    .line 379
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAppIntro()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppIntroUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppPremissionUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppSize()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomVideo()Lcom/meishu/sdk/platform/ms/recycler/MsCustomVideo;
    .locals 1

    const/4 v0, 0x0

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

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
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeveloper()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDuration()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-wide v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->y:J

    .line 8
    .line 9
    const-wide/16 v2, 0x3e8

    .line 10
    .line 11
    mul-long/2addr v0, v2

    .line 12
    return-wide v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFromId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFromLogo()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->b:I

    .line 8
    .line 9
    return v0
.end method

.method public getIconTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImgUrls()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/a;->a(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    new-array v0, v0, [Ljava/lang/String;

    .line 30
    .line 31
    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getInteractionType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMediaView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoCover()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->a:I

    .line 8
    .line 9
    return v0
.end method

.method public isAdValid()Z
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

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
    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

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

    const/4 v0, 0x1

    return v0
.end method

.method public mute()V
    .locals 0

    return-void
.end method

.method public pauseVideo()V
    .locals 0

    return-void
.end method

.method public replay()V
    .locals 0

    return-void
.end method

.method public resumeVideo()V
    .locals 0

    return-void
.end method

.method public sendLossNotification(Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

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
    .locals 0

    return-void
.end method

.method public setExpressMediaListener(Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i;->h:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;

    .line 2
    .line 3
    return-void
.end method

.method public startVideo()V
    .locals 0

    return-void
.end method

.method public stopVideo()V
    .locals 0

    return-void
.end method

.method public unmute()V
    .locals 0

    return-void
.end method
