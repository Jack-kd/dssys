.class public final Lcom/kwad/components/core/innerEc/live/widget/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/innerEc/live/widget/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private Fx:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private aaj:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private aak:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private aal:I

.field private aam:Z

.field private aan:Landroid/graphics/Typeface;

.field private aao:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/m$a;->aaj:Ljava/lang/CharSequence;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/kwad/components/core/innerEc/live/widget/m$a;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic b(Lcom/kwad/components/core/innerEc/live/widget/m$a;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/widget/m$a;->aaj:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method private bl(I)Lcom/kwad/components/core/innerEc/live/widget/m$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/kwad/components/core/innerEc/live/widget/m$a;->aak:I

    .line 2
    .line 3
    return-object p0
.end method

.method private bn(I)Lcom/kwad/components/core/innerEc/live/widget/m$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/kwad/components/core/innerEc/live/widget/m$a;->Fx:I

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/kwad/components/core/innerEc/live/widget/m$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/core/innerEc/live/widget/m$a;->aak:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic d(Lcom/kwad/components/core/innerEc/live/widget/m$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/core/innerEc/live/widget/m$a;->aam:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic e(Lcom/kwad/components/core/innerEc/live/widget/m$a;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/widget/m$a;->aan:Landroid/graphics/Typeface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/kwad/components/core/innerEc/live/widget/m$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/core/innerEc/live/widget/m$a;->Fx:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic g(Lcom/kwad/components/core/innerEc/live/widget/m$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/core/innerEc/live/widget/m$a;->aal:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic h(Lcom/kwad/components/core/innerEc/live/widget/m$a;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/widget/m$a;->aao:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final bk(I)Lcom/kwad/components/core/innerEc/live/widget/m$a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/m$a;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/widget/m$a;->bl(I)Lcom/kwad/components/core/innerEc/live/widget/m$a;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public final bm(I)Lcom/kwad/components/core/innerEc/live/widget/m$a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/m$a;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/widget/m$a;->bn(I)Lcom/kwad/components/core/innerEc/live/widget/m$a;

    .line 10
    .line 11
    .line 12
    :cond_0
    return-object p0
.end method

.method public final length()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/m$a;->aaj:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
