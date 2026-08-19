.class public Lcom/ubix/ssp/ad/e/z/c;
.super Lcom/ubix/ssp/ad/e/z/h;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/view/View;

.field private m:I

.field private n:I

.field private o:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/z/h;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/r;->h(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/z/c;->m:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/r;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/z/c;->n:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/z/c;->o:F

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/z/c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/e/z/c;->i:Landroid/widget/TextView;

    return-object p0
.end method

.method private a(Landroid/widget/EditText;)V
    .locals 3

    .line 3
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/z/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/z/c;->d()V

    return-void
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/e/z/c;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/e/z/c;->k:Landroid/widget/EditText;

    return-object p0
.end method

.method private d()V
    .locals 14

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/z/c;->j:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/z/c;->h:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/z/c;->i:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/z/c;->k:Landroid/widget/EditText;

    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/z/c;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/c;->j:Landroid/widget/ImageView;

    const-string v2, "ubix/ic_web_back.png"

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/c;->j:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/c;->h:Landroid/widget/TextView;

    const-string v2, "\u5176\u4ed6\u5efa\u8bae"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/c;->i:Landroid/widget/TextView;

    const-string v2, "\u63d0\u4ea4"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/c;->h:Landroid/widget/TextView;

    const v2, -0xcccccd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/c;->i:Landroid/widget/TextView;

    const v2, -0x7c7c7d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/c;->k:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/z/c;->j:Landroid/widget/ImageView;

    const/16 v3, 0x4e23

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/z/c;->h:Landroid/widget/TextView;

    const/16 v3, 0x4e21

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/z/c;->i:Landroid/widget/TextView;

    const/16 v3, 0x4e24

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/z/c;->k:Landroid/widget/EditText;

    const/16 v3, 0x4e25

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/z/c;->l:Landroid/view/View;

    const/16 v3, 0x4e22

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/z/c;->l:Landroid/view/View;

    const v4, -0xe0e0f

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/z/c;->k:Landroid/widget/EditText;

    const/high16 v4, -0x1000000

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/z/c;->k:Landroid/widget/EditText;

    const v4, 0x800003

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/z/c;->k:Landroid/widget/EditText;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/z/c;->k:Landroid/widget/EditText;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0xc8

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/text/InputFilter;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/ubix/ssp/ad/e/z/c;->m:I

    iget v6, p0, Lcom/ubix/ssp/ad/e/z/c;->o:F

    const/high16 v7, 0x42000000    # 32.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/ubix/ssp/ad/e/z/c;->o:F

    const/high16 v8, 0x41b00000    # 22.0f

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0xb

    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xd

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    iget v10, p0, Lcom/ubix/ssp/ad/e/z/c;->m:I

    iget v11, p0, Lcom/ubix/ssp/ad/e/z/c;->n:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-double v10, v10

    const-wide v12, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v10, v12

    double-to-int v10, v10

    iget v11, p0, Lcom/ubix/ssp/ad/e/z/c;->o:F

    mul-float/2addr v11, v7

    float-to-int v7, v11

    sub-int/2addr v10, v7

    const/4 v7, 0x2

    sub-int/2addr v10, v7

    const/4 v11, -0x1

    invoke-direct {v9, v11, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v10, 0x3

    invoke-virtual {v9, v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v3, p0, Lcom/ubix/ssp/ad/e/z/c;->o:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v3, v8, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v11, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/c;->j:Landroid/widget/ImageView;

    const/16 v4, 0xa

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/c;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/c;->k:Landroid/widget/EditText;

    iget v4, p0, Lcom/ubix/ssp/ad/e/z/c;->o:F

    const/high16 v7, 0x41600000    # 14.0f

    mul-float/2addr v7, v4

    float-to-int v7, v7

    const/high16 v10, 0x40800000    # 4.0f

    mul-float/2addr v4, v10

    float-to-int v4, v4

    invoke-virtual {v1, v7, v4, v7, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/c;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/c;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/c;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/c;->l:Landroid/view/View;

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/c;->k:Landroid/widget/EditText;

    invoke-virtual {p0, v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v11}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/c;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/c;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/c;->k:Landroid/widget/EditText;

    new-instance v1, Lcom/ubix/ssp/ad/e/z/c$a;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/e/z/c$a;-><init>(Lcom/ubix/ssp/ad/e/z/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Dialog;Lcom/ubix/ssp/ad/e/z/h$c;Lcom/ubix/ssp/ad/e/z/h$b;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/z/h;->f:Lcom/ubix/ssp/ad/e/z/h$b;

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/a0/l;Lcom/ubix/ssp/ad/e/z/h$c;Lcom/ubix/ssp/ad/e/z/h$b;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->c:Lcom/ubix/ssp/ad/e/a0/l;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/z/h;->f:Lcom/ubix/ssp/ad/e/z/h$b;

    return-void
.end method

.method public getContentHeight()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/c;->n:I

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/c;->m:I

    return v0
.end method

.method public getPopupType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    new-instance v0, Lcom/ubix/ssp/ad/e/z/c$b;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/z/c$b;-><init>(Lcom/ubix/ssp/ad/e/z/c;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x4e23

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4e24

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/c;->k:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/c;->k:Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/z/c;->a(Landroid/widget/EditText;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->c:Lcom/ubix/ssp/ad/e/a0/l;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/l;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->c:Lcom/ubix/ssp/ad/e/a0/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/l;->a()V

    :cond_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "dislikeId"

    const-string v1, "601210"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/c;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dislikeContent"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    if-eqz v0, :cond_4

    invoke-interface {v0, p0, p1}, Lcom/ubix/ssp/ad/e/z/h$c;->a(Lcom/ubix/ssp/ad/e/z/h;Ljava/util/HashMap;)V

    :cond_4
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    if-eqz p1, :cond_9

    invoke-interface {p1, p0}, Lcom/ubix/ssp/ad/e/z/h$c;->b(Lcom/ubix/ssp/ad/e/z/h;)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->c:Lcom/ubix/ssp/ad/e/a0/l;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/l;->b()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->c:Lcom/ubix/ssp/ad/e/a0/l;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/l;->a()V

    :cond_6
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-interface {p1, v0}, Lcom/ubix/ssp/ad/e/z/h$c;->a(Lcom/ubix/ssp/ad/e/z/h;)V

    :cond_8
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    if-eqz p1, :cond_9

    invoke-interface {p1, v0}, Lcom/ubix/ssp/ad/e/z/h$c;->b(Lcom/ubix/ssp/ad/e/z/h;)V

    :cond_9
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/e/a0/r;->h(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/z/c;->m:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/e/a0/r;->c(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/z/c;->n:I

    const/16 p1, 0x4e20

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v0, p0, Lcom/ubix/ssp/ad/e/z/c;->m:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    iget p1, p0, Lcom/ubix/ssp/ad/e/z/c;->m:I

    iget p2, p0, Lcom/ubix/ssp/ad/e/z/c;->n:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-double v0, p2

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
