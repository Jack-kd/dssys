.class public Lcom/ubix/ssp/ad/e/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/f$a;,
        Lcom/ubix/ssp/ad/e/f$b;,
        Lcom/ubix/ssp/ad/e/f$c;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/f;->a:I

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/f;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/ubix/ssp/ad/e/f$b;)Landroid/text/SpannableStringBuilder;
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/f;->b:Ljava/lang/String;

    const-string v2, "\u6743\u9650\u4e28"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/f;->b:Ljava/lang/String;

    const-string v3, "\u4e28\u9690\u79c1\u4e28"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/f;->b:Ljava/lang/String;

    const-string v4, "\u4e28\u529f\u80fd\u4ecb\u7ecd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/ubix/ssp/ad/e/f$c;

    const/4 v5, 0x1

    invoke-direct {v4, v5, p1}, Lcom/ubix/ssp/ad/e/f$c;-><init>(ILcom/ubix/ssp/ad/e/f$a;)V

    add-int/lit8 v6, v1, 0x1

    const/16 v7, 0x21

    invoke-virtual {v0, v4, v1, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Lcom/ubix/ssp/ad/e/f$c;

    const/4 v6, 0x2

    invoke-direct {v4, v6, p1}, Lcom/ubix/ssp/ad/e/f$c;-><init>(ILcom/ubix/ssp/ad/e/f$a;)V

    add-int/lit8 v6, v2, 0x1

    const/4 v8, 0x3

    add-int/2addr v2, v8

    invoke-virtual {v0, v4, v6, v2, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Lcom/ubix/ssp/ad/e/f$c;

    invoke-direct {v2, v8, p1}, Lcom/ubix/ssp/ad/e/f$c;-><init>(ILcom/ubix/ssp/ad/e/f$a;)V

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v0, v2, v4, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Lcom/ubix/ssp/ad/e/f$c;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1}, Lcom/ubix/ssp/ad/e/f$c;-><init>(ILcom/ubix/ssp/ad/e/f$a;)V

    invoke-virtual {v0, v2, v3, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/16 p1, 0xa

    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-ne v3, v1, :cond_2

    if-gez p1, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, -0x1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/f;->b:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    const-string v4, "\u4e28"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_0

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x12

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ubix/ssp/ad/e/f;->a(Landroid/content/Context;I)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;I)Landroid/widget/TextView;
    .locals 7

    .line 6
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ubix/ssp/ad/e/a0/r;->g(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v5, v3, v4

    if-gez v5, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    int-to-double v5, v0

    div-double/2addr v5, v1

    float-to-double v0, v3

    div-double/2addr v5, v0

    const-wide/high16 v0, 0x403c000000000000L    # 28.0

    div-double/2addr v5, v0

    const/high16 v0, 0x41400000    # 12.0f

    div-float/2addr v0, v3

    float-to-double v0, v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    if-lez p1, :cond_1

    sub-int/2addr v0, p1

    :cond_1
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const p0, 0xe0a25

    invoke-virtual {v1, p0}, Landroid/view/View;->setId(I)V

    const/16 p0, 0x50

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setGravity(I)V

    int-to-float p0, v0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p0, -0x1

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p0, 0x6

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 p0, 0x0

    const/high16 v0, 0x66000000

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1, v2, p0, v4, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setHighlightColor(I)V

    if-nez p1, :cond_2

    const p0, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    const/high16 p0, 0x40000000    # 2.0f

    const p1, 0x3f99999a    # 1.2f

    invoke-virtual {v1, p0, p1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_2
    return-object v1
.end method

.method private b()Landroid/text/SpannableStringBuilder;
    .locals 6

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/f;->b:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    const-string v5, "\u4e28"

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_0

    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x12

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 1
    new-instance v0, Lcom/ubix/ssp/ad/e/f$b;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/f$b;-><init>(Lcom/ubix/ssp/ad/e/f;)V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/f;->b()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ubix/ssp/ad/e/z/h$b;)Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 3
    new-instance v0, Lcom/ubix/ssp/ad/e/f$b;

    invoke-direct {v0, p0, p1}, Lcom/ubix/ssp/ad/e/f$b;-><init>(Lcom/ubix/ssp/ad/e/f;Lcom/ubix/ssp/ad/e/z/h$b;)V

    invoke-direct {p0, v0}, Lcom/ubix/ssp/ad/e/f;->a(Lcom/ubix/ssp/ad/e/f$b;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/ubix/ssp/ad/g/k/b;)Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 4
    new-instance v0, Lcom/ubix/ssp/ad/e/f$b;

    invoke-direct {v0, p0, p1}, Lcom/ubix/ssp/ad/e/f$b;-><init>(Lcom/ubix/ssp/ad/e/f;Lcom/ubix/ssp/ad/g/k/b;)V

    invoke-direct {p0, v0}, Lcom/ubix/ssp/ad/e/f;->a(Lcom/ubix/ssp/ad/e/f$b;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method
