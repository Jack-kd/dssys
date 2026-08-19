.class public Lcom/fl/saas/adx/base/inner/ClickSpannable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private genericColor:I

.field private nextCondition:Lcom/fl/saas/b1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fl/saas/b1;"
        }
    .end annotation
.end field

.field private separator:Ljava/lang/String;

.field private final spannable:Landroid/text/SpannableStringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/ClickSpannable;->spannable:Landroid/text/SpannableStringBuilder;

    const-string v0, " "

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/ClickSpannable;->separator:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/fl/saas/adx/base/inner/ClickSpannable;->genericColor:I

    return-void
.end method

.method public static synthetic access$000(Lcom/fl/saas/adx/base/inner/ClickSpannable;)I
    .locals 0

    iget p0, p0, Lcom/fl/saas/adx/base/inner/ClickSpannable;->genericColor:I

    return p0
.end method

.method private addSeparator()V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/ClickSpannable;->spannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/ClickSpannable;->spannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/ClickSpannable;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/ClickSpannable;->spannable:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/ClickSpannable;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public build()Landroid/text/SpannableStringBuilder;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/ClickSpannable;->spannable:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public nextCondition(Lcom/fl/saas/b1;)Lcom/fl/saas/adx/base/inner/ClickSpannable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fl/saas/b1;",
            ")",
            "Lcom/fl/saas/adx/base/inner/ClickSpannable;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/ClickSpannable;->nextCondition:Lcom/fl/saas/b1;

    .line 2
    .line 3
    return-object p0
.end method

.method public setGenericColor(I)Lcom/fl/saas/adx/base/inner/ClickSpannable;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/fl/saas/adx/base/inner/ClickSpannable;->genericColor:I

    return-object p0
.end method

.method public setSeparator(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/ClickSpannable;
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/ClickSpannable;->separator:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setText([Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/ClickSpannable;
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/fl/saas/adx/base/inner/ClickSpannable;->addSeparator()V

    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/fl/saas/adx/base/inner/ClickSpannable;->spannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object p0
.end method

.method public setTextClick(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/fl/saas/adx/base/inner/ClickSpannable;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/fl/saas/adx/base/inner/ClickSpannable;->setTextClick(Ljava/lang/String;ZLjava/lang/Runnable;)Lcom/fl/saas/adx/base/inner/ClickSpannable;

    move-result-object p1

    return-object p1
.end method

.method public setTextClick(Ljava/lang/String;ZLjava/lang/Runnable;)Lcom/fl/saas/adx/base/inner/ClickSpannable;
    .locals 3

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/ClickSpannable;->nextCondition:Lcom/fl/saas/b1;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fl/saas/adx/base/inner/ClickSpannable;->nextCondition:Lcom/fl/saas/b1;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/fl/saas/b1;->a()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/fl/saas/adx/base/inner/ClickSpannable;->addSeparator()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/ClickSpannable;->spannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/ClickSpannable;->spannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/ClickSpannable;->spannable:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/ClickSpannable;->spannable:Landroid/text/SpannableStringBuilder;

    new-instance v2, Lcom/fl/saas/adx/base/inner/ClickSpannable$1;

    invoke-direct {v2, p0, p3, p2}, Lcom/fl/saas/adx/base/inner/ClickSpannable$1;-><init>(Lcom/fl/saas/adx/base/inner/ClickSpannable;Ljava/lang/Runnable;Z)V

    const/16 p2, 0x21

    invoke-virtual {v1, v2, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    :goto_0
    return-object p0
.end method
