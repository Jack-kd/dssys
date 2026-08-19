.class public Lcom/ubix/ssp/ad/e/z/d;
.super Lcom/ubix/ssp/ad/e/z/h;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:[Landroid/widget/LinearLayout;

.field private m:[Landroid/widget/TextView;

.field private n:[Landroid/widget/TextView;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/TextView;

.field private q:I

.field private r:I

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/z/h;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x6

    new-array v1, v0, [Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/z/d;->l:[Landroid/widget/LinearLayout;

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/z/d;->m:[Landroid/widget/TextView;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/z/d;->n:[Landroid/widget/TextView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/z/d;->s:Z

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/r;->h(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/z/d;->j:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/r;->c(Landroid/content/Context;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/ubix/ssp/ad/e/z/d;->k:I

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/d;->j:I

    div-int/lit8 v1, v0, 0x14

    iput v1, p0, Lcom/ubix/ssp/ad/e/z/d;->h:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    div-int/lit8 p1, p1, 0x14

    iput p1, p0, Lcom/ubix/ssp/ad/e/z/d;->i:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "topMargin="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/d;->i:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget p1, p0, Lcom/ubix/ssp/ad/e/z/d;->j:I

    int-to-double v0, p1

    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    div-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/ubix/ssp/ad/e/z/d;->q:I

    int-to-double v0, p1

    const-wide v2, 0x400e666666666666L    # 3.8

    div-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/ubix/ssp/ad/e/z/d;->r:I

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/z/d;->d()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/z/d;->setData(Landroid/os/Bundle;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(I)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v1, p0, Lcom/ubix/ssp/ad/e/z/d;->j:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1

    :goto_0
    return p1

    :cond_1
    return v1
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/z/d;)Z
    .locals 0

    .line 4
    iget-boolean p0, p0, Lcom/ubix/ssp/ad/e/z/d;->s:Z

    return p0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/z/d;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/z/d;->s:Z

    return p1
.end method

.method private d()V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "child.getId()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ubix/ssp/ad/e/z/d;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    const/4 v4, 0x6

    const/high16 v5, -0x1000000

    const/16 v6, 0x10

    const v7, -0xe0e0f

    const/4 v8, 0x5

    const/high16 v9, 0x41400000    # 12.0f

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/z/d;->l:[Landroid/widget/LinearLayout;

    new-instance v10, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    aput-object v10, v4, v3

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/z/d;->m:[Landroid/widget/TextView;

    new-instance v10, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v10, v4, v3

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/z/d;->m:[Landroid/widget/TextView;

    aget-object v4, v4, v3

    const v10, 0x249f1

    add-int/2addr v10, v3

    invoke-virtual {v4, v10}, Landroid/view/View;->setId(I)V

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/z/d;->l:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v3

    iget-object v10, p0, Lcom/ubix/ssp/ad/e/z/d;->m:[Landroid/widget/TextView;

    aget-object v10, v10, v3

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/z/d;->l:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v3

    const v10, 0x1adb1

    add-int/2addr v10, v3

    invoke-virtual {v4, v10}, Landroid/view/View;->setId(I)V

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/z/d;->l:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v3

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/z/d;->m:[Landroid/widget/TextView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/z/d;->l:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v3

    iget v5, p0, Lcom/ubix/ssp/ad/e/z/d;->i:I

    div-int/2addr v5, v2

    invoke-virtual {v4, v1, v5, v1, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/z/d;->m:[Landroid/widget/TextView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/z/d;->l:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v3

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/z/d;->l:[Landroid/widget/LinearLayout;

    aget-object v4, v4, v3

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-ge v3, v8, :cond_0

    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v5, 0x1d4c1

    add-int/2addr v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x4

    const/16 v3, 0x14

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/d;->n:[Landroid/widget/TextView;

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v4, v0, v1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/d;->n:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    const v4, 0x1fbd1

    add-int/2addr v4, v1

    invoke-virtual {v0, v4}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/d;->n:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/d;->n:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/d;->n:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    const/16 v4, 0xa

    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/d;->n:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/d;->n:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/d;->n:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, v2, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/z/d;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/z/d;->p:Landroid/widget/TextView;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/d;->o:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/z/d;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/d;->o:Landroid/widget/LinearLayout;

    const v2, 0x222e1

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/d;->p:Landroid/widget/TextView;

    const v2, 0x222e2

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/d;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/d;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8, v3, v8, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/d;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/d;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/d;->o:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Dialog;Lcom/ubix/ssp/ad/e/z/h$c;Lcom/ubix/ssp/ad/e/z/h$b;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/z/h;->f:Lcom/ubix/ssp/ad/e/z/h$b;

    if-eqz p2, :cond_0

    invoke-interface {p2, p0}, Lcom/ubix/ssp/ad/e/z/h$c;->c(Lcom/ubix/ssp/ad/e/z/h;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/a0/l;Lcom/ubix/ssp/ad/e/z/h$c;Lcom/ubix/ssp/ad/e/z/h$b;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->c:Lcom/ubix/ssp/ad/e/a0/l;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/z/h;->f:Lcom/ubix/ssp/ad/e/z/h$b;

    if-eqz p2, :cond_0

    invoke-interface {p2, p0}, Lcom/ubix/ssp/ad/e/z/h$c;->c(Lcom/ubix/ssp/ad/e/z/h;)V

    :cond_0
    return-void
.end method

.method public getContentHeight()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/d;->k:I

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/d;->j:I

    return v0
.end method

.method public getPopupType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x222e1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "601209"

    goto/16 :goto_1

    :pswitch_1
    const-string p1, "601208"

    goto/16 :goto_1

    :pswitch_2
    const-string p1, "601207"

    goto/16 :goto_1

    :pswitch_3
    const-string p1, "601206"

    goto/16 :goto_1

    :pswitch_4
    const-string p1, "601205"

    goto/16 :goto_1

    :pswitch_5
    const-string p1, "601204"

    goto/16 :goto_1

    :pswitch_6
    const-string p1, "601203"

    goto/16 :goto_1

    :pswitch_7
    const-string p1, "601202"

    goto :goto_1

    :pswitch_8
    const-string p1, "601201"

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->c:Lcom/ubix/ssp/ad/e/a0/l;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/l;->a()V

    :cond_2
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1030134

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/ubix/ssp/ad/e/z/c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/ubix/ssp/ad/e/z/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {v3, v2, v4}, Landroid/view/Window;->setLayout(II)V

    const v2, 0x106000d

    invoke-virtual {v3, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v3, v2}, Landroid/view/Window;->setDimAmount(F)V

    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Landroid/view/Window;->addFlags(I)V

    const/16 v2, 0x50

    invoke-virtual {v3, v2}, Landroid/view/Window;->setGravity(I)V

    new-instance v2, Lcom/ubix/ssp/ad/e/z/d$a;

    invoke-direct {v2, p0}, Lcom/ubix/ssp/ad/e/z/d$a;-><init>(Lcom/ubix/ssp/ad/e/z/d;)V

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v2, Lcom/ubix/ssp/ad/e/z/d$b;

    invoke-direct {v2, p0}, Lcom/ubix/ssp/ad/e/z/d$b;-><init>(Lcom/ubix/ssp/ad/e/z/d;)V

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/ubix/ssp/ad/e/z/c;->a(Landroid/app/Dialog;Lcom/ubix/ssp/ad/e/z/h$c;Lcom/ubix/ssp/ad/e/z/h$b;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_0
    const-string p1, ""

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "dislikeId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    if-eqz p1, :cond_3

    invoke-interface {p1, p0, v0}, Lcom/ubix/ssp/ad/e/z/h$c;->a(Lcom/ubix/ssp/ad/e/z/h;Ljava/util/HashMap;)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1adb1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1fbd1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLayout(ZIIII)V
    .locals 8

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    move-object p1, p0

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    if-ge p3, p4, :cond_2

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getId()I

    move-result p5

    const v0, 0x222e1

    if-eq p5, v0, :cond_1

    packed-switch p5, :pswitch_data_0

    const/4 v0, 0x2

    packed-switch p5, :pswitch_data_1

    const v1, 0x1fbd1

    const v2, 0x1adb6

    packed-switch p5, :pswitch_data_2

    goto/16 :goto_6

    :pswitch_0
    iget p5, p1, Lcom/ubix/ssp/ad/e/z/d;->j:I

    const v3, 0x1fbd3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p1, Lcom/ubix/ssp/ad/e/z/d;->j:I

    div-int/lit8 v5, v5, 0x14

    add-int/2addr v4, v5

    sub-int/2addr p5, v4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-ge p5, v4, :cond_0

    iget p5, p1, Lcom/ubix/ssp/ad/e/z/d;->j:I

    div-int/lit8 p5, p5, 0x14

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v2, p1, Lcom/ubix/ssp/ad/e/z/d;->i:I

    div-int/lit8 v2, v2, 0x5

    add-int/2addr v0, v2

    iget v2, p1, Lcom/ubix/ssp/ad/e/z/d;->j:I

    div-int/lit8 v2, v2, 0x14

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v3, p1, Lcom/ubix/ssp/ad/e/z/d;->i:I

    div-int/lit8 v3, v3, 0x5

    add-int/2addr v1, v3

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p4, p5, v0, v2, v1}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getRight()I

    move-result p5

    iget v1, p1, Lcom/ubix/ssp/ad/e/z/d;->i:I

    div-int/2addr v1, v0

    add-int/2addr p5, v1

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p1, Lcom/ubix/ssp/ad/e/z/d;->i:I

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v3, v0

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p4, p5, v1, v3, v0}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_5

    :pswitch_1
    const p5, 0x1fbd2

    invoke-virtual {p0, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v3, p1, Lcom/ubix/ssp/ad/e/z/d;->i:I

    div-int/2addr v3, v0

    add-int/2addr v1, v3

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getRight()I

    move-result p5

    iget v4, p1, Lcom/ubix/ssp/ad/e/z/d;->i:I

    div-int/2addr v4, v0

    add-int/2addr p5, v4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p5, v0

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p4, v1, v3, p5, v0}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_5

    :pswitch_2
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getRight()I

    move-result p5

    iget v3, p1, Lcom/ubix/ssp/ad/e/z/d;->i:I

    div-int/2addr v3, v0

    add-int/2addr p5, v3

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v4, p1, Lcom/ubix/ssp/ad/e/z/d;->i:I

    div-int/2addr v4, v0

    add-int/2addr v1, v4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p4, p5, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_5

    :pswitch_3
    iget p5, p1, Lcom/ubix/ssp/ad/e/z/d;->j:I

    div-int/lit8 p5, p5, 0x14

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p1, Lcom/ubix/ssp/ad/e/z/d;->j:I

    div-int/lit8 v1, v1, 0x14

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p4, p5, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_5

    :pswitch_4
    iget p5, p1, Lcom/ubix/ssp/ad/e/z/d;->j:I

    div-int/lit8 p5, p5, 0x14

    const v1, 0x1adb5

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p1, Lcom/ubix/ssp/ad/e/z/d;->j:I

    div-int/lit8 v4, v3, 0x14

    sub-int/2addr v3, v4

    goto :goto_2

    :pswitch_5
    iget p5, p1, Lcom/ubix/ssp/ad/e/z/d;->j:I

    div-int/lit8 p5, p5, 0x14

    const v1, 0x1adb4

    goto :goto_1

    :pswitch_6
    iget p5, p1, Lcom/ubix/ssp/ad/e/z/d;->j:I

    div-int/lit8 p5, p5, 0x14

    const v1, 0x1adb3

    goto :goto_1

    :pswitch_7
    iget p5, p1, Lcom/ubix/ssp/ad/e/z/d;->j:I

    div-int/lit8 p5, p5, 0x14

    const v1, 0x1adb2

    goto :goto_1

    :pswitch_8
    iget p5, p1, Lcom/ubix/ssp/ad/e/z/d;->j:I

    div-int/lit8 p5, p5, 0x14

    const v1, 0x1adb1

    goto :goto_1

    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p4, p5, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    iput v0, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_6

    :pswitch_9
    iget p5, p1, Lcom/ubix/ssp/ad/e/z/d;->j:I

    div-int/lit8 p5, p5, 0x14

    const v0, 0x1d4c5

    :goto_3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, p1, Lcom/ubix/ssp/ad/e/z/d;->j:I

    div-int/lit8 v3, v2, 0x14

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v3, p1, Lcom/ubix/ssp/ad/e/z/d;->i:I

    div-int/lit8 v3, v3, 0xa

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p4, p5, v1, v2, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    :pswitch_a
    iget p5, p1, Lcom/ubix/ssp/ad/e/z/d;->j:I

    div-int/lit8 p5, p5, 0x14

    const v0, 0x1d4c4

    goto :goto_3

    :pswitch_b
    iget p5, p1, Lcom/ubix/ssp/ad/e/z/d;->j:I

    div-int/lit8 p5, p5, 0x14

    const v0, 0x1d4c3

    goto :goto_3

    :pswitch_c
    iget p5, p1, Lcom/ubix/ssp/ad/e/z/d;->j:I

    div-int/lit8 p5, p5, 0x14

    const v0, 0x1d4c2

    goto :goto_3

    :pswitch_d
    iget p5, p1, Lcom/ubix/ssp/ad/e/z/d;->j:I

    div-int/lit8 p5, p5, 0x14

    const v0, 0x1d4c1

    goto :goto_3

    :pswitch_e
    iget p5, p1, Lcom/ubix/ssp/ad/e/z/d;->j:I

    div-int/lit8 v0, p5, 0x14

    sub-int/2addr p5, v0

    iget v1, p1, Lcom/ubix/ssp/ad/e/z/d;->i:I

    div-int/lit8 v1, v1, 0xa

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p4, v0, p2, p5, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    :cond_1
    iget p5, p1, Lcom/ubix/ssp/ad/e/z/d;->j:I

    div-int/lit8 p5, p5, 0x14

    const v0, 0x1fbd4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, p1, Lcom/ubix/ssp/ad/e/z/d;->i:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    div-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p1, Lcom/ubix/ssp/ad/e/z/d;->j:I

    div-int/lit8 v3, v2, 0x14

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v3, p1, Lcom/ubix/ssp/ad/e/z/d;->i:I

    int-to-double v6, v3

    div-double/2addr v6, v4

    double-to-int v3, v6

    goto :goto_4

    :goto_5
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    iput p4, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_6
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1adb1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1d4c1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1fbd1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMeasure(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/e/z/d;->k:I

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/z/d;->a(I)I

    move-result v1

    iput v1, p0, Lcom/ubix/ssp/ad/e/z/d;->j:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1fbd1

    if-eq v2, v3, :cond_1

    const v3, 0x222e1

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/ubix/ssp/ad/e/z/d;->k:I

    iget v3, p0, Lcom/ubix/ssp/ad/e/z/d;->j:I

    div-int/lit8 v3, v3, 0x14

    add-int/2addr v2, v3

    iput v2, p0, Lcom/ubix/ssp/ad/e/z/d;->k:I

    :cond_1
    iget v2, p0, Lcom/ubix/ssp/ad/e/z/d;->k:I

    iget v3, p0, Lcom/ubix/ssp/ad/e/z/d;->i:I

    div-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    iput v2, p0, Lcom/ubix/ssp/ad/e/z/d;->k:I

    :pswitch_0
    invoke-virtual {p0, v1, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p0, Lcom/ubix/ssp/ad/e/z/d;->k:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/ubix/ssp/ad/e/z/d;->k:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "child.getId()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";h="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ubix/ssp/ad/e/z/d;->k:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget v1, p0, Lcom/ubix/ssp/ad/e/z/d;->k:I

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ubix/ssp/ad/e/z/d;->k:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/ubix/ssp/ad/e/z/d;->k:I

    add-int/lit8 p1, p1, 0x14

    iput p1, p0, Lcom/ubix/ssp/ad/e/z/d;->k:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " setMeasuredDimension(width, height)="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/ubix/ssp/ad/e/z/d;->k:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget p1, p0, Lcom/ubix/ssp/ad/e/z/d;->j:I

    iget p2, p0, Lcom/ubix/ssp/ad/e/z/d;->k:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1adb1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1d4c1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 1

    const p1, 0x249f1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "\u5185\u5bb9\u65e0\u6cd5\u6b63\u5e38\u5c55\u793a\uff08\u5361\u987f\u3001\u9ed1\u767d\u5c4f\uff09"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x249f2

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "\u4e0d\u611f\u5174\u8da3"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x249f3

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "\u65e0\u6cd5\u5173\u95ed\u5e7f\u544a"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x249f4

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "\u70b9\u51fb\u5f02\u5e38\u3001\u9891\u7e41\u8df3\u8f6c"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x249f5

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "\u6295\u653e\u5185\u5bb9\u4e0e\u7528\u6237\u5e74\u9f84\u4e0d\u7b26"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x249f6

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "\u53cd\u9988\u5e7f\u544a\u8d28\u91cf"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x1fbd1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "\u4f4e\u4fd7\u8272\u60c5"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x1fbd2

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "\u8bf1\u5bfc\u70b9\u51fb"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x1fbd3

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "\u8fdd\u89c4\u8fdd\u6cd5"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x1fbd4

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "\u7591\u4f3c\u6284\u88ad"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/d;->p:Landroid/widget/TextView;

    const-string v0, "\u8be6\u7ec6\u7684\u63cf\u8ff0\u6709\u52a9\u4e8e\u6211\u4eec\u5feb\u901f\u5b9a\u4f4d\u95ee\u9898"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
