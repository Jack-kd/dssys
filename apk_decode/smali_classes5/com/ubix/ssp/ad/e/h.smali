.class public Lcom/ubix/ssp/ad/e/h;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/h$c;,
        Lcom/ubix/ssp/ad/e/h$b;,
        Lcom/ubix/ssp/ad/e/h$a;
    }
.end annotation


# instance fields
.field A:J

.field B:Landroid/os/HandlerThread;

.field C:Landroid/view/WindowManager;

.field private a:Landroid/graphics/Paint;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ubix/ssp/ad/e/h$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Random;

.field private d:J

.field private e:I

.field private f:I

.field private g:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/graphics/Matrix;

.field n:Z

.field private o:J

.field p:Z

.field final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field s:I

.field t:I

.field private u:J

.field private v:Lcom/ubix/ssp/ad/e/h$c;

.field private w:I

.field private x:Landroid/os/Handler;

.field y:Z

.field z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/h;->c:Ljava/util/Random;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/h;->d:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/ubix/ssp/ad/e/h;->e:I

    const/16 v2, 0xc

    iput v2, p0, Lcom/ubix/ssp/ad/e/h;->f:I

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/ubix/ssp/ad/e/h;->m:Landroid/graphics/Matrix;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ubix/ssp/ad/e/h;->q:Ljava/util/ArrayList;

    const/4 v2, 0x3

    iput v2, p0, Lcom/ubix/ssp/ad/e/h;->r:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/ubix/ssp/ad/e/h;->t:I

    const/16 v2, 0x10

    iput v2, p0, Lcom/ubix/ssp/ad/e/h;->w:I

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/h;->y:Z

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/h;->z:Z

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/h;->A:J

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "JoyfulDraw"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/h;->B:Landroid/os/HandlerThread;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/h;->C:Landroid/view/WindowManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/h;->C:Landroid/view/WindowManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/h;->b:Ljava/util/List;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/h;->a:Landroid/graphics/Paint;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/h;->u:J

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/h;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ubix/ssp/ad/e/h;->j:I

    return p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/h;)Ljava/lang/ref/SoftReference;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ubix/ssp/ad/e/h;->g:Ljava/lang/ref/SoftReference;

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ubix/ssp/ad/e/h;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x15e

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/ubix/ssp/ad/e/h;->f:I

    if-lt v0, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/h;->o:J

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/h;->getRandomStage()I

    move-result v0

    iget v1, p0, Lcom/ubix/ssp/ad/e/h;->t:I

    if-ne v1, v0, :cond_2

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/h;->getRandomStage()I

    move-result v0

    :cond_2
    new-instance v1, Lcom/ubix/ssp/ad/e/h$b;

    invoke-direct {v1, p0, v0}, Lcom/ubix/ssp/ad/e/h$b;-><init>(Lcom/ubix/ssp/ad/e/h;I)V

    invoke-direct {p0, v1}, Lcom/ubix/ssp/ad/e/h;->a(Lcom/ubix/ssp/ad/e/h$b;)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/h;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v0, p0, Lcom/ubix/ssp/ad/e/h;->t:I

    return-void
.end method

