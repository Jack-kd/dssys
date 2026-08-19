.class public Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:I

.field private e:Ljava/lang/Runnable;

.field private f:Lcom/sigmob/sdk/base/views/w;

.field private g:Z

.field private h:Landroid/view/View;

.field private i:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->d:I

    return p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 2
    const-string v0, "sig_new_interstitial_header_layout"

    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "sig_ad_close"

    invoke-static {p1, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->a:Landroid/widget/ImageView;

    const-string v1, "sig_ad_rl_root"

    invoke-static {p1, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->a:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/sigmob/sdk/base/views/s;->d:Lcom/sigmob/sdk/base/views/s;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/views/s;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    const-string v1, "sig_ad_sound"

    invoke-static {p1, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->c:Landroid/widget/ImageView;

    const-string v1, "sig_ad_timer"

    invoke-static {p1, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->b:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    new-instance p1, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$1;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$1;-><init>(Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;)V

    iput-object p1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;)I
    .locals 2

    iget v0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->d:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->d:I

    return v0
.end method

.method public static synthetic c(Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic d(Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->e:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic e(Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->g:Z

    return p0
.end method

.method public static synthetic f(Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;)Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$a;
    .locals 0

    iget-object p0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->i:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$a;

    return-object p0
.end method

.method public static synthetic g(Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->a:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public hideSoundIcon()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setAdHeaderViewStateListener(Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->i:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$a;

    return-void
.end method

.method public setCloseClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSkipClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSoundClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSoundStatus(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "sig_image_video_mute"

    goto :goto_0

    :cond_0
    const-string p1, "sig_image_video_unmute"

    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public showCloseView()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showFeedback(ZLandroid/view/View$OnClickListener;)V
    .locals 4

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->f:Lcom/sigmob/sdk/base/views/w;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/base/views/w;

    invoke-direct {v1, v0}, Lcom/sigmob/sdk/base/views/w;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->f:Lcom/sigmob/sdk/base/views/w;

    const-string v2, "\u53cd\u9988"

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/views/w;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->f:Lcom/sigmob/sdk/base/views/w;

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->f:Lcom/sigmob/sdk/base/views/w;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->generateViewId()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setId(I)V

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-static {p2, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x42340000    # 45.0f

    invoke-static {v2, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->f:Lcom/sigmob/sdk/base/views/w;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, p2, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->h:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v0, v0, p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_0
    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->h:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 p2, 0x4

    invoke-virtual {v1, p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->h:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->f:Lcom/sigmob/sdk/base/views/w;

    invoke-virtual {p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public showSoundIcon()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public startAdTimer(IZ)V
    .locals 3

    iput-boolean p2, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->g:Z

    const/4 v0, 0x1

    if-lez p1, :cond_0

    iget-object p2, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->b:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->d:I

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->b:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->e:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->showCloseView()V

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->i:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$a;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$a;->a()V

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->b:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->i:Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$a;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView$a;->b()V

    :cond_3
    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->b:Landroid/widget/TextView;

    const-string p2, "   \u8df3\u8fc7   "

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
