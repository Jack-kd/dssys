.class public Lcom/octopus/ad/internal/e/f;
.super Lcom/octopus/ad/internal/e/a;
.source "SourceFile"


# static fields
.field public static t:Lcom/octopus/ad/internal/e/f;


# instance fields
.field private final A:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/octopus/ad/internal/e/e;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lcom/octopus/ad/AdActivity$a;

.field protected u:Z

.field protected v:Z

.field private w:I

.field private x:I

.field private y:Z

.field private final z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/octopus/ad/internal/p;ZLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p4}, Lcom/octopus/ad/internal/e/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/octopus/ad/internal/e/f;->w:I

    .line 6
    .line 7
    const/16 v0, 0x2710

    .line 8
    .line 9
    iput v0, p0, Lcom/octopus/ad/internal/e/f;->x:I

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/octopus/ad/internal/e/f;->A:Ljava/util/Queue;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/octopus/ad/internal/e/f;->B:Lcom/octopus/ad/AdActivity$a;

    .line 20
    .line 21
    iput-boolean p1, p0, Lcom/octopus/ad/internal/e/f;->u:Z

    .line 22
    .line 23
    iput-boolean p1, p0, Lcom/octopus/ad/internal/e/f;->v:Z

    .line 24
    .line 25
    iput-object p2, p0, Lcom/octopus/ad/internal/e/a;->f:Lcom/octopus/ad/internal/p;

    .line 26
    .line 27
    iput-boolean p3, p0, Lcom/octopus/ad/internal/e/a;->g:Z

    .line 28
    .line 29
    iput-object p4, p0, Lcom/octopus/ad/internal/e/f;->z:Ljava/lang/String;

    .line 30
    .line 31
    iget-object p4, p0, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    .line 32
    .line 33
    invoke-virtual {p4, p2}, Lcom/octopus/ad/internal/d;->a(Lcom/octopus/ad/internal/p;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->d()Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    const/high16 p1, -0x1000000

    .line 43
    .line 44
    iput p1, p0, Lcom/octopus/ad/internal/e/f;->w:I

    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    if-eqz p3, :cond_1

    .line 48
    .line 49
    iput p1, p0, Lcom/octopus/ad/internal/e/f;->w:I

    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    const/16 p2, 0x8

    .line 53
    .line 54
    invoke-static {p2, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iput p1, p0, Lcom/octopus/ad/internal/e/f;->w:I

    .line 59
    .line 60
    return-void
.end method

.method private a(J)Z
    .locals 8

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    iget-object v1, p0, Lcom/octopus/ad/internal/e/f;->A:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/octopus/ad/internal/e/e;

    if-eqz v2, :cond_1

    .line 37
    invoke-interface {v2}, Lcom/octopus/ad/internal/e/e;->a()J

    move-result-wide v4

    sub-long v4, p1, v4

    sget-wide v6, Lcom/octopus/ad/internal/q;->y:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    invoke-interface {v2}, Lcom/octopus/ad/internal/e/e;->a()J

    move-result-wide v4

    sub-long v4, p1, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    invoke-interface {v2}, Lcom/octopus/ad/internal/e/e;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_2

    .line 38
    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move p1, v3

    .line 39
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_3
    if-ge v3, p2, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    check-cast v1, Lcom/octopus/ad/internal/e/e;

    .line 40
    iget-object v2, p0, Lcom/octopus/ad/internal/e/f;->A:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    return p1
.end method

.method private b(Lcom/octopus/ad/internal/e/c;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/octopus/ad/internal/e/c;->j()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_1
    :goto_0
    sget-object p1, Lcom/octopus/ad/internal/c/f;->a:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "Loaded an ad with an invalid displayable"

    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/octopus/ad/internal/c/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 41
    :cond_0
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->o:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->n:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->r:Z

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->p:Z

    .line 43
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->s:Landroid/content/Context;

    return-void

    .line 44
    :cond_3
    sget-object v0, Lcom/octopus/ad/internal/c/f;->c:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->show_int:I

    invoke-static {v1}, Lcom/octopus/ad/internal/c/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 46
    invoke-direct {p0, v0, v1}, Lcom/octopus/ad/internal/e/f;->a(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 47
    iget-boolean v2, p0, Lcom/octopus/ad/internal/e/f;->u:Z

    if-nez v2, :cond_4

    .line 48
    invoke-static {}, Lcom/octopus/ad/AdActivity;->a()Ljava/lang/Class;

    move-result-object v2

    .line 49
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 50
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    const-string v2, "ACTIVITY_TYPE"

    const-string v4, "INTERSTITIAL"

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v2, "TIME"

    invoke-virtual {v3, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 53
    const-string v0, "CLOSE_BUTTON_DELAY"

    iget v1, p0, Lcom/octopus/ad/internal/e/f;->x:I

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    sput-object p0, Lcom/octopus/ad/internal/e/f;->t:Lcom/octopus/ad/internal/e/f;

    .line 55
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x0

    .line 56
    sput-object p1, Lcom/octopus/ad/internal/e/f;->t:Lcom/octopus/ad/internal/e/f;

    return-void

    .line 57
    :cond_4
    sget-object p1, Lcom/octopus/ad/internal/c/f;->a:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->empty_queue:I

    invoke-static {v0}, Lcom/octopus/ad/internal/c/f;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/c/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    const-string v0, "An Exception Caught"

    const-string v1, "OctopusAd"

    invoke-super {p0, p1, p2}, Lcom/octopus/ad/internal/e/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    :try_start_0
    iget-object p2, p0, Lcom/octopus/ad/internal/e/a;->e:Lcom/octopus/ad/internal/c;

    iget-object v2, p0, Lcom/octopus/ad/internal/e/f;->z:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {p2, v3, v2}, Lcom/octopus/ad/internal/c;->a(ILjava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/octopus/ad/internal/c/b;->b(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 4
    iget v2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 5
    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    check-cast p1, Landroid/app/Activity;

    .line 7
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v3, 0x1020002

    invoke-virtual {p1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sub-int/2addr v2, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    :try_start_2
    invoke-static {v1, v0, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :goto_0
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object p1

    int-to-float v2, v2

    .line 12
    invoke-virtual {p1}, Lcom/octopus/ad/internal/q;->q()F

    move-result v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float p2, p2

    .line 13
    invoke-virtual {p1}, Lcom/octopus/ad/internal/q;->p()F

    move-result p1

    div-float/2addr p2, p1

    add-float/2addr p2, v3

    float-to-int p1, p2

    .line 14
    iget-object p2, p0, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    invoke-virtual {p2, p1}, Lcom/octopus/ad/internal/d;->b(I)V

    .line 15
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    invoke-virtual {p1, v2}, Lcom/octopus/ad/internal/d;->c(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 16
    invoke-static {v1, v0, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public a(Lcom/octopus/ad/internal/b/a$a;)Z
    .locals 2

    .line 17
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->h()V

    .line 18
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->getAdParameters()Lcom/octopus/ad/internal/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/d;->a(Z)V

    .line 19
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->d:Lcom/octopus/ad/internal/b/a$a;

    .line 20
    sget-object p1, Lcom/octopus/ad/internal/c/f;->c:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->load_ad_int:I

    invoke-static {v0}, Lcom/octopus/ad/internal/c/f;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->a()Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->e:Lcom/octopus/ad/internal/c;

    if-eqz p1, :cond_1

    .line 23
    invoke-virtual {p1}, Lcom/octopus/ad/internal/c;->a()V

    .line 24
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->e:Lcom/octopus/ad/internal/c;

    iget-object v0, p0, Lcom/octopus/ad/internal/e/f;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/octopus/ad/internal/c;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 25
    iput p1, p0, Lcom/octopus/ad/internal/e/a;->h:I

    .line 26
    iput v1, p0, Lcom/octopus/ad/internal/e/a;->i:I

    return p1

    :cond_1
    return v1
.end method

.method public a(Lcom/octopus/ad/internal/e/c;)Z
    .locals 5

    .line 27
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/e/f;->b(Lcom/octopus/ad/internal/e/c;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const p1, 0x138e6

    .line 28
    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/e/a;->b(I)V

    return v1

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->b:Lcom/octopus/ad/internal/e/c;

    if-eqz v0, :cond_1

    .line 30
    invoke-interface {v0}, Lcom/octopus/ad/internal/e/c;->k()V

    .line 31
    :cond_1
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/f;->u:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/f;->v:Z

    if-nez v0, :cond_2

    .line 32
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->b:Lcom/octopus/ad/internal/e/c;

    .line 33
    iget-object v0, p0, Lcom/octopus/ad/internal/e/f;->A:Ljava/util/Queue;

    new-instance v2, Lcom/octopus/ad/internal/e/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, p1, v3, v1}, Lcom/octopus/ad/internal/e/d;-><init>(Lcom/octopus/ad/internal/e/c;Ljava/lang/Long;Z)V

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 34
    invoke-interface {p1}, Lcom/octopus/ad/internal/e/c;->k()V

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public cancel()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/octopus/ad/internal/e/a;->cancel()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/octopus/ad/internal/e/f;->t:Lcom/octopus/ad/internal/e/f;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/octopus/ad/internal/e/f;->A:Ljava/util/Queue;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/octopus/ad/internal/e/a;->destroy()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/octopus/ad/internal/c/f;->c:Ljava/lang/String;

    .line 5
    .line 6
    sget v1, Lcom/octopus/ad/R$string;->destroy_int:I

    .line 7
    .line 8
    invoke-static {v1}, Lcom/octopus/ad/internal/c/f;->a(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->e:Lcom/octopus/ad/internal/c;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/octopus/ad/internal/c;->a()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/f;->A:Ljava/util/Queue;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/octopus/ad/internal/e/f;->t:Lcom/octopus/ad/internal/e/f;

    .line 29
    .line 30
    return-void
.end method

.method public getAdImplementation()Lcom/octopus/ad/AdActivity$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/f;->B:Lcom/octopus/ad/AdActivity$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/octopus/ad/internal/e/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/f;->A:Ljava/util/Queue;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 2

    .line 1
    sget-object v0, Lcom/octopus/ad/internal/c/f;->c:Ljava/lang/String;

    .line 2
    .line 3
    sget v1, Lcom/octopus/ad/R$string;->get_bg:I

    .line 4
    .line 5
    invoke-static {v1}, Lcom/octopus/ad/internal/c/f;->a(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lcom/octopus/ad/internal/e/f;->w:I

    .line 13
    .line 14
    return v0
.end method

.method public getCloseButtonDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/internal/e/f;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public getMediaType()Lcom/octopus/ad/internal/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->f:Lcom/octopus/ad/internal/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateLifeCycle()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/octopus/ad/internal/e/a;->onCreateLifeCycle()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDestroyLifeCycle()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/octopus/ad/internal/e/a;->onDestroyLifeCycle()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method public onPauseLifeCycle()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/octopus/ad/internal/e/a;->onPauseLifeCycle()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onRestartLifeCycle()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/octopus/ad/internal/e/a;->onRestartLifeCycle()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onResumeLifeCycle()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/octopus/ad/internal/e/a;->onResumeLifeCycle()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onStartLifeCycle()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/octopus/ad/internal/e/a;->onStartLifeCycle()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onStopLifeCycle()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/octopus/ad/internal/e/a;->onStopLifeCycle()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public r()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/f;->u:Z

    .line 3
    .line 4
    return-void
.end method

.method public setAdImplementation(Lcom/octopus/ad/AdActivity$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/f;->B:Lcom/octopus/ad/AdActivity$a;

    .line 2
    .line 3
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/octopus/ad/internal/c/f;->c:Ljava/lang/String;

    .line 2
    .line 3
    sget v1, Lcom/octopus/ad/R$string;->set_bg:I

    .line 4
    .line 5
    invoke-static {v1}, Lcom/octopus/ad/internal/c/f;->a(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput p1, p0, Lcom/octopus/ad/internal/e/f;->w:I

    .line 13
    .line 14
    return-void
.end method

.method public setCloseButtonDelay(I)V
    .locals 1

    .line 1
    const/16 v0, 0x2710

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lcom/octopus/ad/internal/e/f;->x:I

    .line 8
    .line 9
    return-void
.end method

.method public setDismissOnClick(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/octopus/ad/internal/e/f;->y:Z

    .line 2
    .line 3
    return-void
.end method

.method public t()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/f;->v:Z

    .line 3
    .line 4
    return-void
.end method

.method public u()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/f;->v:Z

    .line 3
    .line 4
    return-void
.end method
