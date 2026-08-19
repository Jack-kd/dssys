.class public Lcom/sigmob/sdk/mraid/s;
.super Lcom/sigmob/sdk/videoAd/b;

# interfaces
.implements Lcom/sigmob/sdk/base/common/ac;


# static fields
.field public static final f:Ljava/lang/String; = "s"


# instance fields
.field protected g:Lcom/sigmob/sdk/base/common/v;

.field private final h:Landroid/os/Bundle;

.field private i:I

.field private final j:Lcom/sigmob/sdk/videoAd/a;

.field private k:I

.field private l:Z

.field private final m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private n:Lcom/sigmob/sdk/mraid/h;

.field private o:Lcom/sigmob/sdk/mraid/x;

.field private p:Lcom/sigmob/sdk/base/views/ar;

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Lcom/sigmob/sdk/base/views/q;

.field private v:Z

.field private w:Lcom/sigmob/sdk/nativead/b;

.field private x:Lcom/sigmob/sdk/base/views/w;

.field private y:Lorg/json/JSONObject;

.field private final z:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Lcom/sigmob/sdk/base/common/k;)V
    .locals 0

    invoke-direct {p0, p1, p5, p6}, Lcom/sigmob/sdk/videoAd/b;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sigmob/sdk/base/common/k;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/s;->s:Z

    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/s;->t:Z

    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/s;->v:Z

    new-instance p4, Lcom/sigmob/sdk/mraid/s$5;

    invoke-direct {p4, p0}, Lcom/sigmob/sdk/mraid/s$5;-><init>(Lcom/sigmob/sdk/mraid/s;)V

    iput-object p4, p0, Lcom/sigmob/sdk/mraid/s;->z:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/s;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p3, p0, Lcom/sigmob/sdk/mraid/s;->h:Landroid/os/Bundle;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdConfig()Lcom/sigmob/sdk/base/common/i;

    move-result-object p3

    check-cast p3, Lcom/sigmob/sdk/videoAd/a;

    iput-object p3, p0, Lcom/sigmob/sdk/mraid/s;->j:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object p4

    new-instance p5, Lcom/sigmob/sdk/mraid/s$1;

    invoke-direct {p5, p0}, Lcom/sigmob/sdk/mraid/s$1;-><init>(Lcom/sigmob/sdk/mraid/s;)V

    invoke-virtual {p3, p4, p2, p5}, Lcom/sigmob/sdk/base/common/i;->a(Landroid/app/Activity;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/views/q$b;)V

    invoke-virtual {p3, p0}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/common/ac;)V

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object p2

    invoke-virtual {p2}, Lcom/czhj/sdk/common/ClientMetadata;->getInsetBottom()I

    move-result p2

    iput p2, p0, Lcom/sigmob/sdk/mraid/s;->k:I

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid/s;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/sigmob/sdk/mraid/s;->q:I

    return p1
.end method

.method private synthetic a(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s;->n:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/mraid/h;->a(Landroid/view/WindowInsets;)V

    return-object p2
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/sigmob/sdk/mraid/s;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object p0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid/s;Lcom/sigmob/sdk/base/views/q;)Lcom/sigmob/sdk/base/views/q;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/sigmob/sdk/mraid/s;->u:Lcom/sigmob/sdk/base/views/q;

    return-object p1
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid/s;Lcom/sigmob/sdk/nativead/b;)Lcom/sigmob/sdk/nativead/b;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/sigmob/sdk/mraid/s;->w:Lcom/sigmob/sdk/nativead/b;

    return-object p1
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid/s;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/sigmob/sdk/mraid/s;->y:Lorg/json/JSONObject;

    return-object p1
.end method

