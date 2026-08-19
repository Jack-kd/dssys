.class public Lcom/sigmob/sdk/newInterstitial/i;
.super Lcom/sigmob/sdk/videoAd/b;


# static fields
.field public static final f:Ljava/lang/String; = "i"


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lcom/sigmob/sdk/base/utils/o;

.field private D:Lcom/sigmob/sdk/nativead/b;

.field private final E:Landroid/view/View$OnClickListener;

.field private final g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private final h:Landroid/os/Bundle;

.field private final i:Lcom/sigmob/sdk/base/common/i;

.field private j:Lcom/sigmob/sdk/newInterstitial/g;

.field private k:Landroid/widget/RelativeLayout;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/sigmob/sdk/videoplayer/a;

.field private o:Lcom/sigmob/sdk/newInterstitial/h;

.field private p:Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;

.field private final q:Z

.field private r:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

.field private s:I

.field private t:Ljava/lang/String;

.field private u:J

.field private v:I

.field private final w:Landroid/os/Handler;

.field private x:Z

.field private y:Z

.field private z:Lcom/sigmob/sdk/base/views/q;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Lcom/sigmob/sdk/base/common/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1, p5, p6}, Lcom/sigmob/sdk/videoAd/b;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sigmob/sdk/base/common/k;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i;->l:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i;->m:Ljava/util/List;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p1, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i;->w:Landroid/os/Handler;

    new-instance p1, Lcom/sigmob/sdk/newInterstitial/i$7;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/newInterstitial/i$7;-><init>(Lcom/sigmob/sdk/newInterstitial/i;)V

    iput-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i;->E:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/sigmob/sdk/newInterstitial/i;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p3, p0, Lcom/sigmob/sdk/newInterstitial/i;->h:Landroid/os/Bundle;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdConfig()Lcom/sigmob/sdk/base/common/i;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i;->i:Lcom/sigmob/sdk/base/common/i;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object p3

    new-instance p4, Lcom/sigmob/sdk/newInterstitial/i$1;

    invoke-direct {p4, p0}, Lcom/sigmob/sdk/newInterstitial/i$1;-><init>(Lcom/sigmob/sdk/newInterstitial/i;)V

    invoke-virtual {p1, p3, p2, p4}, Lcom/sigmob/sdk/base/common/i;->a(Landroid/app/Activity;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/views/q$b;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->k()Lcom/sigmob/sdk/base/common/k;

    move-result-object p1

    const/4 p3, 0x7

    invoke-interface {p1, p3}, Lcom/sigmob/sdk/base/common/k;->a(I)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTemplateType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/sigmob/sdk/newInterstitial/i;->q:Z

    return-void
.end method

.method private A()V
    .locals 1

    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->G()V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->n:Lcom/sigmob/sdk/videoplayer/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/a;->j()V

    return-void
.end method

.method private B()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/sigmob/sdk/videoAd/d;

    const-string v2, "play_quarter"

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v1, v2, v3}, Lcom/sigmob/sdk/videoAd/d;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sigmob/sdk/videoAd/d;

    const-string v2, "play_two_quarters"

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v1, v2, v3}, Lcom/sigmob/sdk/videoAd/d;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sigmob/sdk/videoAd/d;

    const-string v2, "play_three_quarters"

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v1, v2, v3}, Lcom/sigmob/sdk/videoAd/d;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sigmob/sdk/newInterstitial/i;->i:Lcom/sigmob/sdk/base/common/i;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/common/i;->a(Ljava/util/List;)V

    return-void
.end method

