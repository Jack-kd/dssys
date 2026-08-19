.class public Lcom/octopus/ad/internal/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/e/c;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field public a:Lcom/octopus/ad/internal/e/a;

.field public b:Lcom/octopus/ad/internal/b/f;

.field public c:Landroid/widget/FrameLayout;

.field public d:Lcom/octopus/ad/d;

.field private e:Z

.field private final f:Landroid/content/Context;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/e/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/b;->e:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/octopus/ad/internal/e/b;->b:Lcom/octopus/ad/internal/b/f;

    .line 9
    .line 10
    iput-object v1, p0, Lcom/octopus/ad/internal/e/b;->d:Lcom/octopus/ad/d;

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    iput v1, p0, Lcom/octopus/ad/internal/e/b;->o:I

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/b;->p:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/b;->q:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/b;->r:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/b;->s:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/b;->t:Z

    .line 25
    .line 26
    iput v0, p0, Lcom/octopus/ad/internal/e/b;->u:I

    .line 27
    .line 28
    new-instance v0, Landroid/content/MutableContextWrapper;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {v0, v1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/octopus/ad/internal/e/b;->f:Landroid/content/Context;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Lcom/octopus/ad/internal/e/a;->setAdWebView(Lcom/octopus/ad/internal/e/b;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/e/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/octopus/ad/internal/e/b;->u:I

    return p0
.end method

.method private a(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->c:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 32
    iget-object v1, p0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    instance-of v2, v1, Lcom/octopus/ad/internal/e/g;

    if-eqz v2, :cond_1

    .line 33
    check-cast v1, Lcom/octopus/ad/internal/e/g;

    invoke-virtual {v1}, Lcom/octopus/ad/internal/e/g;->getResizeAdToFitContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 35
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 37
    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/e/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/e/b;->f:Landroid/content/Context;

    return-object p0
.end method

.method private g(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/octopus/ad/internal/e/b;->i:I

    return-void
.end method

.method private h(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/octopus/ad/internal/e/b;->j:I

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->f:Landroid/content/Context;

    return-object v0
.end method

.method public a(ILcom/octopus/ad/a/d;)V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->b:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->c:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 39
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/internal/b;->b()V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/e/a;->setIsClicked(Z)V

    .line 42
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->b:Lcom/octopus/ad/internal/b/f;

    iget-object v1, p0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-virtual {v1}, Lcom/octopus/ad/internal/e/a;->getOpensNativeBrowser()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/b/f;->a(Z)V

    .line 43
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getSplashParent()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->c:Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getSplashParent()Landroid/view/ViewGroup;

    move-result-object v0

    .line 44
    :goto_0
    iget-object v1, p0, Lcom/octopus/ad/internal/e/b;->b:Lcom/octopus/ad/internal/b/f;

    iget-object v2, p0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    invoke-virtual {v2}, Lcom/octopus/ad/internal/e/a;->g()Z

    move-result v2

    invoke-virtual {v1, v0, p1, v2, p2}, Lcom/octopus/ad/internal/b/f;->a(Landroid/view/View;IZLcom/octopus/ad/a/d;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/octopus/ad/internal/b/f;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/octopus/ad/internal/e/b;->b:Lcom/octopus/ad/internal/b/f;

    .line 4
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->o()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/e/b;->h(I)V

    .line 5
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->p()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/e/b;->g(I)V

    .line 6
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->H()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/e/b;->d(I)V

    .line 7
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->G()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/e/b;->e(I)V

    .line 8
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->J()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/e/b;->f(I)V

    .line 9
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->D()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->E()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/e/b;->m:I

    goto :goto_0

    .line 11
    :cond_1
    iput v1, p0, Lcom/octopus/ad/internal/e/b;->m:I

    .line 12
    :goto_0
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->F()I

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->F()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/e/b;->n:I

    goto :goto_1

    .line 14
    :cond_2
    iput v1, p0, Lcom/octopus/ad/internal/e/b;->n:I

    .line 15
    :goto_1
    iget v0, p0, Lcom/octopus/ad/internal/e/b;->m:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/octopus/ad/internal/e/b;->n:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->af()Lcom/octopus/ad/a/g$a;

    move-result-object v0

    sget-object v3, Lcom/octopus/ad/a/g$a;->b:Lcom/octopus/ad/a/g$a;

    if-eq v0, v3, :cond_3

    .line 16
    iput v2, p0, Lcom/octopus/ad/internal/e/b;->m:I

    goto :goto_2

    .line 17
    :cond_3
    iget v0, p0, Lcom/octopus/ad/internal/e/b;->m:I

    if-eq v0, v1, :cond_4

    iget v3, p0, Lcom/octopus/ad/internal/e/b;->n:I

    if-eq v3, v1, :cond_4

    if-le v0, v3, :cond_4

    .line 18
    iput v3, p0, Lcom/octopus/ad/internal/e/b;->m:I

    .line 19
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->A()Z

    move-result v0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/b;->p:Z

    .line 20
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->x()Z

    move-result v0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/b;->q:Z

    .line 21
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->y()Z

    move-result v0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/b;->r:Z

    .line 22
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->I()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/e/b;->l:I

    .line 23
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->N()Z

    move-result v0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/b;->t:Z

    .line 24
    iput v1, p0, Lcom/octopus/ad/internal/e/b;->o:I

    .line 25
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->T()Z

    move-result p1

    .line 26
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/octopus/ad/internal/e/b;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/e/b;->c:Landroid/widget/FrameLayout;

    .line 27
    new-instance v1, Lcom/octopus/ad/internal/e/h;

    new-instance v3, Lcom/octopus/ad/internal/e/b$1;

    invoke-direct {v3, p0}, Lcom/octopus/ad/internal/e/b$1;-><init>(Lcom/octopus/ad/internal/e/b;)V

    invoke-direct {v1, v0, p1, v3}, Lcom/octopus/ad/internal/e/h;-><init>(Landroid/view/View;ZLcom/octopus/ad/internal/e/h$a;)V

    .line 28
    iget-object p1, p0, Lcom/octopus/ad/internal/e/b;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 29
    invoke-virtual {p0, v2}, Lcom/octopus/ad/internal/e/b;->b(I)Z

    return-void
.end method

.method public a(I)Z
    .locals 1

    .line 30
    iget v0, p0, Lcom/octopus/ad/internal/e/b;->o:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/e/b;->b(I)Z

    move-result p1

    return p1
.end method

.method public b()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->b:Lcom/octopus/ad/internal/b/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->w()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Z
    .locals 12

    .line 4
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->b:Lcom/octopus/ad/internal/b/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget v2, p0, Lcom/octopus/ad/internal/e/b;->o:I

    if-ne v2, p1, :cond_0

    goto/16 :goto_4

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->b:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    goto/16 :goto_3

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->b:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 7
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/octopus/ad/internal/c/p;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/b;->p()V

    return v1

    .line 9
    :cond_2
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    sget-object v3, Lcom/octopus/ad/internal/j;->a:Lcom/octopus/ad/internal/j;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_4

    .line 10
    iget-object v1, p0, Lcom/octopus/ad/internal/e/b;->d:Lcom/octopus/ad/d;

    if-nez v1, :cond_3

    .line 11
    new-instance v1, Lcom/octopus/ad/d;

    invoke-direct {v1, p0}, Lcom/octopus/ad/d;-><init>(Lcom/octopus/ad/internal/e/b;)V

    iput-object v1, p0, Lcom/octopus/ad/internal/e/b;->d:Lcom/octopus/ad/d;

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/octopus/ad/internal/e/b;->d:Lcom/octopus/ad/d;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/octopus/ad/d;->a(Ljava/lang/String;)V

    .line 13
    iput-boolean v4, p0, Lcom/octopus/ad/internal/e/b;->s:Z

    goto/16 :goto_2

    .line 14
    :cond_4
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/octopus/ad/internal/q;->p()F

    move-result v2

    .line 15
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/octopus/ad/internal/q;->q()F

    move-result v3

    .line 16
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v5

    invoke-virtual {v5}, Lcom/octopus/ad/internal/q;->r()F

    move-result v5

    .line 17
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/b;->getCreativeWidth()I

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, -0x1

    if-ne v6, v8, :cond_5

    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/b;->getCreativeHeight()I

    move-result v6

    if-ne v6, v8, :cond_5

    move v5, v8

    move v6, v5

    goto :goto_0

    .line 18
    :cond_5
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/b;->getCreativeHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 19
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/b;->getCreativeWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v5

    add-float/2addr v9, v7

    float-to-int v5, v9

    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/b;->e()I

    move-result v9

    const/16 v10, 0x11

    if-nez v9, :cond_7

    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/b;->f()I

    move-result v9

    if-nez v9, :cond_7

    .line 21
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v6, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 22
    iget-object v3, p0, Lcom/octopus/ad/internal/e/b;->b:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {v3}, Lcom/octopus/ad/internal/b/f;->m()Lcom/octopus/ad/internal/p;

    move-result-object v3

    sget-object v5, Lcom/octopus/ad/internal/p;->a:Lcom/octopus/ad/internal/p;

    if-ne v3, v5, :cond_6

    .line 23
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v8, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 24
    iget-object v3, p0, Lcom/octopus/ad/internal/e/b;->c:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_9

    .line 25
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 26
    :cond_6
    invoke-direct {p0, v2}, Lcom/octopus/ad/internal/e/b;->a(Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_1

    .line 27
    :cond_7
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const v11, 0x800033

    invoke-direct {v9, v5, v6, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 28
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/b;->f()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v5, v7

    float-to-int v3, v5

    .line 29
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/b;->e()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v5, v7

    float-to-int v2, v5

    .line 30
    invoke-virtual {v9, v2, v3, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 31
    iget-object v2, p0, Lcom/octopus/ad/internal/e/b;->b:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {v2}, Lcom/octopus/ad/internal/b/f;->m()Lcom/octopus/ad/internal/p;

    move-result-object v2

    sget-object v3, Lcom/octopus/ad/internal/p;->a:Lcom/octopus/ad/internal/p;

    if-ne v2, v3, :cond_8

    .line 32
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v8, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 33
    iget-object v3, p0, Lcom/octopus/ad/internal/e/b;->c:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_9

    .line 34
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 35
    :cond_8
    invoke-direct {p0, v9}, Lcom/octopus/ad/internal/e/b;->a(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 36
    :cond_9
    :goto_1
    iget-object v2, p0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    if-eqz v2, :cond_a

    .line 37
    iput-boolean v4, v2, Lcom/octopus/ad/internal/e/a;->o:Z

    .line 38
    :cond_a
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/octopus/ad/internal/e/b;->f:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 39
    iget-object v3, p0, Lcom/octopus/ad/internal/e/b;->f:Landroid/content/Context;

    invoke-static {v3}, Lcom/octopus/ad/internal/utilities/ImageManager;->with(Landroid/content/Context;)Lcom/octopus/ad/internal/utilities/ImageManager;

    move-result-object v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v5, Lcom/octopus/ad/internal/e/b$2;

    invoke-direct {v5, p0, v2}, Lcom/octopus/ad/internal/e/b$2;-><init>(Lcom/octopus/ad/internal/e/b;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v0, v5}, Lcom/octopus/ad/internal/utilities/ImageManager;->getBitmap(Ljava/lang/String;Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;)V

    .line 40
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->c:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_b

    .line 41
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    :cond_b
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/b;->s:Z

    .line 43
    :goto_2
    iput p1, p0, Lcom/octopus/ad/internal/e/b;->o:I

    return v4

    .line 44
    :cond_c
    :goto_3
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/b;->p()V

    :cond_d
    :goto_4
    return v1
.end method

.method public c()Lcom/octopus/ad/internal/e/c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/b;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->d:Lcom/octopus/ad/d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/octopus/ad/internal/e/b;->u:I

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/octopus/ad/internal/e/b;->g:I

    return-void
.end method

.method public d()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->b:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->af()Lcom/octopus/ad/a/g$a;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/a/g$a;->b:Lcom/octopus/ad/a/g$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->b:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->n()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/octopus/ad/internal/e/b;->o:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    sget-object v1, Lcom/octopus/ad/internal/j;->a:Lcom/octopus/ad/internal/j;

    if-ne v0, v1, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    iget v0, p0, Lcom/octopus/ad/internal/e/b;->o:I

    if-nez v0, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/internal/e/b;->g:I

    return v0
.end method

.method public e(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/octopus/ad/internal/e/b;->h:I

    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/internal/e/b;->h:I

    return v0
.end method

.method public f(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/octopus/ad/internal/e/b;->k:I

    return-void
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/internal/e/b;->m:I

    return v0
.end method

.method public getAdWebView()Lcom/octopus/ad/internal/e/b;
    .locals 0

    return-object p0
.end method

.method public getCreativeHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/internal/e/b;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public getCreativeWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/internal/e/b;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->c:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/internal/e/b;->n:I

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/b;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/b;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public k()V
    .locals 1

    .line 1
    new-instance v0, Lcom/octopus/ad/internal/e/b$3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/e/b$3;-><init>(Lcom/octopus/ad/internal/e/b;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/octopus/ad/utils/ThreadUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public l()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->c:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    .line 6
    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->d()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/b;->t:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/octopus/ad/internal/e/b;->c:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/e/a;->e(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/octopus/ad/internal/e/b;->c:Landroid/widget/FrameLayout;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/e/a;->d(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/octopus/ad/internal/e/b;->c:Landroid/widget/FrameLayout;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/e/a;->c(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/octopus/ad/internal/e/b;->c:Landroid/widget/FrameLayout;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/e/a;->f(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    .line 49
    .line 50
    invoke-interface {v0}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/p;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sget-object v1, Lcom/octopus/ad/internal/p;->c:Lcom/octopus/ad/internal/p;

    .line 55
    .line 56
    if-eq v0, v1, :cond_1

    .line 57
    .line 58
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    .line 59
    .line 60
    invoke-interface {v0}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/p;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget-object v2, Lcom/octopus/ad/internal/p;->d:Lcom/octopus/ad/internal/p;

    .line 65
    .line 66
    if-ne v0, v2, :cond_2

    .line 67
    .line 68
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/b;->g()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/b;->h()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    iget-object v4, p0, Lcom/octopus/ad/internal/e/b;->c:Landroid/widget/FrameLayout;

    .line 79
    .line 80
    invoke-virtual {v0, v2, v3, v4}, Lcom/octopus/ad/internal/e/a;->a(IILandroid/view/View;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    .line 84
    .line 85
    invoke-interface {v0}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/p;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sget-object v2, Lcom/octopus/ad/internal/p;->e:Lcom/octopus/ad/internal/p;

    .line 90
    .line 91
    if-ne v0, v2, :cond_3

    .line 92
    .line 93
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/b;->h()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/b;->g()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/b;->h()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    invoke-virtual {v0, v3, v4, v5}, Lcom/octopus/ad/internal/e/a;->a(III)V

    .line 108
    .line 109
    .line 110
    :cond_3
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-eqz v0, :cond_5

    .line 117
    .line 118
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    .line 119
    .line 120
    invoke-interface {v0}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/p;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eq v0, v1, :cond_4

    .line 125
    .line 126
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    .line 127
    .line 128
    invoke-interface {v0}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/p;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    sget-object v1, Lcom/octopus/ad/internal/p;->d:Lcom/octopus/ad/internal/p;

    .line 133
    .line 134
    if-eq v0, v1, :cond_4

    .line 135
    .line 136
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    .line 137
    .line 138
    invoke-interface {v0}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/p;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-ne v0, v2, :cond_5

    .line 143
    .line 144
    :cond_4
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/b;->r()V

    .line 145
    .line 146
    .line 147
    :cond_5
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/b;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/b;->r:Z

    .line 2
    .line 3
    return v0
.end method

.method public o()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/b;->k()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/b;->e:Z

    .line 3
    .line 4
    return-void
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/internal/e/b;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b;->b:Lcom/octopus/ad/internal/b/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/octopus/ad/internal/e/a;->g()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    new-instance v2, Lcom/octopus/ad/internal/e/b$4;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lcom/octopus/ad/internal/e/b$4;-><init>(Lcom/octopus/ad/internal/e/b;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/octopus/ad/internal/b/f;->a(ZLcom/octopus/ad/a;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public s()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/internal/e/b;->k:I

    .line 2
    .line 3
    return v0
.end method
