.class public final Lcom/kwad/components/core/page/widget/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aht:Lcom/kwad/components/core/proxy/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/kwad/components/core/page/widget/a/a;Lcom/kwad/components/core/proxy/j;Lcom/kwad/components/core/page/widget/a/e;)Lcom/kwad/components/core/page/widget/a/b;
    .locals 1
    .param p1    # Lcom/kwad/components/core/page/widget/a/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    new-instance v0, Lcom/kwad/components/core/page/widget/a/d$1;

    invoke-direct {v0, p0, p2}, Lcom/kwad/components/core/page/widget/a/d$1;-><init>(Lcom/kwad/components/core/page/widget/a/d;Lcom/kwad/components/core/proxy/j;)V

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/page/widget/a/b;->a(Lcom/kwad/components/core/page/widget/a/b$a;)V

    .line 28
    iget p2, p3, Lcom/kwad/components/core/page/widget/a/e;->ahE:I

    if-lez p2, :cond_0

    .line 29
    invoke-virtual {p1, p2}, Lcom/kwad/components/core/page/widget/a/b;->bB(I)Lcom/kwad/components/core/page/widget/a/b;

    :cond_0
    return-object p1
.end method

.method private a(Landroid/app/Activity;Lcom/kwad/components/core/proxy/j;Lcom/kwad/components/core/page/widget/a/e;)Lcom/kwad/components/core/proxy/j;
    .locals 0

    .line 19
    invoke-direct {p0, p2, p3}, Lcom/kwad/components/core/page/widget/a/d;->a(Lcom/kwad/components/core/proxy/j;Lcom/kwad/components/core/page/widget/a/e;)Lcom/kwad/components/core/proxy/j;

    move-result-object p2

    iput-object p2, p0, Lcom/kwad/components/core/page/widget/a/d;->aht:Lcom/kwad/components/core/proxy/j;

    .line 20
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p3, "WEB_HALF_DIALOG"

    invoke-virtual {p2, p1, p3}, Lcom/kwad/components/core/proxy/j;->a(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/kwad/components/core/page/widget/a/d;->aht:Lcom/kwad/components/core/proxy/j;

    return-object p1
.end method

.method private a(Lcom/kwad/components/core/proxy/j;Lcom/kwad/components/core/page/widget/a/e;)Lcom/kwad/components/core/proxy/j;
    .locals 2

    .line 22
    invoke-static {p2}, Lcom/kwad/components/core/page/widget/a/a;->a(Lcom/kwad/components/core/page/widget/a/e;)Lcom/kwad/components/core/page/widget/a/a;

    move-result-object v0

    .line 23
    iget-boolean v1, p2, Lcom/kwad/components/core/page/widget/a/e;->ahC:Z

    if-nez v1, :cond_0

    .line 24
    iget v1, p2, Lcom/kwad/components/core/page/widget/a/e;->ahy:F

    float-to-int v1, v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/page/widget/a/b;->bC(I)V

    .line 26
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/kwad/components/core/page/widget/a/d;->a(Lcom/kwad/components/core/page/widget/a/a;Lcom/kwad/components/core/proxy/j;Lcom/kwad/components/core/page/widget/a/e;)Lcom/kwad/components/core/page/widget/a/b;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Landroid/app/Activity;Lcom/kwad/components/core/proxy/j;Lcom/kwad/components/core/page/widget/a/g;I)Lcom/kwad/components/core/proxy/j;
    .locals 7

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/kwad/components/core/page/widget/a/d;->a(Ljava/lang/String;Landroid/app/Activity;Lcom/kwad/components/core/proxy/j;Lcom/kwad/components/core/page/widget/a/g;ILcom/kwad/components/core/page/widget/a/c;)Lcom/kwad/components/core/proxy/j;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Landroid/app/Activity;Lcom/kwad/components/core/proxy/j;Lcom/kwad/components/core/page/widget/a/g;ILcom/kwad/components/core/page/widget/a/c;)Lcom/kwad/components/core/proxy/j;
    .locals 0
    .param p6    # Lcom/kwad/components/core/page/widget/a/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p4, :cond_0

    .line 3
    new-instance p4, Lcom/kwad/components/core/page/widget/a/f;

    invoke-direct {p4}, Lcom/kwad/components/core/page/widget/a/f;-><init>()V

    .line 4
    :cond_0
    invoke-interface {p4, p1}, Lcom/kwad/components/core/page/widget/a/g;->bc(Ljava/lang/String;)Lcom/kwad/components/core/page/widget/a/e;

    move-result-object p1

    .line 5
    iput p5, p1, Lcom/kwad/components/core/page/widget/a/e;->ahE:I

    const/4 p4, 0x0

    .line 6
    iput-object p4, p1, Lcom/kwad/components/core/page/widget/a/e;->ahG:Lcom/kwad/components/core/page/widget/a/c;

    const p4, 0x3f4ccccd    # 0.8f

    .line 7
    iput p4, p1, Lcom/kwad/components/core/page/widget/a/e;->ahz:F

    const/high16 p4, 0x40800000    # 4.0f

    .line 8
    invoke-static {p2, p4}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    move-result p4

    iput p4, p1, Lcom/kwad/components/core/page/widget/a/e;->ahA:I

    .line 9
    invoke-static {p2, p1}, Lcom/kwad/components/core/page/widget/a/d;->a(Landroid/app/Activity;Lcom/kwad/components/core/page/widget/a/e;)V

    .line 10
    invoke-direct {p0, p2, p3, p1}, Lcom/kwad/components/core/page/widget/a/d;->a(Landroid/app/Activity;Lcom/kwad/components/core/proxy/j;Lcom/kwad/components/core/page/widget/a/e;)Lcom/kwad/components/core/proxy/j;

    move-result-object p1

    return-object p1
