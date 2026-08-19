.class public Lcom/sigmob/sdk/base/views/z;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/views/z$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/sigmob/sdk/base/common/v;

.field private b:Landroid/view/View;

.field private c:Landroid/view/Window;

.field private d:Lcom/sigmob/sdk/base/views/z$a;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Lcom/sigmob/sdk/videoAd/a;

.field private g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private h:Lcom/sigmob/sdk/mraid/h;

.field private i:Landroid/content/Context;

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/videoAd/a;)V
    .locals 1

    invoke-static {}, Lcom/sigmob/sdk/base/k;->e()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/z;->c:Landroid/view/Window;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/base/views/z;->j:I

    iput v0, p0, Lcom/sigmob/sdk/base/views/z;->k:I

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/z;->l:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/z;->i:Landroid/content/Context;

    iput-object p2, p0, Lcom/sigmob/sdk/base/views/z;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p3, p0, Lcom/sigmob/sdk/base/views/z;->f:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/z;->b()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/z;->b:Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/views/z;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/sigmob/sdk/base/views/z;->k:I

    return p1
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/views/z;)Lcom/sigmob/sdk/base/views/z$a;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/sigmob/sdk/base/views/z;->d:Lcom/sigmob/sdk/base/views/z$a;

    return-object p0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/views/z;Lcom/sigmob/sdk/mraid/v;Lcom/sigmob/sdk/base/common/v;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/base/views/z;->a(Lcom/sigmob/sdk/mraid/v;Lcom/sigmob/sdk/base/common/v;)V

    return-void
.end method

.method private synthetic a(Lcom/sigmob/sdk/mraid/v;Lcom/sigmob/sdk/base/common/v;)V
    .locals 0

    .line 5
    if-nez p2, :cond_0

    new-instance p1, Lcom/sigmob/sdk/base/common/v;

    invoke-direct {p1}, Lcom/sigmob/sdk/base/common/v;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/z;->a:Lcom/sigmob/sdk/base/common/v;

    iget-object p2, p0, Lcom/sigmob/sdk/base/views/z;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/common/v;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void

    :cond_0
    iput-object p2, p0, Lcom/sigmob/sdk/base/views/z;->a:Lcom/sigmob/sdk/base/common/v;

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/views/z;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/sigmob/sdk/base/views/z;->l:Z

    return p1
.end method

.method public static synthetic b(Lcom/sigmob/sdk/base/views/z;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/sigmob/sdk/base/views/z;->j:I

    return p1
.end method

.method public static synthetic b(Lcom/sigmob/sdk/base/views/z;)Lcom/sigmob/sdk/mraid/h;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/sigmob/sdk/base/views/z;->h:Lcom/sigmob/sdk/mraid/h;

    return-object p0
.end method

.method public static synthetic c(Lcom/sigmob/sdk/base/views/z;)Lcom/sigmob/sdk/videoAd/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/views/z;->f:Lcom/sigmob/sdk/videoAd/a;

    return-object p0
.end method

.method public static synthetic d(Lcom/sigmob/sdk/base/views/z;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/views/z;->i:Landroid/content/Context;

    return-object p0
.end method

.method private d()V
    .locals 6

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/z;->c:Landroid/view/Window;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-static {}, Lcom/sigmob/sdk/base/k;->g()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/z;->c:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/z;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/z;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/z;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/z;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, p0, Lcom/sigmob/sdk/base/views/z;->k:I

    add-int/lit8 v4, v3, -0x1

    const/4 v5, -0x1

    if-gt v4, v1, :cond_2

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_2
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    iget v3, p0, Lcom/sigmob/sdk/base/views/z;->j:I

    add-int/lit8 v4, v3, -0x1

    if-gt v4, v2, :cond_3

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    :cond_3
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RecommendDialog windowDeploy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "===="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/z;->c:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static synthetic e(Lcom/sigmob/sdk/base/views/z;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sigmob/sdk/base/views/z;->b:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic f(Lcom/sigmob/sdk/base/views/z;)I
    .locals 0

    iget p0, p0, Lcom/sigmob/sdk/base/views/z;->k:I

    return p0
.end method

.method public static synthetic g(Lcom/sigmob/sdk/base/views/z;)I
    .locals 0

    iget p0, p0, Lcom/sigmob/sdk/base/views/z;->j:I

    return p0
.end method

.method public static synthetic h(Lcom/sigmob/sdk/base/views/z;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .locals 0

    iget-object p0, p0, Lcom/sigmob/sdk/base/views/z;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/base/views/z$a;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/sigmob/sdk/base/views/z;->d:Lcom/sigmob/sdk/base/views/z$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/z;->a:Lcom/sigmob/sdk/base/common/v;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/base/common/v;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 7
    iget v0, p0, Lcom/sigmob/sdk/base/views/z;->k:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sigmob/sdk/base/views/z;->j:I

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/z;->l:Z

    :cond_1
    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/z;->l:Z

    return v0
.end method

.method public b()Landroid/view/View;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/z;->h:Lcom/sigmob/sdk/mraid/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sigmob/sdk/mraid/h;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/z;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/z;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v3, Lcom/sigmob/sdk/base/models/PlacementType;->INTERSTITIAL:Lcom/sigmob/sdk/base/models/PlacementType;

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/mraid/h;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/PlacementType;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/z;->h:Lcom/sigmob/sdk/mraid/h;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/z;->h:Lcom/sigmob/sdk/mraid/h;

    new-instance v1, Lcom/sigmob/sdk/base/views/z$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/views/z$1;-><init>(Lcom/sigmob/sdk/base/views/z;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/sdk/mraid/h$f;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/z;->h:Lcom/sigmob/sdk/mraid/h;

    new-instance v1, Lcom/sigmob/sdk/base/views/z$2;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/views/z$2;-><init>(Lcom/sigmob/sdk/base/views/z;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/sdk/mraid/h$a;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/z;->g:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCloseCardHtmlData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/z;->h:Lcom/sigmob/sdk/mraid/h;

    new-instance v2, Lcom/sigmob/sdk/base/views/U;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/base/views/U;-><init>(Lcom/sigmob/sdk/base/views/z;)V

    invoke-virtual {v1, v0, v2}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/String;Lcom/sigmob/sdk/mraid/h$b;)V

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/z;->h:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/h;->q()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/z;->h:Lcom/sigmob/sdk/mraid/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/z;->d:Lcom/sigmob/sdk/base/views/z$a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/h;->m()V

    iput-object v1, p0, Lcom/sigmob/sdk/base/views/z;->h:Lcom/sigmob/sdk/mraid/h;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/z;->e:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/z;->e:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/z;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecommendDialog onCreate:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sigmob/sdk/base/views/z;->k:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sigmob/sdk/base/views/z;->j:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/z;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/z;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/z;->d()V

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "RecommendDialog  onShow"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    const-string p1, "closecard_show"

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/views/z;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/z;->h:Lcom/sigmob/sdk/mraid/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/mraid/h;->a(I)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/z;->c:Landroid/view/Window;

    invoke-static {v0}, Lcom/sigmob/sdk/videoplayer/c;->a(Landroid/view/Window;)V

    return-void
.end method