.method private a(Lcom/ubix/ssp/ad/e/h$b;)V
    .locals 4

    .line 4
    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/ubix/ssp/ad/e/h;->j:I

    iget v1, p0, Lcom/ubix/ssp/ad/e/h;->r:I

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/h;->c:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/h$b;->b()I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    if-gez v2, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/h$b;->a()I

    move-result v1

    add-int/2addr v1, v2

    iget v3, p0, Lcom/ubix/ssp/ad/e/h;->j:I

    if-le v1, v3, :cond_2

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/h$b;->a()I

    move-result v1

    sub-int v2, v3, v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/h$b;->a()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/h$b;->b()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v0

    if-le v1, v3, :cond_3

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/h$b;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/h$b;->a()I

    move-result v0

    sub-int v2, v1, v0

    :cond_3
    invoke-static {p1, v2}, Lcom/ubix/ssp/ad/e/h$b;->a(Lcom/ubix/ssp/ad/e/h$b;I)I

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/h$b;->a()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/h$b;->b(Lcom/ubix/ssp/ad/e/h$b;I)I

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/h;->c:Ljava/util/Random;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/16 v1, 0xd

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/h$b;->c(Lcom/ubix/ssp/ad/e/h$b;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/h;Lcom/ubix/ssp/ad/e/h$b;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/h;->b(Lcom/ubix/ssp/ad/e/h$b;)V

    return-void
.end method

.method private a(II)Z
    .locals 9

    .line 6
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/h;->n:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/h;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ubix/ssp/ad/e/h$b;

    new-instance v4, Landroid/graphics/Rect;

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/h$b;->a(Lcom/ubix/ssp/ad/e/h$b;)I

    move-result v5

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/h$b;->b(Lcom/ubix/ssp/ad/e/h$b;)I

    move-result v6

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/h$b;->a(Lcom/ubix/ssp/ad/e/h$b;)I

    move-result v7

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/e/h$b;->a()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/h$b;->b(Lcom/ubix/ssp/ad/e/h$b;)I

    move-result v8

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/e/h$b;->a()I

    move-result v3

    add-int/2addr v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/h;->v:Lcom/ubix/ssp/ad/e/h$c;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/ubix/ssp/ad/e/h$c;->a()V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/h;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ubix/ssp/ad/e/h;->h:I

    return p0
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/h;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/e/h;->k:I

    return p1
.end method

.method private b(Lcom/ubix/ssp/ad/e/h$b;)V
    .locals 4

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ubix/ssp/ad/e/h;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x15e

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/ubix/ssp/ad/e/h;->f:I

    if-lt v0, v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/h;->o:J

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/h$b;->c(Lcom/ubix/ssp/ad/e/h$b;)I

    move-result v0

    iget v1, p0, Lcom/ubix/ssp/ad/e/h;->t:I

    if-ne v1, v0, :cond_1

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/h;->getRandomStage()I

    move-result v0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/e/h$b;->a(I)V

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/h;->a(Lcom/ubix/ssp/ad/e/h$b;)V

    iput v0, p0, Lcom/ubix/ssp/ad/e/h;->t:I

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/e/h;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ubix/ssp/ad/e/h;->l:I

    return p1
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/e/h;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/h;->a()V

    return-void
.end method

.method private c()Z
    .locals 4

    .line 3
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/h;->y:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/ubix/ssp/ad/e/h;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ubix/ssp/ad/e/h;->u:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/ubix/ssp/ad/e/h;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/h;->y:Z

    return v0
.end method

.method public static synthetic d(Lcom/ubix/ssp/ad/e/h;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ubix/ssp/ad/e/h;->w:I

    return p0
.end method

.method private d()V
    .locals 5

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/h;->C:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/h;->C:Landroid/view/WindowManager;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/h;->C:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    :cond_2
    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/h;->j:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/h;->j:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/ubix/ssp/ad/e/h;->k:I

    iget v1, p0, Lcom/ubix/ssp/ad/e/h;->j:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/h;->l:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic e(Lcom/ubix/ssp/ad/e/h;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/e/h;->x:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic f(Lcom/ubix/ssp/ad/e/h;)I
    .locals 0

    iget p0, p0, Lcom/ubix/ssp/ad/e/h;->r:I

    return p0
.end method

.method public static synthetic g(Lcom/ubix/ssp/ad/e/h;)Ljava/util/Random;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/e/h;->c:Ljava/util/Random;

    return-object p0
.end method

.method private getRandomStage()I
    .locals 3

    iget v0, p0, Lcom/ubix/ssp/ad/e/h;->t:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/h;->q:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    :cond_0
    iget v0, p0, Lcom/ubix/ssp/ad/e/h;->s:I

    iget v1, p0, Lcom/ubix/ssp/ad/e/h;->r:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/e/h;->s:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/h;->q:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/h;->q:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ubix/ssp/ad/e/h;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ubix/ssp/ad/e/h;->s:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static synthetic h(Lcom/ubix/ssp/ad/e/h;)I
    .locals 0

    iget p0, p0, Lcom/ubix/ssp/ad/e/h;->j:I

    return p0
.end method

.method public static synthetic i(Lcom/ubix/ssp/ad/e/h;)I
    .locals 0

    iget p0, p0, Lcom/ubix/ssp/ad/e/h;->k:I

    return p0
.end method

.method public static synthetic j(Lcom/ubix/ssp/ad/e/h;)I
    .locals 0

    iget p0, p0, Lcom/ubix/ssp/ad/e/h;->l:I

    return p0
.end method

.method public static synthetic k(Lcom/ubix/ssp/ad/e/h;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/e/h;->b:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic l(Lcom/ubix/ssp/ad/e/h;)Z
    .locals 0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/h;->c()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/h;->p:Z

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/h;->B:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/h;->B:Landroid/os/HandlerThread;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/ubix/ssp/ad/e/h;->x:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public e()V
    .locals 4

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/h;->u:J

    new-instance v0, Lcom/ubix/ssp/ad/e/h$a;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/h$a;-><init>(Lcom/ubix/ssp/ad/e/h;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/h;->B:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/h;->B:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/h;->x:Landroid/os/Handler;

    iget v2, p0, Lcom/ubix/ssp/ad/e/h;->w:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/h;->p:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/h;->b()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/h;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/h;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ubix/ssp/ad/e/h$b;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/h$b;->e(Lcom/ubix/ssp/ad/e/h$b;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/h;->g:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/h;->g:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/h;->m:Landroid/graphics/Matrix;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/h$b;->d(Lcom/ubix/ssp/ad/e/h$b;)F

    move-result v3

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/h$b;->d(Lcom/ubix/ssp/ad/e/h$b;)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/h;->m:Landroid/graphics/Matrix;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/h$b;->a(Lcom/ubix/ssp/ad/e/h$b;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/h$b;->b(Lcom/ubix/ssp/ad/e/h$b;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/h;->g:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/h;->m:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/h;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/h;->d()V

    iget p1, p0, Lcom/ubix/ssp/ad/e/h;->j:I

    iget p2, p0, Lcom/ubix/ssp/ad/e/h;->k:I

    mul-int v0, p1, p2

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/h;->d()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/h;->n:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/ubix/ssp/ad/e/h;->a(II)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/h;->z:Z

    iget-wide v0, p0, Lcom/ubix/ssp/ad/e/h;->A:J

    const-wide/16 v2, 0x0

    cmp-long p1, v2, v0

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ubix/ssp/ad/e/h;->A:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/ubix/ssp/ad/e/h;->u:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/ubix/ssp/ad/e/h;->u:J

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/h;->z:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/h;->A:J

    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/h;->n:Z

    return-void
.end method

.method public setDuration(I)V
    .locals 4

    if-gtz p1, :cond_0

    return-void

    :cond_0
    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/h;->d:J

    return-void
.end method

.method public setItemClickListener(Lcom/ubix/ssp/ad/e/h$c;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/h;->v:Lcom/ubix/ssp/ad/e/h$c;

    return-void
.end method

.method public setMaxStage(I)V
    .locals 3

    iput p1, p0, Lcom/ubix/ssp/ad/e/h;->r:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/h;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/h;->q:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setResource(I)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ubix/joy_default.webp"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/q;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/h;->g:Ljava/lang/ref/SoftReference;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ubix/joy_double_eleven.webp"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/q;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ubix/joy_six_one_eight.webp"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/q;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/h;->g:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/h;->g:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/h;->h:I

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/h;->g:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/h;->i:I

    :cond_2
    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 2

    .line 2
    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/e/v/a;->c(Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/ubix/ssp/ad/e/v/a;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/h;->g:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/h;->g:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/h;->h:I

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/h;->g:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/h;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