.method private a(Landroid/content/Context;I)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->p:Lcom/sigmob/sdk/base/views/ar;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sigmob/sdk/base/views/ar;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/base/views/ar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/s;->p:Lcom/sigmob/sdk/base/views/ar;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/s;->p:Lcom/sigmob/sdk/base/views/ar;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->generateViewId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    const/high16 p2, 0x41200000    # 10.0f

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {v1, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    invoke-static {v1, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    invoke-direct {v0, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p1, 0xb

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    mul-int/lit8 p1, p2, 0x2

    invoke-virtual {v0, p2, p1, p2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/s;->p:Lcom/sigmob/sdk/base/views/ar;

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/sigmob/sdk/mraid/s$4;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/mraid/s$4;-><init>(Lcom/sigmob/sdk/mraid/s;)V

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/s;->p:Lcom/sigmob/sdk/base/views/ar;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s;->p:Lcom/sigmob/sdk/base/views/ar;

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/s;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/views/ar;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s;->j:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/a;->f()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/s;->p:Lcom/sigmob/sdk/base/views/ar;

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/base/views/ar;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;)V
    .locals 10

    .line 11
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/s;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v4, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->isDeeplink:Ljava/lang/String;

    iget-object v5, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->clickUrl:Ljava/lang/String;

    iget-object v6, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->clickCoordinate:Ljava/lang/String;

    iget v0, p0, Lcom/sigmob/sdk/mraid/s;->q:I

    int-to-long v7, v0

    iget-object v9, p0, Lcom/sigmob/sdk/mraid/s;->y:Lorg/json/JSONObject;

    const-string v2, "click"

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lcom/sigmob/sdk/base/common/ad;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V

    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/mraid/s;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid/s;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/s;->c(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Lcom/sigmob/sdk/mraid/v;Lcom/sigmob/sdk/base/common/v;)V
    .locals 0

    .line 13
    if-nez p2, :cond_0

    new-instance p1, Lcom/sigmob/sdk/base/common/v;

    invoke-direct {p1}, Lcom/sigmob/sdk/base/common/v;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/s;->g:Lcom/sigmob/sdk/base/common/v;

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/s;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/common/v;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void

    :cond_0
    iput-object p2, p0, Lcom/sigmob/sdk/mraid/s;->g:Lcom/sigmob/sdk/base/common/v;

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 7

    .line 15
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->g:Lcom/sigmob/sdk/base/common/v;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p3}, Lcom/sigmob/sdk/mraid/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "show_skip"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    :try_start_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/s;->g:Lcom/sigmob/sdk/base/common/v;

    invoke-virtual {p2, v2, v2}, Lcom/sigmob/sdk/base/common/v;->a(ZI)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/sigmob/sdk/mraid/s;->g:Lcom/sigmob/sdk/base/common/v;

    invoke-virtual {p2, p1, v2}, Lcom/sigmob/sdk/base/common/v;->a(Ljava/lang/String;I)V

    return-void

    :cond_2
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p3

    float-to-double v3, p3

    const-wide v5, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v0, v3, v5

    if-lez v0, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p3, p2

    goto :goto_1

    :cond_3
    const/high16 p3, -0x40800000    # -1.0f

    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/s;->g:Lcom/sigmob/sdk/base/common/v;

    float-to-int v0, p3

    invoke-virtual {p2, v2, v0}, Lcom/sigmob/sdk/base/common/v;->a(ZI)V

    :cond_4
    iget-object p2, p0, Lcom/sigmob/sdk/mraid/s;->g:Lcom/sigmob/sdk/base/common/v;

    float-to-int p3, p3

    invoke-virtual {p2, p1, p3}, Lcom/sigmob/sdk/base/common/v;->a(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid/s;Landroid/app/Dialog;)Z
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/j;->a(Landroid/app/Dialog;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid/s;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/s;->s:Z

    return p1
.end method

.method public static synthetic b(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/mraid/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/mraid/s;->n:Lcom/sigmob/sdk/mraid/h;

    return-object p0
.end method

.method private b(Landroid/content/Context;I)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->x:Lcom/sigmob/sdk/base/views/w;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sigmob/sdk/base/views/w;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/base/views/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/s;->x:Lcom/sigmob/sdk/base/views/w;

    const-string v1, "\u53cd\u9988"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/w;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->x:Lcom/sigmob/sdk/base/views/w;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/s;->z:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->x:Lcom/sigmob/sdk/base/views/w;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const/high16 v0, 0x40400000    # 3.0f

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x42340000    # 45.0f

    invoke-static {v2, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s;->p:Lcom/sigmob/sdk/base/views/ar;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s;->p:Lcom/sigmob/sdk/base/views/ar;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v3, 0x6

    invoke-virtual {v1, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    neg-int p1, v0

    invoke-virtual {v1, v2, p1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->x:Lcom/sigmob/sdk/base/views/w;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s;->x:Lcom/sigmob/sdk/base/views/w;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/mraid/s;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic b(Lcom/sigmob/sdk/mraid/v;Lcom/sigmob/sdk/base/common/v;)V
    .locals 0

    .line 4
    if-nez p2, :cond_0

    new-instance p1, Lcom/sigmob/sdk/base/common/v;

    invoke-direct {p1}, Lcom/sigmob/sdk/base/common/v;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/s;->g:Lcom/sigmob/sdk/base/common/v;

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/s;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/common/v;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void

    :cond_0
    iput-object p2, p0, Lcom/sigmob/sdk/mraid/s;->g:Lcom/sigmob/sdk/base/common/v;

    return-void
.end method

.method private synthetic b(Z)V
    .locals 0

    .line 6
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/s;->q()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/s;->r()V

    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/mraid/s;Landroid/app/Dialog;)Z
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/j;->a(Landroid/app/Dialog;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/sigmob/sdk/mraid/s;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/s;->l:Z

    return p1
.end method

.method public static synthetic c(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/videoAd/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/mraid/s;->j:Lcom/sigmob/sdk/videoAd/a;

    return-object p0
.end method

.method public static synthetic c(Lcom/sigmob/sdk/mraid/s;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->n:Lcom/sigmob/sdk/mraid/h;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/h;->g()Lcom/sigmob/sdk/mraid/v;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->n:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/h;->e()Lcom/sigmob/sdk/mraid/c;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/mraid/c;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic c(Lcom/sigmob/sdk/mraid/s;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/s;->r:Z

    return p1
.end method

.method public static synthetic d(Lcom/sigmob/sdk/mraid/s;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sigmob/sdk/mraid/s;->q:I

    return p0
.end method

.method public static synthetic d(Lcom/sigmob/sdk/mraid/s;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/sigmob/sdk/mraid/s;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/s;->v:Z

    return p1
.end method

.method public static synthetic e(Lcom/sigmob/sdk/mraid/s;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/common/j;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e(Lcom/sigmob/sdk/mraid/s;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/base/common/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/common/j;->d:Lcom/sigmob/sdk/base/common/k;

    return-object p0
.end method

.method public static synthetic f(Lcom/sigmob/sdk/mraid/s;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g(Lcom/sigmob/sdk/mraid/s;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/common/j;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic g(Lcom/sigmob/sdk/mraid/s;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic h(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/base/common/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/common/j;->d:Lcom/sigmob/sdk/base/common/k;

    return-object p0
.end method

.method public static synthetic h(Lcom/sigmob/sdk/mraid/s;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic i(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/base/common/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/common/j;->d:Lcom/sigmob/sdk/base/common/k;

    return-object p0
.end method

.method public static synthetic i(Lcom/sigmob/sdk/mraid/s;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic j(Lcom/sigmob/sdk/mraid/s;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/sigmob/sdk/mraid/s;->r:Z

    return p0
.end method

.method public static synthetic k(Lcom/sigmob/sdk/mraid/s;)Landroid/app/Activity;
    .locals 0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/nativead/b;
    .locals 0

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/s;->w:Lcom/sigmob/sdk/nativead/b;

    return-object p0
.end method

.method public static synthetic m(Lcom/sigmob/sdk/mraid/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/s;->s()V

    return-void
.end method

.method public static synthetic n(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/base/views/q;
    .locals 0

    iget-object p0, p0, Lcom/sigmob/sdk/mraid/s;->u:Lcom/sigmob/sdk/base/views/q;

    return-object p0
.end method

.method public static synthetic o(Lcom/sigmob/sdk/mraid/s;)Landroid/app/Activity;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method private p()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->u:Lcom/sigmob/sdk/base/views/q;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->u:Lcom/sigmob/sdk/base/views/q;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/q;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/s;->u:Lcom/sigmob/sdk/base/views/q;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid/s;->v:Z

    return-void
.end method

.method public static synthetic p(Lcom/sigmob/sdk/mraid/s;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/s;->p()V

    return-void
.end method

.method public static synthetic p(Lcom/sigmob/sdk/mraid/s;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/s;->b(Z)V

    return-void
.end method

.method private q()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->p:Lcom/sigmob/sdk/base/views/ar;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->x:Lcom/sigmob/sdk/base/views/w;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static synthetic q(Lcom/sigmob/sdk/mraid/s;Lcom/sigmob/sdk/mraid/v;Lcom/sigmob/sdk/base/common/v;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/mraid/s;->b(Lcom/sigmob/sdk/mraid/v;Lcom/sigmob/sdk/base/common/v;)V

    return-void
.end method

.method public static synthetic q(Lcom/sigmob/sdk/mraid/s;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/sigmob/sdk/mraid/s;->v:Z

    return p0
.end method

.method private r()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->p:Lcom/sigmob/sdk/base/views/ar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/mraid/s;->a(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->p:Lcom/sigmob/sdk/base/views/ar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/mraid/s;->b(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic r(Lcom/sigmob/sdk/mraid/s;Lcom/sigmob/sdk/mraid/v;Lcom/sigmob/sdk/base/common/v;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/mraid/s;->a(Lcom/sigmob/sdk/mraid/v;Lcom/sigmob/sdk/base/common/v;)V

    return-void
.end method

.method public static synthetic r(Lcom/sigmob/sdk/mraid/s;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/sigmob/sdk/mraid/s;->l:Z

    return p0
.end method

.method public static synthetic s(Lcom/sigmob/sdk/mraid/s;)Landroid/content/Context;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lcom/sigmob/sdk/mraid/s;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/mraid/s;->a(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private s()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->w:Lcom/sigmob/sdk/nativead/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->w:Lcom/sigmob/sdk/nativead/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/b;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/s;->w:Lcom/sigmob/sdk/nativead/b;

    return-void
.end method

.method public static synthetic t(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/base/common/k;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->k()Lcom/sigmob/sdk/base/common/k;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lcom/sigmob/sdk/mraid/s;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/mraid/s;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic u(Lcom/sigmob/sdk/mraid/s;)Landroid/app/Activity;
    .locals 0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/z;->a(Ljava/lang/String;)Lcom/sigmob/sdk/mraid/z$a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/z$a;->d()Lcom/sigmob/sdk/mraid/h;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/z$a;->d()Lcom/sigmob/sdk/mraid/h;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/sigmob/sdk/mraid/s;->n:Lcom/sigmob/sdk/mraid/h;

    goto :goto_2

    :cond_1
    new-instance v1, Lcom/sigmob/sdk/mraid/h;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/sigmob/sdk/mraid/s;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v4, Lcom/sigmob/sdk/base/models/PlacementType;->INTERSTITIAL:Lcom/sigmob/sdk/base/models/PlacementType;

    invoke-direct {v1, v2, v3, v4}, Lcom/sigmob/sdk/mraid/h;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/PlacementType;)V

    goto :goto_1

    :goto_2
    new-instance v1, Lcom/sigmob/sdk/mraid/I;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid/I;-><init>(Lcom/sigmob/sdk/mraid/s;)V

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/base/common/j;->a(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/s;->n:Lcom/sigmob/sdk/mraid/h;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/j;->e:Lcom/sigmob/sdk/base/common/g;

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/sdk/base/common/g;)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/s;->n:Lcom/sigmob/sdk/mraid/h;

    new-instance v2, Lcom/sigmob/sdk/mraid/s$2;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/mraid/s$2;-><init>(Lcom/sigmob/sdk/mraid/s;)V

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/sdk/mraid/h$f;)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/s;->n:Lcom/sigmob/sdk/mraid/h;

    new-instance v2, Lcom/sigmob/sdk/mraid/s$3;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/mraid/s$3;-><init>(Lcom/sigmob/sdk/mraid/s;)V

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/sdk/mraid/h$a;)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/s;->n:Lcom/sigmob/sdk/mraid/h;

    new-instance v2, Lcom/sigmob/sdk/mraid/J;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/mraid/J;-><init>(Lcom/sigmob/sdk/mraid/s;)V

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/sdk/mraid/h$e;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/z$a;->c()Lcom/sigmob/sdk/base/common/v;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/s;->g:Lcom/sigmob/sdk/base/common/v;

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getHtmlData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->n:Lcom/sigmob/sdk/mraid/h;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/s;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getHtmlData()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/mraid/K;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/mraid/K;-><init>(Lcom/sigmob/sdk/mraid/s;)V

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/String;Lcom/sigmob/sdk/mraid/h$b;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getHtmlUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->n:Lcom/sigmob/sdk/mraid/h;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/s;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getHtmlUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/mraid/L;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/mraid/L;-><init>(Lcom/sigmob/sdk/mraid/s;)V

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/mraid/h;->b(Ljava/lang/String;Lcom/sigmob/sdk/mraid/h$b;)V

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->n:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/h;->q()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->n:Lcom/sigmob/sdk/mraid/h;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/h;->a(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    .line 10
    return-void
.end method

.method public a(Lcom/sigmob/sdk/mraid/x;)V
    .locals 1

    .line 14
    iput-object p1, p0, Lcom/sigmob/sdk/mraid/s;->o:Lcom/sigmob/sdk/mraid/x;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->n:Lcom/sigmob/sdk/mraid/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/sdk/mraid/x;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->n:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/h;->f()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/s;->n:Lcom/sigmob/sdk/mraid/h;

    new-instance v2, Lcom/sigmob/sdk/mraid/M;

    invoke-direct {v2, p0, p1, v0}, Lcom/sigmob/sdk/mraid/M;-><init>(Lcom/sigmob/sdk/mraid/s;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/mraid/h;->a(Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public e()V
    .locals 4

    .line 2
    invoke-super {p0}, Lcom/sigmob/sdk/videoAd/b;->e()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/sigmob/sdk/mraid/s;->i:I

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/s;->h:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sigmob/sdk/videoAd/b;->b(Landroid/content/Context;ILandroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->g:Lcom/sigmob/sdk/base/common/v;

    if-eqz v0, :cond_0

    const-string v1, "show"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/v;->a(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid/s;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->n:Lcom/sigmob/sdk/mraid/h;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/h;->a(Landroid/app/Activity;)V

    :cond_1
    const-string v0, "action.interstitial.vopen"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/sigmob/sdk/mraid/s$6;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/mraid/s$6;-><init>(Lcom/sigmob/sdk/mraid/s;)V

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid/s;->a(Lcom/sigmob/sdk/mraid/x;)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/s;->s:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid/s;->t:Z

    const-string v0, "action.interstitial.dismiss"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->n:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/h;->b()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->n:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/h;->c()V

    return-void
.end method

.method public h()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->g:Lcom/sigmob/sdk/base/common/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/v;->a()V

    iput-object v1, p0, Lcom/sigmob/sdk/mraid/s;->g:Lcom/sigmob/sdk/base/common/v;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->n:Lcom/sigmob/sdk/mraid/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/h;->m()V

    iput-object v1, p0, Lcom/sigmob/sdk/mraid/s;->n:Lcom/sigmob/sdk/mraid/h;

    :cond_1
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/s;->s()V

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/s;->p()V

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/s;->s:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/s;->t:Z

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid/s;->t:Z

    const-string v0, "action.interstitial.dismiss"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->destroy()V

    :cond_4
    invoke-super {p0}, Lcom/sigmob/sdk/base/common/j;->h()V

    return-void
.end method

.method public i()V
    .locals 0

    .line 2
    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public o()V
    .locals 0

    .line 2
    return-void
.end method

.method public onAdClick(ZLcom/sigmob/sdk/base/a;)V
    .locals 2

    sget-object v0, Lcom/sigmob/sdk/mraid/s;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/s;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/utils/d;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/utils/d$a;

    const-string v0, "action.interstitial.click"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    sget-object p1, Lcom/sigmob/sdk/mraid/s$7;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    sget-object p1, Lcom/sigmob/sdk/base/a;->b:Lcom/sigmob/sdk/base/a;

    const-string p2, "click"

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/mraid/s;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/sigmob/sdk/base/a;->c:Lcom/sigmob/sdk/base/a;

    const-string p2, "full_video_click"

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sigmob/sdk/base/a;->a:Lcom/sigmob/sdk/base/a;

    const-string p2, "companion_click"

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/s;->y:Lorg/json/JSONObject;

    return-void
.end method
