.class public Lcom/fl/saas/K0;
.super Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/bidding/BiddingResult;
.implements Lcom/fl/saas/adx/base/innterNative/ActionView;
.implements Lcom/fl/saas/adx/base/interfaces/AdChangeCacheData;
.implements Lcom/fl/saas/adx/base/interfaces/DeepLinkOpenListener;


# static fields
.field private static final l:Ljava/lang/String;


# instance fields
.field private a:Lcom/fl/saas/adx/base/widget/S2SVideoView;

.field private final b:Z

.field private final c:Lcom/fl/saas/G0;

.field private d:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

.field private e:Z

.field private f:Z

.field private g:Lcom/fl/saas/adx/base/widget/NativeSlidingView;

.field private h:Z

.field private i:Ljava/util/List;

.field private j:Landroid/view/View;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "S2S"

    .line 2
    .line 3
    const-class v1, Lcom/fl/saas/K0;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/CommConstant;->getClassTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/fl/saas/K0;->l:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fl/saas/j;Lcom/fl/saas/G0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/fl/saas/K0;->b:Z

    .line 6
    .line 7
    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lcom/fl/saas/K0;->e:Z

    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/fl/saas/K0;->f:Z

    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/fl/saas/K0;->h:Z

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/fl/saas/K0;->k:Z

    .line 15
    .line 16
    iput-object p3, p0, Lcom/fl/saas/K0;->c:Lcom/fl/saas/G0;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/K0;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/K0;->i:Ljava/util/List;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 6
    :try_start_0
    sget-object v0, Lcom/fl/saas/K0;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindNativeView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/fl/saas/K0;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/fl/saas/K0;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAdView()Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/n1;

    invoke-direct {v1, p0}, Lcom/fl/saas/n1;-><init>(Lcom/fl/saas/K0;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->setOnVisibilityChanged(Lcom/fl/saas/B;)V

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAdView()Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/p1;

    invoke-direct {v1, p0}, Lcom/fl/saas/p1;-><init>(Lcom/fl/saas/K0;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->setVisibilityRatioChanged(Lcom/fl/saas/B;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic a(IZILcom/fl/saas/j;)V
    .locals 0

    .line 8
    iput p0, p3, Lcom/fl/saas/j;->e:I

    if-eqz p1, :cond_1

    if-lez p2, :cond_0

    iget p0, p3, Lcom/fl/saas/j;->d:I

    if-gt p2, p0, :cond_0

    iput p2, p3, Lcom/fl/saas/j;->d:I

    :cond_0
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/fl/saas/x;->b(Lcom/fl/saas/j;)V

    return-void

    :cond_1
    if-lez p2, :cond_2

    iput p2, p3, Lcom/fl/saas/j;->d:I

    :cond_2
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/fl/saas/x;->a(Lcom/fl/saas/j;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/fl/saas/j;)V
    .locals 3

    const-string v0, "ECHARGINGCUSTOM"

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 3
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/fl/saas/K0;->j:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fl/saas/K0;->e:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fl/saas/K0;->j:Landroid/view/View;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    const-string v1, "2"

    iput-object v1, p2, Lcom/fl/saas/j;->p2:Ljava/lang/String;

    invoke-direct {p0}, Lcom/fl/saas/K0;->b()V

    invoke-static {p2}, Lcom/fl/saas/b;->a(Lcom/fl/saas/j;)I

    move-result v1

    iput v1, p2, Lcom/fl/saas/j;->q1:I

    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/fl/saas/x;->c(Lcom/fl/saas/j;)V

    iget-object v2, p2, Lcom/fl/saas/j;->P0:Lcom/fl/saas/j$c;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/fl/saas/j$c;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p2, Lcom/fl/saas/j;->P0:Lcom/fl/saas/j$c;

    iget-object v2, v2, Lcom/fl/saas/j$c;->a:Ljava/lang/String;

    iput-object v2, p2, Lcom/fl/saas/j;->z:Ljava/lang/String;

    :cond_3
    iget-object v2, p2, Lcom/fl/saas/j;->x0:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p2, Lcom/fl/saas/j;->x0:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p1, p2, Lcom/fl/saas/j;->x0:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->onAdClickedCallBackEvent(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/fl/saas/v;->b()Lcom/fl/saas/v;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fl/saas/v;->b(Landroid/content/Context;Lcom/fl/saas/j;)V

    invoke-virtual {p0, v1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->onAdClickedEvent(I)V

    :goto_2
    sget-object p1, Lcom/fl/saas/j$b;->a:Lcom/fl/saas/j$b;

    iput-object p1, p2, Lcom/fl/saas/j;->k2:Lcom/fl/saas/j$b;

    const/16 p1, -0x3e7

    iput p1, p2, Lcom/fl/saas/j;->E1:I

    iput p1, p2, Lcom/fl/saas/j;->F1:I

    iput p1, p2, Lcom/fl/saas/j;->I1:I

    iput p1, p2, Lcom/fl/saas/j;->J1:I

    iput p1, p2, Lcom/fl/saas/j;->G1:I

    iput p1, p2, Lcom/fl/saas/j;->H1:I

    iput p1, p2, Lcom/fl/saas/j;->K1:I

    iput p1, p2, Lcom/fl/saas/j;->L1:I

    iput p1, p2, Lcom/fl/saas/j;->M1:I

    iput p1, p2, Lcom/fl/saas/j;->N1:I

    iput p1, p2, Lcom/fl/saas/j;->O1:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_3
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 1

    .line 16
    sget-object p1, Lcom/fl/saas/K0;->l:Ljava/lang/String;

    const-string v0, "onAdClose"

    invoke-static {p1, v0}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->onAdCloseEvent()V

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAdView()Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    move-result-object p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/View;Lcom/fl/saas/adx/base/innterNative/ActionView$Type;Lcom/fl/saas/j;)V
    .locals 6

    .line 7
    invoke-virtual {p3}, Lcom/fl/saas/j;->k()I

    move-result v4

    new-instance v5, Lcom/fl/saas/w1;

    invoke-direct {v5, p0, p3, p2, p1}, Lcom/fl/saas/w1;-><init>(Lcom/fl/saas/K0;Lcom/fl/saas/j;Lcom/fl/saas/adx/base/innterNative/ActionView$Type;Landroid/view/View;)V

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->listenInclineView(Landroid/view/View;ZLcom/fl/saas/adx/base/innterNative/ActionView$Type;ILcom/fl/saas/adx/base/widget/InclineView$InclineListener;)V

    return-void
.end method

.method private a(Lcom/fl/saas/j;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/fl/saas/K0;->a:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    if-eqz v0, :cond_1

    iget v1, p1, Lcom/fl/saas/j;->H:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/fl/saas/u1;

    invoke-direct {v1, p0}, Lcom/fl/saas/u1;-><init>(Lcom/fl/saas/K0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/fl/saas/K0;->a:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    new-instance v1, Lcom/fl/saas/v1;

    invoke-direct {v1, p0, p1}, Lcom/fl/saas/v1;-><init>(Lcom/fl/saas/K0;Lcom/fl/saas/j;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic a(Lcom/fl/saas/j;III)V
    .locals 0

    .line 15
    iput p2, p1, Lcom/fl/saas/j;->M1:I

    iput p3, p1, Lcom/fl/saas/j;->N1:I

    iput p4, p1, Lcom/fl/saas/j;->O1:I

    iget-object p2, p0, Lcom/fl/saas/K0;->i:Ljava/util/List;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/fl/saas/K0;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    if-eqz p3, :cond_0

    sget-object p2, Lcom/fl/saas/j$b;->b:Lcom/fl/saas/j$b;

    iput-object p2, p1, Lcom/fl/saas/j;->k2:Lcom/fl/saas/j$b;

    invoke-virtual {p3}, Landroid/view/View;->performClick()Z

    :cond_1
    iget-object p1, p0, Lcom/fl/saas/K0;->j:Landroid/view/View;

    invoke-static {p1}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fl/saas/K0;->e:Z

    return-void
.end method

.method private synthetic a(Lcom/fl/saas/j;Landroid/view/View;)V
    .locals 4

    .line 11
    const-string p2, "1"

    iput-object p2, p1, Lcom/fl/saas/j;->o2:Ljava/lang/String;

    iget-object p2, p0, Lcom/fl/saas/K0;->a:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-virtual {p2}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->getProgress()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/fl/saas/j;->U1:J

    iget-object p2, p0, Lcom/fl/saas/K0;->a:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-virtual {p2}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->getProgress()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p1, Lcom/fl/saas/j;->V1:J

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/fl/saas/K0;->a(Landroid/content/Context;Lcom/fl/saas/j;)V

    return-void
.end method

.method private synthetic a(Lcom/fl/saas/j;Lcom/fl/saas/adx/base/innterNative/ActionView$Type;Landroid/view/View;III)V
    .locals 0

    .line 14
    iput p4, p1, Lcom/fl/saas/j;->M1:I

    iput p5, p1, Lcom/fl/saas/j;->N1:I

    iput p6, p1, Lcom/fl/saas/j;->O1:I

    iget-object p4, p0, Lcom/fl/saas/K0;->i:Ljava/util/List;

    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/fl/saas/K0;->i:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/view/View;

    if-eqz p5, :cond_0

    sget-object p4, Lcom/fl/saas/j$b;->b:Lcom/fl/saas/j$b;

    iput-object p4, p1, Lcom/fl/saas/j;->k2:Lcom/fl/saas/j$b;

    invoke-virtual {p5}, Landroid/view/View;->performClick()Z

    :cond_1
    sget-object p1, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->Spread:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    if-eq p2, p1, :cond_2

    invoke-static {p3}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private synthetic a(Ljava/lang/Boolean;)V
    .locals 0

    .line 12
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/fl/saas/K0;->b()V

    return-void
.end method

.method private synthetic a(Ljava/lang/Integer;)V
    .locals 2

    .line 13
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/fl/saas/j;->n2:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAdView()Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->unOnVisibilityRatioChanged()V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/fl/saas/K0;->i:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fl/saas/K0;->i:Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/fl/saas/K0;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindClickViews"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fl/saas/K0;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fl/saas/K0;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    new-instance v2, Lcom/fl/saas/x1;

    invoke-direct {v2, p0}, Lcom/fl/saas/x1;-><init>(Lcom/fl/saas/K0;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lcom/fl/saas/o1;

    invoke-direct {v2, p0, p1}, Lcom/fl/saas/o1;-><init>(Lcom/fl/saas/K0;Ljava/util/List;)V

    invoke-static {v1, v2}, Lcom/fl/saas/adx/util/ViewHelper;->onSingleClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic a(Ljava/util/List;Landroid/view/View;)V
    .locals 2

    .line 10
    sget-object v0, Lcom/fl/saas/K0;->l:Ljava/lang/String;

    const-string v1, "viewClick"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    if-eqz v0, :cond_1

    const-string v1, "1"

    iput-object v1, v0, Lcom/fl/saas/j;->o2:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-ne v1, p2, :cond_0

    const-string p1, "2"

    iput-object p1, v0, Lcom/fl/saas/j;->o2:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/fl/saas/K0;->a(Landroid/content/Context;Lcom/fl/saas/j;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/fl/saas/K0;->l:Ljava/lang/String;

    const-string v4, "ACTION_DOWN"

    invoke-static {v0, v4}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Lcom/fl/saas/j;->E1:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Lcom/fl/saas/j;->F1:I

    new-array v4, v1, [I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v5, v0, Lcom/fl/saas/j;->E1:I

    aget v6, v4, v3

    add-int/2addr v5, v6

    iput v5, v0, Lcom/fl/saas/j;->I1:I

    iget v5, v0, Lcom/fl/saas/j;->F1:I

    aget v4, v4, v2

    add-int/2addr v5, v4

    iput v5, v0, Lcom/fl/saas/j;->J1:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/fl/saas/j;->R1:J

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/fl/saas/K0;->l:Ljava/lang/String;

    const-string v4, "ACTION_UP"

    invoke-static {v0, v4}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Lcom/fl/saas/j;->G1:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iput p2, v0, Lcom/fl/saas/j;->H1:I

    new-array p2, v1, [I

    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget p1, v0, Lcom/fl/saas/j;->G1:I

    aget v1, p2, v3

    add-int/2addr p1, v1

    iput p1, v0, Lcom/fl/saas/j;->K1:I

    iget p1, v0, Lcom/fl/saas/j;->H1:I

    aget p2, p2, v2

    add-int/2addr p1, p2

    iput p1, v0, Lcom/fl/saas/j;->L1:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/fl/saas/j;->S1:J

    :cond_1
    return v3
.end method

.method public static synthetic a(Lcom/fl/saas/K0;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/fl/saas/K0;->f:Z

    return p1
.end method

.method private b()V
    .locals 3

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/fl/saas/K0;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAdView()Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->unOnVisibilityChanged()V

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/fl/saas/K0;->isReady()Z

    move-result v1

    iput v1, v0, Lcom/fl/saas/j;->d0:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/fl/saas/j;->m2:J

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAdView()Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/fl/saas/j;->P1:I

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAdView()Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/fl/saas/j;->Q1:I

    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/fl/saas/x;->a(Lcom/fl/saas/j;Z)V

    iget-object v1, v0, Lcom/fl/saas/j;->P0:Lcom/fl/saas/j$c;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/fl/saas/j$c;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/j;

    iget-object v0, v0, Lcom/fl/saas/j;->P0:Lcom/fl/saas/j$c;

    iget-object v0, v0, Lcom/fl/saas/j$c;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/fl/saas/j;->z:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->onAdImpressedEvent()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fl/saas/K0;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(Landroid/view/View;Lcom/fl/saas/adx/base/innterNative/ActionView$Type;Lcom/fl/saas/j;)V
    .locals 6

    .line 4
    invoke-virtual {p3}, Lcom/fl/saas/j;->k()I

    move-result v4

    new-instance v5, Lcom/fl/saas/t1;

    invoke-direct {v5, p0, p3, p2, p1}, Lcom/fl/saas/t1;-><init>(Lcom/fl/saas/K0;Lcom/fl/saas/j;Lcom/fl/saas/adx/base/innterNative/ActionView$Type;Landroid/view/View;)V

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->listenShakeView(Landroid/view/View;ZLcom/fl/saas/adx/base/innterNative/ActionView$Type;ILcom/fl/saas/adx/base/widget/ShakeView$ShakeListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/fl/saas/K0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->onAdVideoEndEvent()V

    return-void
.end method

.method private b(Lcom/fl/saas/j;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/fl/saas/K0;->a:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/fl/saas/j;->t1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/fl/saas/j;->P0:Lcom/fl/saas/j$c;

    iget v0, v0, Lcom/fl/saas/j$c;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fl/saas/K0;->a:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    sget v0, Lcom/fl/saas/adx/util/DeviceUtil;->filling_timing:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/K0;->c:Lcom/fl/saas/G0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/fl/saas/G0;->a()V

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/K0;->a:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-virtual {v0, p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->setVideo(Lcom/fl/saas/j;)V

    iget-object p1, p0, Lcom/fl/saas/K0;->a:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    new-instance v0, Lcom/fl/saas/K0$b;

    invoke-direct {v0, p0}, Lcom/fl/saas/K0$b;-><init>(Lcom/fl/saas/K0;)V

    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->setVideoPlayListener(Lcom/fl/saas/adx/base/interfaces/S2SVideoPlayListener;)V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/fl/saas/K0;->c:Lcom/fl/saas/G0;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/fl/saas/G0;->a()V

    :cond_3
    return-void
.end method

.method private synthetic b(Lcom/fl/saas/j;Lcom/fl/saas/adx/base/innterNative/ActionView$Type;Landroid/view/View;III)V
    .locals 0

    .line 6
    iput p4, p1, Lcom/fl/saas/j;->M1:I

    iput p5, p1, Lcom/fl/saas/j;->N1:I

    iput p6, p1, Lcom/fl/saas/j;->O1:I

    iget-object p4, p0, Lcom/fl/saas/K0;->i:Ljava/util/List;

    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/fl/saas/K0;->i:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/view/View;

    if-eqz p5, :cond_0

    sget-object p4, Lcom/fl/saas/j$b;->b:Lcom/fl/saas/j$b;

    iput-object p4, p1, Lcom/fl/saas/j;->k2:Lcom/fl/saas/j$b;

    invoke-virtual {p5}, Landroid/view/View;->performClick()Z

    :cond_1
    sget-object p1, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->Spread:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    if-eq p2, p1, :cond_2

    invoke-static {p3}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private synthetic b(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/fl/saas/K0;->l:Ljava/lang/String;

    const-string v4, "ACTION_DOWN"

    invoke-static {v0, v4}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Lcom/fl/saas/j;->E1:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Lcom/fl/saas/j;->F1:I

    new-array v4, v1, [I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v5, v0, Lcom/fl/saas/j;->E1:I

    aget v6, v4, v3

    add-int/2addr v5, v6

    iput v5, v0, Lcom/fl/saas/j;->I1:I

    iget v5, v0, Lcom/fl/saas/j;->F1:I

    aget v4, v4, v2

    add-int/2addr v5, v4

    iput v5, v0, Lcom/fl/saas/j;->J1:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/fl/saas/j;->R1:J

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/fl/saas/K0;->l:Ljava/lang/String;

    const-string v4, "ACTION_UP"

    invoke-static {v0, v4}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Lcom/fl/saas/j;->G1:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iput p2, v0, Lcom/fl/saas/j;->H1:I

    new-array p2, v1, [I

    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget p1, v0, Lcom/fl/saas/j;->G1:I

    aget v1, p2, v3

    add-int/2addr p1, v1

    iput p1, v0, Lcom/fl/saas/j;->K1:I

    iget p1, v0, Lcom/fl/saas/j;->H1:I

    aget p2, p2, v2

    add-int/2addr p1, p2

    iput p1, v0, Lcom/fl/saas/j;->L1:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/fl/saas/j;->S1:J

    :cond_1
    return v3
.end method

.method public static synthetic c(Lcom/fl/saas/K0;)Lcom/fl/saas/G0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/K0;->c:Lcom/fl/saas/G0;

    return-object p0
.end method

.method private c(Lcom/fl/saas/j;)Lcom/fl/saas/adx/base/widget/NativeSlidingView;
    .locals 3

    .line 2
    new-instance v0, Lcom/fl/saas/adx/base/widget/NativeSlidingView;

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fl/saas/adx/base/widget/NativeSlidingView;-><init>(Landroid/content/Context;)V

    iget v1, p1, Lcom/fl/saas/j;->x:I

    new-instance v2, Lcom/fl/saas/K0$a;

    invoke-direct {v2, p0, p1, v0}, Lcom/fl/saas/K0$a;-><init>(Lcom/fl/saas/K0;Lcom/fl/saas/j;Lcom/fl/saas/adx/base/widget/NativeSlidingView;)V

    invoke-virtual {v0, v1, v2}, Lcom/fl/saas/adx/base/widget/NativeSlidingView;->setSlidingListener(ILcom/fl/saas/adx/base/widget/NativeSlidingView$SlidingListener;)V

    iget p1, p1, Lcom/fl/saas/j;->Y:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/widget/NativeSlidingView;->createView(Z)V

    return-object v0
.end method

.method public static synthetic d(Lcom/fl/saas/K0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->onAdVideoStartEvent()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/fl/saas/K0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->onAdVideoEndEvent()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/fl/saas/K0;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lcom/fl/saas/K0;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Lcom/fl/saas/K0;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lcom/fl/saas/K0;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lcom/fl/saas/K0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->onAdVideoStartEvent()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Lcom/fl/saas/K0;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/fl/saas/K0;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic o(Lcom/fl/saas/K0;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fl/saas/K0;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic p(Lcom/fl/saas/K0;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/fl/saas/K0;->a(Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(IZILcom/fl/saas/j;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/fl/saas/K0;->a(IZILcom/fl/saas/j;)V

    return-void
.end method

.method public static synthetic r(Lcom/fl/saas/K0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fl/saas/K0;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcom/fl/saas/K0;Lcom/fl/saas/j;Lcom/fl/saas/adx/base/innterNative/ActionView$Type;Landroid/view/View;III)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/fl/saas/K0;->a(Lcom/fl/saas/j;Lcom/fl/saas/adx/base/innterNative/ActionView$Type;Landroid/view/View;III)V

    return-void
.end method

.method public static synthetic t(Lcom/fl/saas/K0;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/fl/saas/K0;->b(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic u(Lcom/fl/saas/K0;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fl/saas/K0;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic v(Lcom/fl/saas/K0;Lcom/fl/saas/j;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fl/saas/K0;->a(Lcom/fl/saas/j;III)V

    return-void
.end method

.method public static synthetic w(Lcom/fl/saas/K0;Lcom/fl/saas/j;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/fl/saas/K0;->a(Lcom/fl/saas/j;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcom/fl/saas/K0;Lcom/fl/saas/j;Lcom/fl/saas/adx/base/innterNative/ActionView$Type;Landroid/view/View;III)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/fl/saas/K0;->b(Lcom/fl/saas/j;Lcom/fl/saas/adx/base/innterNative/ActionView$Type;Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method public a(FFF)V
    .locals 4

    .line 17
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    const/16 v3, -0x3e7

    if-eqz v2, :cond_1

    cmpl-float v2, p2, v1

    if-eqz v2, :cond_1

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_1

    iput v3, v0, Lcom/fl/saas/j;->E1:I

    iput v3, v0, Lcom/fl/saas/j;->F1:I

    iput v3, v0, Lcom/fl/saas/j;->I1:I

    iput v3, v0, Lcom/fl/saas/j;->J1:I

    iput v3, v0, Lcom/fl/saas/j;->G1:I

    iput v3, v0, Lcom/fl/saas/j;->H1:I

    iput v3, v0, Lcom/fl/saas/j;->K1:I

    iput v3, v0, Lcom/fl/saas/j;->L1:I

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Lcom/fl/saas/j;->M1:I

    mul-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Lcom/fl/saas/j;->N1:I

    mul-float/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Lcom/fl/saas/j;->O1:I

    sget-object p1, Lcom/fl/saas/j$b;->b:Lcom/fl/saas/j$b;

    iput-object p1, v0, Lcom/fl/saas/j;->k2:Lcom/fl/saas/j$b;

    goto :goto_0

    :cond_1
    iput v3, v0, Lcom/fl/saas/j;->M1:I

    iput v3, v0, Lcom/fl/saas/j;->N1:I

    iput v3, v0, Lcom/fl/saas/j;->O1:I

    iget p1, v0, Lcom/fl/saas/j;->C2:I

    iput p1, v0, Lcom/fl/saas/j;->E1:I

    iget p1, v0, Lcom/fl/saas/j;->D2:I

    iput p1, v0, Lcom/fl/saas/j;->F1:I

    iget p1, v0, Lcom/fl/saas/j;->E2:I

    iput p1, v0, Lcom/fl/saas/j;->G1:I

    iget p1, v0, Lcom/fl/saas/j;->F2:I

    iput p1, v0, Lcom/fl/saas/j;->H1:I

    iget p1, v0, Lcom/fl/saas/j;->G2:I

    iput p1, v0, Lcom/fl/saas/j;->I1:I

    iget p1, v0, Lcom/fl/saas/j;->H2:I

    iput p1, v0, Lcom/fl/saas/j;->J1:I

    iget p1, v0, Lcom/fl/saas/j;->I2:I

    iput p1, v0, Lcom/fl/saas/j;->K1:I

    iget p1, v0, Lcom/fl/saas/j;->J2:I

    iput p1, v0, Lcom/fl/saas/j;->L1:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/fl/saas/j;->S1:J

    iget p3, v0, Lcom/fl/saas/j;->K2:I

    int-to-long v1, p3

    sub-long/2addr p1, v1

    iput-wide p1, v0, Lcom/fl/saas/j;->R1:J

    :goto_0
    const/4 p1, 0x1

    iput p1, v0, Lcom/fl/saas/j;->L2:I

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/fl/saas/K0;->a(Landroid/content/Context;Lcom/fl/saas/j;)V

    const/4 p1, 0x0

    iput p1, v0, Lcom/fl/saas/j;->L2:I

    return-void
.end method

.method public biddingResult(ZIII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAdOpt()Lcom/fl/saas/p0;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    new-instance v0, Lcom/fl/saas/q1;

    .line 6
    .line 7
    invoke-direct {v0, p3, p1, p2}, Lcom/fl/saas/q1;-><init>(IZI)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4, v0}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public bindActionView(Lcom/fl/saas/adx/base/innterNative/ActionView$Type;)Landroid/view/View;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    :try_start_0
    iput-object v0, v1, Lcom/fl/saas/K0;->d:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lcom/fl/saas/j;

    .line 12
    .line 13
    if-eqz v2, :cond_14

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/fl/saas/j;->p()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    goto/16 :goto_a

    .line 22
    .line 23
    :cond_0
    invoke-virtual {v2}, Lcom/fl/saas/j;->h()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/16 v4, 0x51

    .line 28
    .line 29
    const/4 v5, 0x2

    .line 30
    const/4 v6, 0x0

    .line 31
    if-ne v3, v5, :cond_6

    .line 32
    .line 33
    sget-boolean v3, Lcom/fl/saas/adx/util/DeviceUtil;->deviceHasAccelerometerSensor:Z

    .line 34
    .line 35
    if-eqz v3, :cond_6

    .line 36
    .line 37
    sget-object v3, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->Spread:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    .line 38
    .line 39
    if-ne v0, v3, :cond_2

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/fl/saas/j;->v()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {v1, v3}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getSpreadShakesView(Z)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    iput-object v3, v1, Lcom/fl/saas/K0;->j:Landroid/view/View;

    .line 50
    .line 51
    if-eqz v3, :cond_5

    .line 52
    .line 53
    const/high16 v3, 0x438c0000    # 280.0f

    .line 54
    .line 55
    invoke-static {v3}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    const/high16 v5, 0x42a00000    # 80.0f

    .line 60
    .line 61
    invoke-static {v5}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    iget v7, v2, Lcom/fl/saas/j;->D:I

    .line 66
    .line 67
    if-eqz v7, :cond_1

    .line 68
    .line 69
    const/high16 v3, 0x43a00000    # 320.0f

    .line 70
    .line 71
    invoke-static {v3}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    const/high16 v5, 0x42c80000    # 100.0f

    .line 76
    .line 77
    invoke-static {v5}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    goto/16 :goto_b

    .line 84
    .line 85
    :cond_1
    :goto_0
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 86
    .line 87
    invoke-direct {v7, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 88
    .line 89
    .line 90
    iput v4, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 91
    .line 92
    const/high16 v3, 0x41200000    # 10.0f

    .line 93
    .line 94
    invoke-static {v3}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    mul-int/lit8 v3, v3, 0x3

    .line 99
    .line 100
    invoke-virtual {v7, v6, v6, v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 101
    .line 102
    .line 103
    iget-object v3, v1, Lcom/fl/saas/K0;->j:Landroid/view/View;

    .line 104
    .line 105
    invoke-virtual {v3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_2
    sget-object v3, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->Interstitial:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    .line 110
    .line 111
    if-ne v0, v3, :cond_3

    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getInterstitalShakesView()Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    iput-object v3, v1, Lcom/fl/saas/K0;->j:Landroid/view/View;

    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/fl/saas/j;->v()Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-nez v3, :cond_5

    .line 124
    .line 125
    iget-object v3, v1, Lcom/fl/saas/K0;->j:Landroid/view/View;

    .line 126
    .line 127
    if-eqz v3, :cond_5

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_3
    sget-object v3, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->Template:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    .line 131
    .line 132
    if-eq v0, v3, :cond_4

    .line 133
    .line 134
    sget-object v3, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->Banner:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    .line 135
    .line 136
    if-ne v0, v3, :cond_5

    .line 137
    .line 138
    :cond_4
    invoke-virtual {v1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getTemplateShakesView()Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    iput-object v3, v1, Lcom/fl/saas/K0;->j:Landroid/view/View;

    .line 143
    .line 144
    invoke-virtual {v2}, Lcom/fl/saas/j;->v()Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-nez v3, :cond_5

    .line 149
    .line 150
    iget-object v3, v1, Lcom/fl/saas/K0;->j:Landroid/view/View;

    .line 151
    .line 152
    if-eqz v3, :cond_5

    .line 153
    .line 154
    :goto_1
    const/4 v4, 0x0

    .line 155
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 156
    .line 157
    .line 158
    :cond_5
    :goto_2
    iget-object v3, v1, Lcom/fl/saas/K0;->j:Landroid/view/View;

    .line 159
    .line 160
    if-eqz v3, :cond_15

    .line 161
    .line 162
    goto/16 :goto_8

    .line 163
    .line 164
    :cond_6
    invoke-virtual {v2}, Lcom/fl/saas/j;->h()I

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    const/4 v7, 0x1

    .line 169
    if-ne v3, v7, :cond_7

    .line 170
    .line 171
    sget-object v3, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->Spread:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    .line 172
    .line 173
    if-ne v0, v3, :cond_7

    .line 174
    .line 175
    iget v0, v2, Lcom/fl/saas/j;->D:I

    .line 176
    .line 177
    invoke-virtual {v1, v0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getTipsView(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    goto/16 :goto_9

    .line 182
    .line 183
    :cond_7
    invoke-virtual {v2}, Lcom/fl/saas/j;->h()I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    const/4 v8, 0x4

    .line 188
    const/4 v9, -0x1

    .line 189
    const-wide v12, 0x3fd3333333333333L    # 0.3

    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    const-wide v14, 0x3fc999999999999aL    # 0.2

    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    const/high16 v16, 0x44610000    # 900.0f

    .line 200
    .line 201
    if-ne v3, v8, :cond_b

    .line 202
    .line 203
    sget-object v3, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->Spread:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    .line 204
    .line 205
    if-ne v0, v3, :cond_b

    .line 206
    .line 207
    sget-boolean v3, Lcom/fl/saas/adx/util/DeviceUtil;->deviceHasAccelerometerSensor:Z

    .line 208
    .line 209
    if-eqz v3, :cond_b

    .line 210
    .line 211
    invoke-virtual {v1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getSpreadInlineView()Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    iput-object v3, v1, Lcom/fl/saas/K0;->j:Landroid/view/View;

    .line 216
    .line 217
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getMobileHeight()I

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    if-gtz v3, :cond_8

    .line 222
    .line 223
    invoke-static/range {v16 .. v16}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    :cond_8
    const-wide v17, 0x3fd999999999999aL    # 0.4

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    int-to-double v10, v3

    .line 233
    mul-double/2addr v14, v10

    .line 234
    double-to-int v3, v14

    .line 235
    iget v6, v2, Lcom/fl/saas/j;->D:I

    .line 236
    .line 237
    if-ne v6, v7, :cond_9

    .line 238
    .line 239
    mul-double/2addr v10, v12

    .line 240
    :goto_3
    double-to-int v3, v10

    .line 241
    goto :goto_4

    .line 242
    :cond_9
    if-ne v6, v5, :cond_a

    .line 243
    .line 244
    mul-double v10, v10, v17

    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_a
    :goto_4
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 248
    .line 249
    invoke-direct {v5, v9, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 250
    .line 251
    .line 252
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 253
    .line 254
    iget-object v3, v1, Lcom/fl/saas/K0;->j:Landroid/view/View;

    .line 255
    .line 256
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    .line 258
    .line 259
    iget-object v3, v1, Lcom/fl/saas/K0;->j:Landroid/view/View;

    .line 260
    .line 261
    invoke-direct {v1, v3, v0, v2}, Lcom/fl/saas/K0;->a(Landroid/view/View;Lcom/fl/saas/adx/base/innterNative/ActionView$Type;Lcom/fl/saas/j;)V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_c

    .line 265
    .line 266
    :cond_b
    const-wide v17, 0x3fd999999999999aL    # 0.4

    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    invoke-virtual {v2}, Lcom/fl/saas/j;->h()I

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    const/4 v4, 0x5

    .line 276
    if-ne v3, v4, :cond_e

    .line 277
    .line 278
    sget-object v3, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->Spread:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    .line 279
    .line 280
    if-ne v0, v3, :cond_c

    .line 281
    .line 282
    iget v0, v2, Lcom/fl/saas/j;->D:I

    .line 283
    .line 284
    invoke-virtual {v2}, Lcom/fl/saas/j;->k()I

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    new-instance v4, Lcom/fl/saas/K0$c;

    .line 289
    .line 290
    invoke-direct {v4, v1, v2}, Lcom/fl/saas/K0$c;-><init>(Lcom/fl/saas/K0;Lcom/fl/saas/j;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, v0, v3, v4}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getSpreadSlidingView(IILcom/fl/saas/adx/base/widget/FingerSlidingView$SlidingListener;)Landroid/view/View;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    goto/16 :goto_9

    .line 298
    .line 299
    :cond_c
    sget-object v3, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->Template:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    .line 300
    .line 301
    if-eq v0, v3, :cond_d

    .line 302
    .line 303
    sget-object v3, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->Banner:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    .line 304
    .line 305
    if-ne v0, v3, :cond_15

    .line 306
    .line 307
    :cond_d
    iget v0, v2, Lcom/fl/saas/j;->x:I

    .line 308
    .line 309
    if-lez v0, :cond_15

    .line 310
    .line 311
    :goto_5
    invoke-direct {v1, v2}, Lcom/fl/saas/K0;->c(Lcom/fl/saas/j;)Lcom/fl/saas/adx/base/widget/NativeSlidingView;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    goto :goto_9

    .line 316
    :cond_e
    invoke-virtual {v2}, Lcom/fl/saas/j;->h()I

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    const/4 v4, 0x6

    .line 321
    if-ne v3, v4, :cond_12

    .line 322
    .line 323
    sget-object v3, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->Spread:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    .line 324
    .line 325
    if-ne v0, v3, :cond_12

    .line 326
    .line 327
    sget-boolean v3, Lcom/fl/saas/adx/util/DeviceUtil;->deviceHasAccelerometerSensor:Z

    .line 328
    .line 329
    if-eqz v3, :cond_12

    .line 330
    .line 331
    invoke-virtual {v1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getAreaShakesView()Landroid/view/View;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    iput-object v3, v1, Lcom/fl/saas/K0;->j:Landroid/view/View;

    .line 336
    .line 337
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getMobileHeight()I

    .line 338
    .line 339
    .line 340
    move-result v3

    .line 341
    if-gtz v3, :cond_f

    .line 342
    .line 343
    invoke-static/range {v16 .. v16}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    :cond_f
    int-to-double v3, v3

    .line 348
    mul-double/2addr v14, v3

    .line 349
    double-to-int v8, v14

    .line 350
    iget v10, v2, Lcom/fl/saas/j;->D:I

    .line 351
    .line 352
    if-ne v10, v7, :cond_10

    .line 353
    .line 354
    mul-double/2addr v3, v12

    .line 355
    :goto_6
    double-to-int v8, v3

    .line 356
    goto :goto_7

    .line 357
    :cond_10
    if-ne v10, v5, :cond_11

    .line 358
    .line 359
    mul-double v3, v3, v17

    .line 360
    .line 361
    goto :goto_6

    .line 362
    :cond_11
    :goto_7
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 363
    .line 364
    invoke-direct {v3, v9, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 365
    .line 366
    .line 367
    const/16 v4, 0x50

    .line 368
    .line 369
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 370
    .line 371
    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 372
    .line 373
    .line 374
    iget-object v4, v1, Lcom/fl/saas/K0;->j:Landroid/view/View;

    .line 375
    .line 376
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    .line 378
    .line 379
    iget-object v3, v1, Lcom/fl/saas/K0;->j:Landroid/view/View;

    .line 380
    .line 381
    if-eqz v3, :cond_15

    .line 382
    .line 383
    :goto_8
    invoke-direct {v1, v3, v0, v2}, Lcom/fl/saas/K0;->b(Landroid/view/View;Lcom/fl/saas/adx/base/innterNative/ActionView$Type;Lcom/fl/saas/j;)V

    .line 384
    .line 385
    .line 386
    goto :goto_c

    .line 387
    :cond_12
    invoke-virtual {v2}, Lcom/fl/saas/j;->h()I

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    const/4 v4, 0x7

    .line 392
    if-ne v3, v4, :cond_13

    .line 393
    .line 394
    sget-object v3, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->Spread:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    .line 395
    .line 396
    if-ne v0, v3, :cond_13

    .line 397
    .line 398
    sget-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->deviceHasAccelerometerSensor:Z

    .line 399
    .line 400
    if-eqz v0, :cond_13

    .line 401
    .line 402
    iget v0, v2, Lcom/fl/saas/j;->D:I

    .line 403
    .line 404
    invoke-virtual {v2}, Lcom/fl/saas/j;->k()I

    .line 405
    .line 406
    .line 407
    move-result v3

    .line 408
    new-instance v4, Lcom/fl/saas/K0$d;

    .line 409
    .line 410
    invoke-direct {v4, v1, v2}, Lcom/fl/saas/K0$d;-><init>(Lcom/fl/saas/K0;Lcom/fl/saas/j;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1, v0, v7, v3, v4}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getSpreadSlidingTwistingView(IZILcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView$SlidingListener;)Landroid/view/View;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    :goto_9
    iput-object v0, v1, Lcom/fl/saas/K0;->j:Landroid/view/View;

    .line 418
    .line 419
    goto :goto_c

    .line 420
    :cond_13
    invoke-virtual {v2}, Lcom/fl/saas/j;->h()I

    .line 421
    .line 422
    .line 423
    move-result v0

    .line 424
    const/16 v3, 0x8

    .line 425
    .line 426
    if-ne v0, v3, :cond_15

    .line 427
    .line 428
    invoke-virtual {v2}, Lcom/fl/saas/j;->r()Z

    .line 429
    .line 430
    .line 431
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    if-eqz v0, :cond_15

    .line 433
    .line 434
    goto :goto_5

    .line 435
    :cond_14
    :goto_a
    const/4 v0, 0x0

    .line 436
    return-object v0

    .line 437
    :goto_b
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 438
    .line 439
    .line 440
    :cond_15
    :goto_c
    iget-object v0, v1, Lcom/fl/saas/K0;->j:Landroid/view/View;

    .line 441
    .line 442
    return-object v0
.end method

.method public c()V
    .locals 1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    invoke-direct {p0, v0}, Lcom/fl/saas/K0;->b(Lcom/fl/saas/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public createNativeMaterial(Lcom/fl/saas/j;)Lcom/fl/saas/adx/api/mixNative/NativeMaterial;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/K0;->a:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p1, v0}, Lcom/fl/saas/J0;->a(Lcom/fl/saas/j;Landroid/view/View;)Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createNativeMaterial(Ljava/lang/Object;)Lcom/fl/saas/adx/api/mixNative/NativeMaterial;
    .locals 0

    .line 2
    check-cast p1, Lcom/fl/saas/j;

    invoke-virtual {p0, p1}, Lcom/fl/saas/K0;->createNativeMaterial(Lcom/fl/saas/j;)Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    move-result-object p1

    return-object p1
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/fl/saas/K0;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/fl/saas/K0;->k:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAdView()Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAdView()Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->unOnVisibilityChanged()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAdView()Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->unOnVisibilityRatioChanged()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/fl/saas/K0;->j:Landroid/view/View;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-static {v0}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/fl/saas/K0;->j:Landroid/view/View;

    .line 38
    .line 39
    :cond_2
    iget-object v0, p0, Lcom/fl/saas/K0;->a:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->onDestroy()V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/fl/saas/K0;->a:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    .line 47
    .line 48
    :cond_3
    invoke-static {}, Lcom/fl/saas/v;->b()Lcom/fl/saas/v;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/fl/saas/v;->a()V

    .line 53
    .line 54
    .line 55
    invoke-super {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->destroy()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public getCustomizeVideo()Lcom/fl/saas/adx/api/mixNative/NativeCustomizeVideo;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/fl/saas/j;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v1, v0, Lcom/fl/saas/j;->t1:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lcom/fl/saas/j;->P0:Lcom/fl/saas/j$c;

    .line 18
    .line 19
    iget v1, v1, Lcom/fl/saas/j$c;->b:I

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    if-eq v1, v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v1, Lcom/fl/saas/K0$e;

    .line 26
    .line 27
    invoke-direct {v1, p0, v0}, Lcom/fl/saas/K0$e;-><init>(Lcom/fl/saas/K0;Lcom/fl/saas/j;)V

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 32
    return-object v0
.end method

.method public init(Lcom/fl/saas/j;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic init(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/fl/saas/j;

    invoke-virtual {p0, p1}, Lcom/fl/saas/K0;->init(Lcom/fl/saas/j;)V

    return-void
.end method

.method public isNativeExpress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    check-cast v1, Lcom/fl/saas/j;

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    iget-wide v4, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->responseTime:J

    .line 15
    .line 16
    sub-long/2addr v2, v4

    .line 17
    const-wide/16 v4, 0x3e8

    .line 18
    .line 19
    div-long/2addr v2, v4

    .line 20
    iget v1, v1, Lcom/fl/saas/j;->D1:I

    .line 21
    .line 22
    int-to-long v4, v1

    .line 23
    cmp-long v1, v2, v4

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    if-gez v1, :cond_0

    .line 27
    .line 28
    move v1, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v1, v0

    .line 31
    :goto_0
    iget-boolean v3, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->isNativeReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    return v2

    .line 38
    :cond_1
    return v0

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    return v0

    .line 42
    :goto_1
    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    return v0
.end method

.method public isShakeType()Z
    .locals 1

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
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/fl/saas/j;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/fl/saas/j;->t()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/fl/saas/K0;->d:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    sget-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->deviceHasAccelerometerSensor:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    return v0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    return v0
.end method

.method public onDeepLinkOpenFailed(Landroid/app/Activity;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/fl/saas/j;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Lcom/fl/saas/j;->x0:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    iput v1, v0, Lcom/fl/saas/j;->h2:I

    .line 19
    .line 20
    iput v1, v0, Lcom/fl/saas/j;->i2:I

    .line 21
    .line 22
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, v0}, Lcom/fl/saas/x;->f(Lcom/fl/saas/j;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, v0, Lcom/fl/saas/j;->x0:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1, v2, v0}, Lcom/fl/saas/x;->a(Ljava/lang/String;Lcom/fl/saas/j;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->getInstance()Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v0, v0, Lcom/fl/saas/j;->i:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v2, v0}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->enableQuickApp(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-static {p1, v1, v0}, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->launchWithEnableQuickApp(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return-void

    .line 56
    :goto_0
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public pJ0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->gVx()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->gVy()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->gVz()F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0, v0, v1, v2}, Lcom/fl/saas/K0;->a(FFF)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public release()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->release()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public render(Lcom/fl/saas/j;Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/j;

    if-nez v0, :cond_0

    const-string p1, "S2SMixNative render but AdSource is null"

    const/16 p2, 0x4fb1

    invoke-static {p2, p1}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->onAdFailedEvent(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->getAllClickViews()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/fl/saas/K0;->i:Ljava/util/List;

    iget-boolean v1, p0, Lcom/fl/saas/K0;->e:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/j;

    invoke-virtual {v1}, Lcom/fl/saas/j;->t()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/fl/saas/K0;->d:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/fl/saas/adx/util/DeviceUtil;->deviceHasAccelerometerSensor:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getShakeTipsView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fl/saas/K0;->j:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/fl/saas/K0;->i:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/fl/saas/K0;->i:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/fl/saas/K0;->i:Ljava/util/List;

    iget-object v2, p0, Lcom/fl/saas/K0;->j:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/fl/saas/K0;->j:Landroid/view/View;

    sget v2, Lcom/fl/saas/R$id;->yd_shake_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/adx/base/widget/ShakeView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fl/saas/adx/base/widget/ShakeView;->setCallback(Z)V

    invoke-virtual {v0}, Lcom/fl/saas/j;->k()I

    move-result v2

    new-instance v3, Lcom/fl/saas/r1;

    invoke-direct {v3, p0, v0}, Lcom/fl/saas/r1;-><init>(Lcom/fl/saas/K0;Lcom/fl/saas/j;)V

    invoke-virtual {v1, v2, v3}, Lcom/fl/saas/adx/base/widget/ShakeView;->setShakeListener(ILcom/fl/saas/adx/base/widget/ShakeView$ShakeListener;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p2}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->isSelfRenderShake()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/fl/saas/j;->v()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const/16 p1, 0x50

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/fl/saas/K0;->j:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAdView()Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    move-result-object p1

    iget-object v2, p0, Lcom/fl/saas/K0;->j:Landroid/view/View;

    invoke-virtual {p1, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fl/saas/j;

    invoke-virtual {p1}, Lcom/fl/saas/j;->r()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/fl/saas/K0;->d:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/fl/saas/K0;->f:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/fl/saas/K0;->g:Lcom/fl/saas/adx/base/widget/NativeSlidingView;

    invoke-static {p1}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/fl/saas/K0;->c(Lcom/fl/saas/j;)Lcom/fl/saas/adx/base/widget/NativeSlidingView;

    move-result-object p1

    iput-object p1, p0, Lcom/fl/saas/K0;->g:Lcom/fl/saas/adx/base/widget/NativeSlidingView;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAdView()Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    move-result-object v1

    iget-object v2, p0, Lcom/fl/saas/K0;->g:Lcom/fl/saas/adx/base/widget/NativeSlidingView;

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-direct {p0}, Lcom/fl/saas/K0;->a()V

    invoke-virtual {p2}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->getCloseView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->getCloseView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    invoke-virtual {p2}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->getCloseView()Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/fl/saas/s1;

    invoke-direct {v1, p0}, Lcom/fl/saas/s1;-><init>(Lcom/fl/saas/K0;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    invoke-direct {p0, v0}, Lcom/fl/saas/K0;->a(Lcom/fl/saas/j;)V

    invoke-virtual {p2}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->getCtaViewList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/fl/saas/K0;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic render(Ljava/lang/Object;Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/fl/saas/j;

    invoke-virtual {p0, p1, p2}, Lcom/fl/saas/K0;->render(Lcom/fl/saas/j;Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;)V

    return-void
.end method

.method public setCacheData(Ljava/lang/String;Lcom/fl/saas/j;)V
    .locals 1

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
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/fl/saas/j;

    .line 12
    .line 13
    iput-object p1, v0, Lcom/fl/saas/j;->r:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/fl/saas/j;

    .line 20
    .line 21
    iget-object v0, p2, Lcom/fl/saas/j;->i:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v0, p1, Lcom/fl/saas/j;->i:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/fl/saas/j;

    .line 30
    .line 31
    iget-object v0, p2, Lcom/fl/saas/j;->h:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v0, p1, Lcom/fl/saas/j;->b0:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/fl/saas/j;

    .line 40
    .line 41
    iget-object v0, p2, Lcom/fl/saas/j;->i:Ljava/lang/String;

    .line 42
    .line 43
    iput-object v0, p1, Lcom/fl/saas/j;->a0:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->getNativeAd()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lcom/fl/saas/j;

    .line 50
    .line 51
    iget-object p2, p2, Lcom/fl/saas/j;->j:Ljava/lang/String;

    .line 52
    .line 53
    iput-object p2, p1, Lcom/fl/saas/j;->c0:Ljava/lang/String;

    .line 54
    .line 55
    :cond_0
    return-void
.end method
