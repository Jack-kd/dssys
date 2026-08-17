.class public final Lcom/kwad/components/core/innerEc/live/widget/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/core/innerEc/live/widget/m$a;
    }
.end annotation


# instance fields
.field private final aaf:Landroid/text/SpannableStringBuilder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private aag:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)V
    .locals 1
    .param p2    # Landroid/text/SpannableStringBuilder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/m;->aag:Z

    .line 6
    .line 7
    iput-object p2, p0, Lcom/kwad/components/core/innerEc/live/widget/m;->aaf:Landroid/text/SpannableStringBuilder;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/m;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    return-void
.end method

.method private a(Ljava/lang/Object;II)Lcom/kwad/components/core/innerEc/live/widget/m;
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/m;->aaf:Landroid/text/SpannableStringBuilder;

    const/16 v1, 0x21

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method private b(Ljava/lang/CharSequence;)Lcom/kwad/components/core/innerEc/live/widget/m;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/m;->aaf:Landroid/text/SpannableStringBuilder;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method private length()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/m;->aaf:Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/innerEc/live/widget/m$a;)Lcom/kwad/components/core/innerEc/live/widget/m;
    .locals 6
    .param p1    # Lcom/kwad/components/core/innerEc/live/widget/m$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_4

    .line 1
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/widget/m$a;->b(Lcom/kwad/components/core/innerEc/live/widget/m$a;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/widget/m$a;->b(Lcom/kwad/components/core/innerEc/live/widget/m$a;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kwad/components/core/innerEc/live/widget/m;->b(Ljava/lang/CharSequence;)Lcom/kwad/components/core/innerEc/live/widget/m;

    .line 3
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/widget/m;->length()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Lcom/kwad/components/core/innerEc/live/widget/m$a;->length()I

    move-result v1

    sub-int v1, v0, v1

    .line 5
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/widget/m$a;->c(Lcom/kwad/components/core/innerEc/live/widget/m$a;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    new-instance v2, Lcom/kwad/components/core/innerEc/live/widget/m$1;

    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/widget/m$a;->c(Lcom/kwad/components/core/innerEc/live/widget/m$a;)I

    move-result v3

    invoke-direct {v2, p0, v3, p1}, Lcom/kwad/components/core/innerEc/live/widget/m$1;-><init>(Lcom/kwad/components/core/innerEc/live/widget/m;ILcom/kwad/components/core/innerEc/live/widget/m$a;)V

    invoke-direct {p0, v2, v1, v0}, Lcom/kwad/components/core/innerEc/live/widget/m;->a(Ljava/lang/Object;II)Lcom/kwad/components/core/innerEc/live/widget/m;

    .line 7
    :cond_1
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/widget/m$a;->f(Lcom/kwad/components/core/innerEc/live/widget/m$a;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    new-instance v2, Lcom/kwad/components/core/innerEc/live/widget/o;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/widget/m$a;->f(Lcom/kwad/components/core/innerEc/live/widget/m$a;)I

    move-result v4

    const/high16 v5, 0x40400000    # 3.0f

    invoke-direct {v2, v5, v3, v5, v4}, Lcom/kwad/components/core/innerEc/live/widget/o;-><init>(FFFI)V

    const/4 v3, 0x1

    .line 9
    invoke-virtual {v2, v3}, Lcom/kwad/components/core/innerEc/live/widget/o;->aO(Z)V

    .line 10
    invoke-direct {p0, v2, v1, v0}, Lcom/kwad/components/core/innerEc/live/widget/m;->a(Ljava/lang/Object;II)Lcom/kwad/components/core/innerEc/live/widget/m;

    .line 11
    :cond_2
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/widget/m$a;->g(Lcom/kwad/components/core/innerEc/live/widget/m$a;)I

    move-result v2

    if-lez v2, :cond_3

    .line 12
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/widget/m$a;->g(Lcom/kwad/components/core/innerEc/live/widget/m$a;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-direct {p0, v2, v1, v0}, Lcom/kwad/components/core/innerEc/live/widget/m;->a(Ljava/lang/Object;II)Lcom/kwad/components/core/innerEc/live/widget/m;

    .line 13
    :cond_3
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/widget/m$a;->h(Lcom/kwad/components/core/innerEc/live/widget/m$a;)Landroid/view/View$OnClickListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 14
    new-instance v2, Lcom/kwad/components/core/innerEc/live/widget/n;

    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/widget/m$a;->h(Lcom/kwad/components/core/innerEc/live/widget/m$a;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/kwad/components/core/innerEc/live/widget/n;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v2, v1, v0}, Lcom/kwad/components/core/innerEc/live/widget/m;->a(Ljava/lang/Object;II)Lcom/kwad/components/core/innerEc/live/widget/m;

    :cond_4
    :goto_0
    return-object p0
.end method

.method public final ti()Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/m;->aaf:Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    return-object v0
.end method
