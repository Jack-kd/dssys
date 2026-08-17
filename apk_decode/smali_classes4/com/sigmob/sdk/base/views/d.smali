.class public Lcom/sigmob/sdk/base/views/d;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/views/d$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:I

.field private l:Landroid/widget/TextView;

.field private final m:Lcom/sigmob/sdk/videoAd/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sigmob/sdk/videoAd/c;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sigmob/sdk/base/views/d;->m:Lcom/sigmob/sdk/videoAd/c;

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p2, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/sigmob/sdk/base/views/d;->a:I

    const/high16 p2, 0x41800000    # 16.0f

    invoke-static {p2, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/d;->b:I

    const/high16 v1, 0x43630000    # 227.0f

    invoke-static {v1, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/sigmob/sdk/base/views/d;->c:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-double v1, v1

    const-wide/high16 v3, 0x4022000000000000L    # 9.0

    div-double/2addr v1, v3

    double-to-int p2, v1

    iput p2, p0, Lcom/sigmob/sdk/base/views/d;->f:I

    const/high16 p2, 0x41c80000    # 25.0f

    invoke-static {p2, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/sigmob/sdk/base/views/d;->d:I

    invoke-static {p2, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/sigmob/sdk/base/views/d;->h:I

    const/high16 p2, 0x42c80000    # 100.0f

    invoke-static {p2, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/sigmob/sdk/base/views/d;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sigmob/sdk/base/views/d;->g:I

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/d;->e(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/d;->m:Lcom/sigmob/sdk/videoAd/c;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, -0x1000000

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x2

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-object v0
.end method

.method private b(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/d;->l:Landroid/widget/TextView;

    const/high16 p1, -0x1000000

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/d;->l:Landroid/widget/TextView;

    const/4 v0, 0x2

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/d;->l:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/d;->l:Landroid/widget/TextView;

    return-object p1
.end method

.method private c(Landroid/content/Context;)Landroid/widget/Button;
    .locals 4

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/d;->m:Lcom/sigmob/sdk/videoAd/c;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "#ff999999"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/sigmob/sdk/base/views/d;->b:I

    const/4 v3, 0x2

    div-int/2addr v2, v3

    invoke-virtual {v1, p1, v2, p1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p1, 0x41600000    # 14.0f

    invoke-virtual {v0, v3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private d(Landroid/content/Context;)Landroid/widget/Button;
    .locals 7

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/d;->m:Lcom/sigmob/sdk/videoAd/c;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/c;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/sigmob/sdk/base/views/d;->g:I

    const/4 v2, -0x1

    invoke-direct {p1, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/sigmob/sdk/base/views/d;->a:I

    mul-int/lit8 v3, v1, 0x5

    mul-int/lit8 v4, v1, 0x2

    mul-int/lit8 v1, v1, 0x5

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 p1, 0x41800000    # 16.0f

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    move p1, v1

    sget v1, Lcom/sigmob/sdk/base/views/r;->a:I

    iget v2, p0, Lcom/sigmob/sdk/base/views/d;->g:I

    div-int/2addr v2, p1

    const-string p1, "#66000000"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/sigmob/sdk/base/views/ab;->a(Landroid/view/View;IIIIII)V

    return-object v0
.end method

.method private e(Landroid/content/Context;)V
    .locals 10

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/sigmob/sdk/base/views/d;->d:I

    const/4 v8, -0x1

    invoke-direct {v2, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v3, p0, Lcom/sigmob/sdk/base/views/d;->b:I

    iget v4, p0, Lcom/sigmob/sdk/base/views/d;->a:I

    mul-int/lit8 v4, v4, 0x2

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v4, v3, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/d;->a(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/sigmob/sdk/base/views/d;->h:I

    invoke-direct {v2, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v3, p0, Lcom/sigmob/sdk/base/views/d;->b:I

    iget v4, p0, Lcom/sigmob/sdk/base/views/d;->a:I

    invoke-virtual {v2, v3, v4, v3, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/d;->b(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lcom/sigmob/sdk/base/views/d;->a:I

    const-string v4, "#66000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/sigmob/sdk/base/views/ab;->a(Landroid/view/View;IIIIII)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/sigmob/sdk/base/views/d;->f:I

    iget v4, p0, Lcom/sigmob/sdk/base/views/d;->c:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v3, p0, Lcom/sigmob/sdk/base/views/d;->b:I

    invoke-virtual {v2, v3, v9, v3, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/d;->d(Landroid/content/Context;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/sigmob/sdk/base/views/d;->j:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/d;->c(Landroid/content/Context;)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/d;->i:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 p1, 0x11

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setDialogListener(Lcom/sigmob/sdk/base/views/d$a;)V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/d;->i:Landroid/widget/Button;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sigmob/sdk/base/views/d$1;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/base/views/d$1;-><init>(Lcom/sigmob/sdk/base/views/d;Lcom/sigmob/sdk/base/views/d$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/d;->j:Landroid/widget/Button;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/sigmob/sdk/base/views/d$2;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/base/views/d$2;-><init>(Lcom/sigmob/sdk/base/views/d;Lcom/sigmob/sdk/base/views/d$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public setDuration(I)V
    .locals 3

    iput p1, p0, Lcom/sigmob/sdk/base/views/d;->k:I

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/d;->l:Landroid/widget/TextView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/d;->m:Lcom/sigmob/sdk/videoAd/c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/c;->b()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sigmob/sdk/base/views/d;->k:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_SEC_"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
