.class public abstract Lcom/ubix/ssp/ad/c/c/c;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field private d:D

.field protected e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Lcom/ubix/ssp/ad/g/k/a;

.field protected i:Landroid/animation/AnimatorSet;

.field protected j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 8

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/ubix/ssp/ad/c/c/c;->a:I

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/c/c/c;->d:D

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/c/c/c;->e:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/c/c/c;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/c/c/c;->g:Z

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/ubix/ssp/ad/c/c/c;->i:Landroid/animation/AnimatorSet;

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/c/c/c;->j:Z

    const-string v1, "AD_WIDTH"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "AD_HEIGHT"

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "IS_DOWNLOAD"

    invoke-virtual {p2, v3, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "VIDEO_RENDER_TYPE"

    invoke-virtual {p2, v4, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result p1

    float-to-double v4, p1

    iput-wide v4, p0, Lcom/ubix/ssp/ad/c/c/c;->d:D

    int-to-double v6, v1

    mul-double/2addr v6, v4

    double-to-int p1, v6

    iput p1, p0, Lcom/ubix/ssp/ad/c/c/c;->b:I

    int-to-double v1, v2

    mul-double/2addr v1, v4

    double-to-int p1, v1

    iput p1, p0, Lcom/ubix/ssp/ad/c/c/c;->c:I

    iget p1, p0, Lcom/ubix/ssp/ad/c/c/c;->a:I

    int-to-double v1, p1

    mul-double/2addr v1, v4

    double-to-int p1, v1

    iput p1, p0, Lcom/ubix/ssp/ad/c/c/c;->a:I

    const-string p1, "CLICK_MAP"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lcom/ubix/ssp/ad/c/c/c;->e:Ljava/util/HashMap;

    const-string p1, "IS_UNNAMED"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/c/c/c;->j:Z

    const-string p1, "TEMPLATE_ID"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, v3, v0}, Lcom/ubix/ssp/ad/c/c/c;->a(IZI)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/ubix/ssp/ad/c/c/c;
    .locals 2

    .line 1
    const-string v0, "TEMPLATE_ID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xfa3

    if-eq v0, v1, :cond_2

    const/16 v1, 0xfa4

    if-eq v0, v1, :cond_1

    const v1, 0x182b9

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/ubix/ssp/ad/c/c/d;

    invoke-direct {v0, p0, p1}, Lcom/ubix/ssp/ad/c/c/d;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/ubix/ssp/ad/c/c/b;

    invoke-direct {v0, p0, p1}, Lcom/ubix/ssp/ad/c/c/b;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/ubix/ssp/ad/c/c/a;

    invoke-direct {v0, p0, p1}, Lcom/ubix/ssp/ad/c/c/a;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a(IZI)V
    .locals 17

    .line 2
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v9, 0x182b9

    const/4 v11, -0x1

    const/4 v12, 0x0

    if-eq v1, v9, :cond_4

    const/16 v9, 0xfa4

    const/4 v14, 0x4

    if-ne v1, v9, :cond_2

    new-instance v1, Lcom/ubix/ssp/ad/e/b0/g;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v15, 0x1

    if-nez p3, :cond_1

    sget-object v16, Lcom/ubix/ssp/ad/d/b;->a:Lcom/ubix/ssp/open/UBiXAdSetting;

    invoke-virtual/range {v16 .. v16}, Lcom/ubix/ssp/open/UBiXAdSetting;->isUseTextureView()Z

    move-result v16

    if-eqz v16, :cond_0

    const/4 v13, 0x2

    goto :goto_0

    :cond_0
    move v13, v15

    goto :goto_0

    :cond_1
    move/from16 v13, p3

    :goto_0
    invoke-direct {v1, v9, v13}, Lcom/ubix/ssp/ad/e/b0/g;-><init>(Landroid/content/Context;I)V

    const v9, 0x186a6

    invoke-virtual {v1, v9}, Landroid/view/View;->setId(I)V

    invoke-virtual {v1, v15}, Lcom/ubix/ssp/ad/e/b0/e;->setMute(Z)V

    invoke-virtual {v1, v14}, Lcom/ubix/ssp/ad/e/b0/e;->setVideoImageDisplayType(I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v9, 0x186aa

    invoke-virtual {v2, v9}, Landroid/view/View;->setId(I)V

    const v9, 0x186a2

    invoke-virtual {v7, v9}, Landroid/view/View;->setId(I)V

    const v9, 0x186a7

    invoke-virtual {v5, v9}, Landroid/view/View;->setId(I)V

    const v9, 0x186a8

    invoke-virtual {v4, v9}, Landroid/view/View;->setId(I)V

    const v9, 0x186a9

    invoke-virtual {v3, v9}, Landroid/view/View;->setId(I)V

    const v9, 0x186a4

    invoke-virtual {v6, v9}, Landroid/view/View;->setId(I)V

    const/high16 v9, 0x40e00000    # 7.0f

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v13, 0x66000000

    const/high16 v15, 0x40800000    # 4.0f

    const/4 v10, 0x0

    invoke-virtual {v3, v15, v10, v9, v13}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    invoke-virtual {v3, v12, v12, v14, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v9, 0x41200000    # 10.0f

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v9, 0xa

    invoke-virtual {v6, v14, v9, v14, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v9, 0x11

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v10, -0x1000000

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_4
    const v1, 0x7a185

    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    const v1, 0x7a188

    invoke-virtual {v6, v1}, Landroid/view/View;->setId(I)V

    const v1, 0x7a186

    invoke-virtual {v7, v1}, Landroid/view/View;->setId(I)V

    const v1, 0x7a187

    invoke-virtual {v8, v1}, Landroid/view/View;->setId(I)V

    const/16 v1, 0x10

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v9, 0x11

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v6}, Landroid/widget/TextView;->setSingleLine()V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v9, 0x41700000    # 15.0f

    invoke-static {v12, v9, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v12, v9, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v9, 0x41500000    # 13.0f

    invoke-static {v12, v9, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V

    invoke-virtual {v8}, Landroid/widget/TextView;->setSingleLine()V

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, -0xbf6101

    const/4 v9, 0x6

    invoke-static {v3, v4, v9}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v3, v0, Lcom/ubix/ssp/ad/c/c/c;->a:I

    int-to-float v3, v3

    invoke-virtual {v6, v3}, Landroid/view/View;->setZ(F)V

    iget v3, v0, Lcom/ubix/ssp/ad/c/c/c;->a:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setZ(F)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v0, Lcom/ubix/ssp/ad/c/c/c;->b:I

    iget v9, v0, Lcom/ubix/ssp/ad/c/c/c;->c:I

    mul-int/lit8 v10, v9, 0x2

    sub-int/2addr v4, v10

    iget v10, v0, Lcom/ubix/ssp/ad/c/c/c;->a:I

    mul-int/lit8 v11, v10, 0x2

    sub-int/2addr v4, v11

    const/16 v16, 0x2

    div-int/lit8 v9, v9, 0x2

    mul-int/lit8 v10, v10, 0x3

    sub-int/2addr v9, v10

    invoke-direct {v3, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v0, Lcom/ubix/ssp/ad/c/c/c;->b:I

    iget v9, v0, Lcom/ubix/ssp/ad/c/c/c;->c:I

    mul-int/lit8 v10, v9, 0x2

    sub-int/2addr v4, v10

    iget v10, v0, Lcom/ubix/ssp/ad/c/c/c;->a:I

    mul-int/lit8 v11, v10, 0x2

    sub-int/2addr v4, v11

    const/16 v16, 0x2

    div-int/lit8 v9, v9, 0x2

    mul-int/lit8 v10, v10, 0x3

    sub-int/2addr v9, v10

    invoke-direct {v3, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v0, Lcom/ubix/ssp/ad/c/c/c;->c:I

    iget v9, v0, Lcom/ubix/ssp/ad/c/c/c;->a:I

    mul-int/2addr v9, v1

    sub-int v1, v4, v9

    invoke-direct {v3, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    if-eqz p2, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v9, 0x2

    invoke-static {v1, v9}, Lcom/ubix/ssp/ad/e/f;->a(Landroid/content/Context;I)Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-virtual {v0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/os/Bundle;)Z
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x186a7

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/c/c/c;->h:Lcom/ubix/ssp/ad/g/k/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ubix/ssp/ad/c/c/c;->e:Ljava/util/HashMap;

    invoke-interface {v0, v2, p1, v1}, Lcom/ubix/ssp/ad/g/k/b;->b(ILandroid/view/View;Ljava/util/HashMap;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/c/c/c;->h:Lcom/ubix/ssp/ad/g/k/a;

    if-eqz p1, :cond_1

    invoke-interface {p1, v2}, Lcom/ubix/ssp/ad/g/k/b;->e(I)V

    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    iget p1, p0, Lcom/ubix/ssp/ad/c/c/c;->b:I

    if-gtz p1, :cond_0

    iget-wide p1, p0, Lcom/ubix/ssp/ad/c/c/c;->d:D

    const-wide/high16 v0, 0x4074000000000000L    # 320.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Lcom/ubix/ssp/ad/c/c/c;->b:I

    :cond_0
    iget p1, p0, Lcom/ubix/ssp/ad/c/c/c;->c:I

    if-gtz p1, :cond_1

    iget p1, p0, Lcom/ubix/ssp/ad/c/c/c;->b:I

    int-to-double p1, p1

    const-wide v0, 0x401999999999999aL    # 6.4

    div-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Lcom/ubix/ssp/ad/c/c/c;->c:I

    :cond_1
    iget p1, p0, Lcom/ubix/ssp/ad/c/c/c;->b:I

    iget p2, p0, Lcom/ubix/ssp/ad/c/c/c;->c:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setInnerListener(Lcom/ubix/ssp/ad/g/k/b;)V
    .locals 0

    check-cast p1, Lcom/ubix/ssp/ad/g/k/a;

    iput-object p1, p0, Lcom/ubix/ssp/ad/c/c/c;->h:Lcom/ubix/ssp/ad/g/k/a;

    return-void
.end method