.method private C()V
    .locals 4

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->k:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->u:J

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->k:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "loading"

    iput-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->t:Ljava/lang/String;

    iget v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->v:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->w:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/newInterstitial/q;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/newInterstitial/q;-><init>(Lcom/sigmob/sdk/newInterstitial/i;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private D()V
    .locals 6

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->k:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->l:Ljava/util/List;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sigmob/sdk/newInterstitial/i;->u:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->m:Ljava/util/List;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/newInterstitial/i;->n:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.2f"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "play"

    iput-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->w:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->k:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private E()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->D:Lcom/sigmob/sdk/nativead/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->D:Lcom/sigmob/sdk/nativead/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/b;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->D:Lcom/sigmob/sdk/nativead/b;

    return-void
.end method

.method private F()V
    .locals 8

    iget-boolean v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->y:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->n:Lcom/sigmob/sdk/videoplayer/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/a;->r()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->n:Lcom/sigmob/sdk/videoplayer/a;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->y:Z

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->o:Lcom/sigmob/sdk/newInterstitial/h;

    if-nez v0, :cond_3

    new-instance v0, Lcom/sigmob/sdk/newInterstitial/h;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/newInterstitial/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->o:Lcom/sigmob/sdk/newInterstitial/h;

    iget-object v1, p0, Lcom/sigmob/sdk/newInterstitial/i;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/newInterstitial/h;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->o:Lcom/sigmob/sdk/newInterstitial/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/newInterstitial/h;->getCTAButton()Landroid/widget/Button;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/a;->b:Lcom/sigmob/sdk/base/a;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/newInterstitial/i;->a(Landroid/widget/Button;Lcom/sigmob/sdk/base/a;)V

    iget-object v2, p0, Lcom/sigmob/sdk/newInterstitial/i;->o:Lcom/sigmob/sdk/newInterstitial/h;

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCardImageUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAppName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeTitle()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCTAText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/sigmob/sdk/newInterstitial/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->o:Lcom/sigmob/sdk/newInterstitial/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/newInterstitial/h;->getAdPrivacyInfo()Lcom/sigmob/sdk/newInterstitial/SigAdPrivacyInfoView;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/x;->getPrivacyLl()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/newInterstitial/i;->a(Lcom/sigmob/sdk/newInterstitial/SigAdPrivacyInfoView;Lcom/sigmob/sdk/base/a;)V

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->o:Lcom/sigmob/sdk/newInterstitial/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/newInterstitial/h;->getCloseButton()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/newInterstitial/l;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/newInterstitial/l;-><init>(Lcom/sigmob/sdk/newInterstitial/i;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->r:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->hideSoundIcon()V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->j:Lcom/sigmob/sdk/newInterstitial/g;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/ViewUtil;->removeFromParent(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/newInterstitial/i;->o:Lcom/sigmob/sdk/newInterstitial/h;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private G()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->C:Lcom/sigmob/sdk/base/utils/o;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/utils/o;->c()V

    return-void
.end method

.method private H()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->C:Lcom/sigmob/sdk/base/utils/o;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/utils/o;->d()V

    return-void
.end method

.method private I()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->C:Lcom/sigmob/sdk/base/utils/o;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/utils/o;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->C:Lcom/sigmob/sdk/base/utils/o;

    return-void
.end method

.method private synthetic J()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->w:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/newInterstitial/i;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/sigmob/sdk/newInterstitial/i;->s:I

    return p1
.end method

.method public static synthetic a(Lcom/sigmob/sdk/newInterstitial/i;Lcom/sigmob/sdk/nativead/b;)Lcom/sigmob/sdk/nativead/b;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i;->D:Lcom/sigmob/sdk/nativead/b;

    return-object p1
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->s()V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTemplateId()I

    move-result v0

    const/16 v1, 0x1771

    const/4 v2, -0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1772

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->a()Lcom/czhj/sdk/common/utils/ImageManager;

    move-result-object p1

    iget-object v1, p0, Lcom/sigmob/sdk/newInterstitial/i;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMainImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/czhj/sdk/common/utils/ImageManager;->load(Ljava/lang/String;)Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->into(Landroid/widget/ImageView;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->y()Lcom/sigmob/sdk/videoplayer/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->n:Lcom/sigmob/sdk/videoplayer/a;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i;->n:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/a;->a()V

    return-void
.end method

.method private a(Landroid/widget/Button;Lcom/sigmob/sdk/base/a;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCTAText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/sigmob/sdk/newInterstitial/i$2;

    invoke-direct {v0, p0, p2}, Lcom/sigmob/sdk/newInterstitial/i$2;-><init>(Lcom/sigmob/sdk/newInterstitial/i;Lcom/sigmob/sdk/base/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdConfig()Lcom/sigmob/sdk/base/common/i;

    move-result-object p1

    new-instance p2, Lcom/sigmob/sdk/newInterstitial/m;

    invoke-direct {p2, p0}, Lcom/sigmob/sdk/newInterstitial/m;-><init>(Lcom/sigmob/sdk/newInterstitial/i;)V

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/common/ac;)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/newInterstitial/SigAdPrivacyInfoView;Lcom/sigmob/sdk/base/a;)V
    .locals 2

    .line 10
    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadPrivacy()Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/newInterstitial/i;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_logo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/sigmob/sdk/base/views/x;->a(Ljava/lang/String;Z)V

    new-instance v0, Lcom/sigmob/sdk/newInterstitial/i$4;

    invoke-direct {v0, p0, p2}, Lcom/sigmob/sdk/newInterstitial/i$4;-><init>(Lcom/sigmob/sdk/newInterstitial/i;Lcom/sigmob/sdk/base/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/newInterstitial/i;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->z()V

    return-void
.end method

.method private synthetic a(ZLcom/sigmob/sdk/base/a;)V
    .locals 1

    .line 12
    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    iget-boolean p1, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->r()V

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/newInterstitial/i;->a()Lcom/sigmob/sdk/base/common/ah;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "click"

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/a;)Z
    .locals 4

    .line 13
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/newInterstitial/i;->z:Lcom/sigmob/sdk/base/views/q;

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sigmob/sdk/base/views/q;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/newInterstitial/i;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {v1, v2, v3}, Lcom/sigmob/sdk/base/views/q;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iput-object v1, p0, Lcom/sigmob/sdk/newInterstitial/i;->z:Lcom/sigmob/sdk/base/views/q;

    new-instance v2, Lcom/sigmob/sdk/newInterstitial/i$5;

    invoke-direct {v2, p0, p1}, Lcom/sigmob/sdk/newInterstitial/i$5;-><init>(Lcom/sigmob/sdk/newInterstitial/i;Lcom/sigmob/sdk/base/a;)V

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/views/q;->a(Lcom/sigmob/sdk/base/views/q$b;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sigmob/sdk/newInterstitial/i;->z:Lcom/sigmob/sdk/base/views/q;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/views/q;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/sigmob/sdk/newInterstitial/i;->A:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sigmob/sdk/newInterstitial/i;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v1

    const-string v2, "appinfo"

    iput-object v2, v1, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/newInterstitial/i;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v1

    sget-object v2, Lcom/sigmob/sdk/base/a;->h:Lcom/sigmob/sdk/base/a;

    if-ne p1, v2, :cond_1

    const-string p1, "ad"

    goto :goto_1

    :cond_1
    const-string p1, "endcard"

    :goto_1
    iput-object p1, v1, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    iput-boolean v0, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/newInterstitial/i;->a()Lcom/sigmob/sdk/base/common/ah;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "click"

    invoke-interface {p1, v1, v0}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    :cond_2
    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i;->z:Lcom/sigmob/sdk/base/views/q;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/q;->show()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sigmob/sdk/newInterstitial/i;->A:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_3
    return v0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFourElements fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return v0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/newInterstitial/i;Landroid/app/Dialog;)Z
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/j;->a(Landroid/app/Dialog;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/newInterstitial/i;Lcom/sigmob/sdk/base/a;)Z
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/newInterstitial/i;->a(Lcom/sigmob/sdk/base/a;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/newInterstitial/i;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/sigmob/sdk/newInterstitial/i;->A:Z

    return p1
.end method

.method public static synthetic b(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/newInterstitial/i;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object p0
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->u()V

    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/newInterstitial/i;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/sigmob/sdk/newInterstitial/i;->x:Z

    return p1
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->s()V

    return-void
.end method

.method public static synthetic c(Lcom/sigmob/sdk/newInterstitial/i;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->r()V

    return-void
.end method

.method private synthetic d(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/sigmob/sdk/newInterstitial/i;->x:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/sigmob/sdk/newInterstitial/i;->x:Z

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->r:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->setSoundStatus(Z)V

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i;->n:Lcom/sigmob/sdk/videoplayer/a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->x:Z

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/videoplayer/a;->setMute(Z)V

    return-void
.end method

.method public static synthetic d(Lcom/sigmob/sdk/newInterstitial/i;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->A()V

    return-void
.end method

.method public static synthetic e(Lcom/sigmob/sdk/newInterstitial/i;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->v()V

    return-void
.end method

.method public static synthetic f(Lcom/sigmob/sdk/newInterstitial/i;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->x()V

    return-void
.end method

.method public static synthetic g(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/videoplayer/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/newInterstitial/i;->n:Lcom/sigmob/sdk/videoplayer/a;

    return-object p0
.end method

.method public static synthetic h(Lcom/sigmob/sdk/newInterstitial/i;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sigmob/sdk/newInterstitial/i;->s:I

    return p0
.end method

.method public static synthetic i(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/common/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/newInterstitial/i;->i:Lcom/sigmob/sdk/base/common/i;

    return-object p0
.end method

.method public static synthetic j(Lcom/sigmob/sdk/newInterstitial/i;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sigmob/sdk/newInterstitial/i;->x:Z

    return p0
.end method

.method public static synthetic k(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;
    .locals 0

    iget-object p0, p0, Lcom/sigmob/sdk/newInterstitial/i;->r:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

    return-object p0
.end method

.method public static synthetic l(Lcom/sigmob/sdk/newInterstitial/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->C()V

    return-void
.end method

.method public static synthetic m(Lcom/sigmob/sdk/newInterstitial/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->D()V

    return-void
.end method

.method public static synthetic n(Lcom/sigmob/sdk/newInterstitial/i;)Landroid/app/Activity;
    .locals 0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/nativead/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/newInterstitial/i;->D:Lcom/sigmob/sdk/nativead/b;

    return-object p0
.end method

.method public static synthetic p(Lcom/sigmob/sdk/newInterstitial/i;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->E()V

    return-void
.end method

.method public static synthetic p(Lcom/sigmob/sdk/newInterstitial/i;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/newInterstitial/i;->c(Landroid/view/View;)V

    return-void
.end method

.method private q()V
    .locals 5

    .line 2
    new-instance v0, Lcom/sigmob/sdk/newInterstitial/g;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/newInterstitial/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->j:Lcom/sigmob/sdk/newInterstitial/g;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/Dips;->screenHeightAsIntDips(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/czhj/sdk/common/utils/Dips;->screenWidthAsIntDips(Landroid/content/Context;)I

    move-result v1

    iget-boolean v2, p0, Lcom/sigmob/sdk/newInterstitial/i;->q:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    const-string v1, "sig_new_interstitial_full_layout"

    :goto_0
    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_0
    int-to-float v0, v0

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v2

    const v3, 0x440a4000    # 553.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    int-to-float v0, v1

    mul-float/2addr v0, v2

    const v1, 0x438f8000    # 287.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    const-string v1, "sig_new_interstitial_layout"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    const-string v1, "sig_new_interstitial_small_layout"

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/sigmob/sdk/newInterstitial/i;->j:Lcom/sigmob/sdk/newInterstitial/g;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/newInterstitial/g;->a(I)V

    const-string v0, "action.interstitial.vopen"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->j:Lcom/sigmob/sdk/newInterstitial/g;

    invoke-virtual {v0}, Lcom/sigmob/sdk/newInterstitial/g;->getMainAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/newInterstitial/i;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getNewInterstitialSetting()Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/sdk/newInterstitial/i;->p:Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/sigmob/sdk/newInterstitial/i;->j:Lcom/sigmob/sdk/newInterstitial/g;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/newInterstitial/i;->a(Landroid/view/ViewGroup;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->w()V

    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->t()V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->j:Lcom/sigmob/sdk/newInterstitial/g;

    invoke-virtual {v0}, Lcom/sigmob/sdk/newInterstitial/g;->getCTAButton()Landroid/widget/Button;

    move-result-object v0

    sget-object v2, Lcom/sigmob/sdk/base/a;->h:Lcom/sigmob/sdk/base/a;

    invoke-direct {p0, v0, v2}, Lcom/sigmob/sdk/newInterstitial/i;->a(Landroid/widget/Button;Lcom/sigmob/sdk/base/a;)V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->p:Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;

    if-nez v0, :cond_3

    :goto_2
    return-void

    :cond_3
    new-instance v0, Lcom/sigmob/sdk/newInterstitial/k;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/newInterstitial/k;-><init>(Lcom/sigmob/sdk/newInterstitial/i;)V

    iget-object v2, p0, Lcom/sigmob/sdk/newInterstitial/i;->p:Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;->charge_time:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic q(Lcom/sigmob/sdk/newInterstitial/i;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/newInterstitial/i;->b(Landroid/view/View;)V

    return-void
.end method

.method private r()V
    .locals 2

    .line 2
    sget-object v0, Lcom/sigmob/sdk/newInterstitial/i;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/newInterstitial/i;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/utils/d;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/utils/d$a;

    const-string v0, "action.interstitial.click"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic r(Lcom/sigmob/sdk/newInterstitial/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->J()V

    return-void
.end method

.method private s()V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->k()Lcom/sigmob/sdk/base/common/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/k;->a()V

    return-void
.end method

.method public static synthetic s(Lcom/sigmob/sdk/newInterstitial/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->v()V

    return-void
.end method

.method private t()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->j:Lcom/sigmob/sdk/newInterstitial/g;

    invoke-virtual {v0}, Lcom/sigmob/sdk/newInterstitial/g;->getHeaderView()Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->r:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

    iget-object v1, p0, Lcom/sigmob/sdk/newInterstitial/i;->n:Lcom/sigmob/sdk/videoplayer/a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/sigmob/sdk/newInterstitial/i;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v4}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->showFeedback(ZLandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->r:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

    new-instance v1, Lcom/sigmob/sdk/newInterstitial/i$3;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/newInterstitial/i$3;-><init>(Lcom/sigmob/sdk/newInterstitial/i;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->setAdHeaderViewStateListener(Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$a;)V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->r:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

    new-instance v1, Lcom/sigmob/sdk/newInterstitial/n;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/newInterstitial/n;-><init>(Lcom/sigmob/sdk/newInterstitial/i;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->setSoundClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->r:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

    new-instance v1, Lcom/sigmob/sdk/newInterstitial/o;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/newInterstitial/o;-><init>(Lcom/sigmob/sdk/newInterstitial/i;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->setCloseClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->r:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

    new-instance v1, Lcom/sigmob/sdk/newInterstitial/p;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/newInterstitial/p;-><init>(Lcom/sigmob/sdk/newInterstitial/i;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->setSkipClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->p:Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;->skip_close_ad:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->hasEndCard()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->r:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

    iget-object v1, p0, Lcom/sigmob/sdk/newInterstitial/i;->p:Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;->show_skip_seconds:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->startAdTimer(IZ)V

    return-void
.end method

.method public static synthetic t(Lcom/sigmob/sdk/newInterstitial/i;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/newInterstitial/i;->d(Landroid/view/View;)V

    return-void
.end method

.method private u()V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/sigmob/sdk/newInterstitial/i;->a()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "skip"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    :cond_0
    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->F()V

    return-void
.end method

.method public static synthetic u(Lcom/sigmob/sdk/newInterstitial/i;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/newInterstitial/i;->a(Landroid/view/View;)V

    return-void
.end method

.method private v()V
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->B:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->B:Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/newInterstitial/i;->a()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v1, "charge"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic v(Lcom/sigmob/sdk/newInterstitial/i;ZLcom/sigmob/sdk/base/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/newInterstitial/i;->a(ZLcom/sigmob/sdk/base/a;)V

    return-void
.end method

.method private w()V
    .locals 4

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->j:Lcom/sigmob/sdk/newInterstitial/g;

    invoke-virtual {v0}, Lcom/sigmob/sdk/newInterstitial/g;->getAdInfView()Lcom/sigmob/sdk/newInterstitial/SigAdInfoView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/newInterstitial/i;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/newInterstitial/i;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAppName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/newInterstitial/i;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sigmob/sdk/newInterstitial/SigAdInfoView;->setAppInfoView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/newInterstitial/SigAdInfoView;->getAdPrivacyInfo()Lcom/sigmob/sdk/newInterstitial/SigAdPrivacyInfoView;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/sigmob/sdk/base/views/x;->getPrivacyAdText()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/newInterstitial/SigAdInfoView;->getAdPrivacyInfo()Lcom/sigmob/sdk/newInterstitial/SigAdPrivacyInfoView;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/a;->h:Lcom/sigmob/sdk/base/a;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/newInterstitial/i;->a(Lcom/sigmob/sdk/newInterstitial/SigAdPrivacyInfoView;Lcom/sigmob/sdk/base/a;)V

    return-void
.end method

.method private x()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->z:Lcom/sigmob/sdk/base/views/q;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->z:Lcom/sigmob/sdk/base/views/q;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/q;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->z:Lcom/sigmob/sdk/base/views/q;

    return-void
.end method

.method private y()Lcom/sigmob/sdk/videoplayer/a;
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->n:Lcom/sigmob/sdk/videoplayer/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/videoplayer/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->n:Lcom/sigmob/sdk/videoplayer/a;

    new-instance v1, Lcom/sigmob/sdk/newInterstitial/i$6;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/newInterstitial/i$6;-><init>(Lcom/sigmob/sdk/newInterstitial/i;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoplayer/a;->setVideoPlayerStatusListener(Lcom/sigmob/sdk/videoplayer/k;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->B()V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->n:Lcom/sigmob/sdk/videoplayer/a;

    iget-object v1, p0, Lcom/sigmob/sdk/newInterstitial/i;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getProxyVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoplayer/a;->setUp(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->n:Lcom/sigmob/sdk/videoplayer/a;

    return-object v0
.end method

.method private z()V
    .locals 1

    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->H()V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->n:Lcom/sigmob/sdk/videoplayer/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/a;->d()V

    return-void
.end method


# virtual methods
.method public a()Lcom/sigmob/sdk/base/common/ah;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSessionManager()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/sigmob/sdk/newInterstitial/c;

    invoke-direct {v0}, Lcom/sigmob/sdk/newInterstitial/c;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/newInterstitial/i;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/ah;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_1
    return-object v0
.end method

.method public a(ILcom/sigmob/sdk/base/utils/o$a;)V
    .locals 5

    .line 4
    new-instance v0, Lcom/sigmob/sdk/base/utils/o;

    int-to-long v1, p1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/base/utils/o;-><init>(JJ)V

    iput-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->C:Lcom/sigmob/sdk/base/utils/o;

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i;->C:Lcom/sigmob/sdk/base/utils/o;

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/utils/o;->a(Lcom/sigmob/sdk/base/utils/o$a;)V

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i;->C:Lcom/sigmob/sdk/base/utils/o;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/utils/o;->a()V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    .line 5
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    .line 6
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 3
    invoke-virtual {p0}, Lcom/sigmob/sdk/newInterstitial/i;->a()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/newInterstitial/i;->n:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {v0, p1, v1}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/sigmob/sdk/videoAd/b;->e()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->b()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/sigmob/sdk/newInterstitial/i;->h:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sigmob/sdk/videoAd/b;->b(Landroid/content/Context;ILandroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->q()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/newInterstitial/i;->a()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "start"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    const-string v0, "action.interstitial.show"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->A:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->A()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->A:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->z()V

    return-void
.end method

.method public h()V
    .locals 1

    .line 2
    const-string v0, "action.interstitial.dismiss"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->I()V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->n:Lcom/sigmob/sdk/videoplayer/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/a;->r()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->n:Lcom/sigmob/sdk/videoplayer/a;

    :cond_0
    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->x()V

    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->E()V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->destroy()V

    invoke-super {p0}, Lcom/sigmob/sdk/base/common/j;->h()V

    return-void
.end method

.method public i()V
    .locals 0

    .line 2
    return-void
.end method

.method public o()V
    .locals 0

    .line 2
    return-void
.end method

.method public p()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->D()V

    invoke-direct {p0}, Lcom/sigmob/sdk/newInterstitial/i;->F()V

    return-void
.end method