.end method

.method private static a(Landroid/app/Activity;Lcom/kwad/components/core/page/widget/a/e;)V
    .locals 4

    .line 11
    iget v0, p1, Lcom/kwad/components/core/page/widget/a/e;->ahx:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    .line 12
    iput-boolean v2, p1, Lcom/kwad/components/core/page/widget/a/e;->ahw:Z

    .line 13
    iput v1, p1, Lcom/kwad/components/core/page/widget/a/e;->ahx:F

    goto :goto_0

    :cond_0
    cmpg-float v2, v0, v3

    if-gez v2, :cond_1

    .line 14
    iput v3, p1, Lcom/kwad/components/core/page/widget/a/e;->ahx:F

    .line 15
    :cond_1
    :goto_0
    iget-boolean v2, p1, Lcom/kwad/components/core/page/widget/a/e;->ahw:Z

    if-eqz v2, :cond_2

    .line 16
    invoke-static {p0}, Lcom/kwad/sdk/c/a/a;->k(Landroid/app/Activity;)I

    move-result p0

    int-to-float p0, p0

    iput p0, p1, Lcom/kwad/components/core/page/widget/a/e;->ahy:F

    return-void

    .line 17
    :cond_2
    iget v2, p1, Lcom/kwad/components/core/page/widget/a/e;->ahx:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_3

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_3

    .line 18
    invoke-static {p0}, Lcom/kwad/sdk/c/a/a;->k(Landroid/app/Activity;)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    iput p0, p1, Lcom/kwad/components/core/page/widget/a/e;->ahy:F

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/app/Activity;Lcom/kwad/components/core/proxy/j;)Lcom/kwad/components/core/proxy/j;
    .locals 6

    .line 1
    new-instance v4, Lcom/kwad/components/core/page/widget/a/f;

    invoke-direct {v4}, Lcom/kwad/components/core/page/widget/a/f;-><init>()V

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/kwad/components/core/page/widget/a/d;->a(Ljava/lang/String;Landroid/app/Activity;Lcom/kwad/components/core/proxy/j;Lcom/kwad/components/core/page/widget/a/g;I)Lcom/kwad/components/core/proxy/j;

    move-result-object p1

    return-object p1
.end method

.method public final dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/d;->aht:Lcom/kwad/components/core/proxy/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/components/core/proxy/j;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
