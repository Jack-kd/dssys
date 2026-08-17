.class public abstract Lcom/ubix/ssp/ad/b;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/b$e;
    }
.end annotation


# instance fields
.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected b:I

.field protected c:Z

.field protected d:Z

.field protected e:Z

.field protected f:Lcom/ubix/ssp/ad/e/a0/s;

.field protected g:D

.field protected h:D

.field protected i:I

.field private j:Landroid/animation/ValueAnimator;

.field protected k:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/b;->d:Z

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/b;->e:Z

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/b;->g:D

    iput-wide v0, p0, Lcom/ubix/ssp/ad/b;->h:D

    const/4 p1, 0x5

    iput p1, p0, Lcom/ubix/ssp/ad/b;->i:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/ubix/ssp/ad/b;->k:F

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/b;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ubix/ssp/ad/b;->j:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;IZ)Lcom/ubix/ssp/ad/b;
    .locals 1

    .line 2
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2, p3}, Lcom/ubix/ssp/ad/b;->a(IZ)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_0

    const-class p3, Landroid/content/Context;

    filled-new-array {p3}, [Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ubix/ssp/ad/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p2, p0, p1}, Lcom/ubix/ssp/ad/b;->a(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p2

    :catchall_0
    move-exception p0

    move-object v0, p2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_0

    :cond_0
    return-object v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private static a(IZ)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ubix/ssp/ad/b;",
            ">;"
        }
    .end annotation

    .line 3
    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_4

    const/4 p1, 0x4

    if-eq p0, p1, :cond_2

    const/4 p1, 0x6

    if-eq p0, p1, :cond_1

    const/16 p1, 0x9

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-class p0, Lcom/ubix/ssp/ad/k/a;

    return-object p0

    :cond_1
    const-class p0, Lcom/ubix/ssp/ad/h/a;

    return-object p0

    :cond_2
    const-class p0, Lcom/ubix/ssp/ad/c/a;

    return-object p0

    :cond_3
    if-eqz p1, :cond_4

    const-class p0, Lcom/ubix/ssp/ad/i/a;

    return-object p0

    :cond_4
    const-class p0, Lcom/ubix/ssp/ad/f/a;

    return-object p0

    :cond_5
    const-class p0, Lcom/ubix/ssp/ad/j/a;

    return-object p0
.end method

.method private p()V
    .locals 10

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x140

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v3, 0x64

    add-int/2addr v1, v3

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v5, 0x280

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v4, v3

    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    invoke-virtual {v6, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v3

    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    invoke-virtual {v6, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "__DOWN_X__"

    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "__DOWN_Y__"

    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v7, "__RAW_DOWN_X__"

    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v7, "__RAW_DOWN_Y__"

    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v7, "__UP_X__"

    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    invoke-virtual {v9, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    add-int/2addr v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v7, "__UP_Y__"

    :try_start_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    invoke-virtual {v9, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v7, "__WIDTH__"

    :try_start_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v7, "__HEIGHT__"

    :try_start_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string v7, "__RAW_UP_X__"

    :try_start_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    invoke-virtual {v9, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    add-int/2addr v2, v9

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string v6, "__RAW_UP_Y__"

    :try_start_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    invoke-virtual {v8, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v5, v3

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string v2, "__CLICK_XY__"

    :try_start_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public a(IDI)V
    .locals 2

    .line 4
    iput p4, p0, Lcom/ubix/ssp/ad/b;->i:I

    iput-wide p2, p0, Lcom/ubix/ssp/ad/b;->g:D

    new-instance p2, Lcom/ubix/ssp/ad/e/e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/ubix/ssp/ad/e/e;-><init>(Landroid/content/Context;)V

    const p3, 0xde441

    invoke-virtual {p2, p3}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/b;->r()Landroid/view/ViewGroup;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/b;->r()Landroid/view/ViewGroup;

    move-result-object p4

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-le p3, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p4, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/b;->q()V

    const/16 p3, 0x84

    if-ne p1, p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p2, v0}, Lcom/ubix/ssp/ad/e/e;->a(Z)V

    invoke-virtual {p0, p2}, Lcom/ubix/ssp/ad/b;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(IIIDI[IILjava/lang/String;Ljava/lang/String;IDZZ)V
    .locals 0

    .line 5
    return-void
.end method

.method public a(ILcom/ubix/ssp/ad/b$e;)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->j:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v1, "__CLICK_AREA__"

    const-string v2, "6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x63

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/b;->j:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/ubix/ssp/ad/b;->j:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/b;->j:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/ubix/ssp/ad/b$d;

    invoke-direct {v0, p0, p2}, Lcom/ubix/ssp/ad/b$d;-><init>(Lcom/ubix/ssp/ad/b;Lcom/ubix/ssp/ad/b$e;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/b;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;DI)V
    .locals 0

    .line 7
    iput-wide p4, p0, Lcom/ubix/ssp/ad/b;->h:D

    iput p6, p0, Lcom/ubix/ssp/ad/b;->i:I

    new-instance p1, Lcom/ubix/ssp/ad/e/r;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p1, p4}, Lcom/ubix/ssp/ad/e/r;-><init>(Landroid/content/Context;)V

    const p4, 0xde4a5

    invoke-virtual {p1, p4}, Landroid/view/View;->setId(I)V

    invoke-virtual {p1, p2, p3}, Lcom/ubix/ssp/ad/e/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/b;->r()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/b;->r()Landroid/view/ViewGroup;

    move-result-object p3

    const/4 p4, 0x2

    if-le p2, p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p3, p1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/b;->q()V

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/r;->b()V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 8
    :try_start_0
    new-instance v0, Lcom/ubix/ssp/ad/e/c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Lcom/ubix/ssp/ad/e/c;-><init>(Landroid/content/Context;Z)V

    const v1, 0xde3dd

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "\u70b9\u51fb\u6b64\u5904"

    if-nez v1, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    and-int/lit8 v3, p1, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v3, v4, :cond_3

    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_2

    if-eqz p4, :cond_1

    const-string v1, "\u6447\u52a8\u624b\u673a"

    goto :goto_1

    :cond_1
    const-string v1, "\u6447\u52a8\u6216\u70b9\u51fb"

    :cond_2
    :goto_1
    move v3, v5

    goto :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_7

    :cond_3
    const/4 v3, 0x1

    :goto_2
    and-int/lit8 v4, p1, 0x4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_6

    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v3, :cond_5

    if-eqz p4, :cond_4

    const-string v1, "\u5411\u4e0a\u6ed1\u52a8"

    goto :goto_3

    :cond_4
    const-string v1, "\u4e0a\u6ed1\u6216\u70b9\u51fb"

    :cond_5
    :goto_3
    move v3, v5

    :cond_6
    and-int/lit8 v4, p1, 0x20

    const/16 v6, 0x20

    if-ne v4, v6, :cond_9

    :try_start_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v3, :cond_8

    const/16 v1, 0x24

    if-ne p1, v1, :cond_7

    const-string v1, "\u6ed1\u52a8\u6216\u70b9\u51fb"

    goto :goto_4

    :cond_7
    const-string v1, "\u6ed1\u52a8"

    :cond_8
    :goto_4
    move v3, v5

    :cond_9
    and-int/lit16 v4, p1, 0x80

    const/16 v6, 0x80

    if-ne v4, v6, :cond_c

    :try_start_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz p2, :cond_a

    const/16 p2, 0x84

    if-ne p1, p2, :cond_b

    const-string v2, "\u5411\u4e0a\u6ed1\u52a8\u6216\u70b9\u51fb"

    goto :goto_5

    :cond_a
    move-object v2, v1

    :cond_b
    :goto_5
    move-object v1, v2

    move v3, v5

    :cond_c
    :try_start_5
    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/c;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/ubix/ssp/ad/e/c;->setSubTitle(Ljava/lang/String;)V

    if-nez p4, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "#99000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/16 p3, 0x120

    const/4 p4, -0x1

    invoke-static {p1, p2, p3, p4}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/c;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/b;->a(Landroid/view/View;)V

    goto :goto_6

    :cond_d
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_6
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/b;->r()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v3}, Lcom/ubix/ssp/ad/e/c;->setNeedWave(Z)V

    new-instance p1, Lcom/ubix/ssp/ad/b$b;

    invoke-direct {p1, p0, v0}, Lcom/ubix/ssp/ad/b$b;-><init>(Lcom/ubix/ssp/ad/b;Lcom/ubix/ssp/ad/e/c;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-void

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;ZDI)V
    .locals 0

    .line 9
    iput-wide p5, p0, Lcom/ubix/ssp/ad/b;->g:D

    iput p7, p0, Lcom/ubix/ssp/ad/b;->i:I

    new-instance p5, Lcom/ubix/ssp/ad/e/d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-direct {p5, p6, p4}, Lcom/ubix/ssp/ad/e/d;-><init>(Landroid/content/Context;Z)V

    const/16 p4, 0x44

    const/4 p6, 0x0

    if-ne p1, p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p6

    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    if-eqz p1, :cond_2

    const-string p2, "\u5411\u4e0a\u6ed1\u52a8\u6216\u70b9\u51fb"

    :cond_1
    :goto_1
    invoke-virtual {p5, p2}, Lcom/ubix/ssp/ad/e/d;->setTitle(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p2, "\u70b9\u51fb\u6b64\u5904"

    goto :goto_1

    :goto_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p5, p3}, Lcom/ubix/ssp/ad/e/d;->setSubTitle(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p5, p1}, Lcom/ubix/ssp/ad/e/d;->a(Z)V

    const p1, 0xde56d

    invoke-virtual {p5, p1}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/b;->r()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/b;->r()Landroid/view/ViewGroup;

    move-result-object p2

    const/4 p3, 0x2

    if-le p1, p3, :cond_4

    move p6, p3

    :cond_4
    invoke-virtual {p2, p5, p6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/b;->q()V

    return-void
.end method

.method public a(IZDI)V
    .locals 0

    .line 10
    iput-wide p3, p0, Lcom/ubix/ssp/ad/b;->h:D

    iput-wide p3, p0, Lcom/ubix/ssp/ad/b;->g:D

    iput p5, p0, Lcom/ubix/ssp/ad/b;->i:I

    new-instance p1, Lcom/ubix/ssp/ad/e/o;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Lcom/ubix/ssp/ad/e/o;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/o;->a()V

    const p2, 0xde509

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/b;->r()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/b;->q()V

    return-void
.end method

.method public abstract a(Landroid/content/Context;Landroid/os/Bundle;)V
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    .line 11
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 5

    .line 12
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "__DOWN_X__"

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "__DOWN_Y__"

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "__RAW_DOWN_X__"

    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v1, "__RAW_DOWN_Y__"

    goto/16 :goto_0

    :cond_0
    :try_start_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v2, "__UP_X__"

    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v2, "__UP_Y__"

    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v2, "__WIDTH__"

    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string v2, "__HEIGHT__"

    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string v2, "__RAW_UP_X__"

    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string v2, "__RAW_UP_Y__"

    :try_start_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const-string v1, "__CLICK_XY__"

    :goto_0
    :try_start_c
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .line 13
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;ZIZD[IIIDZZ)V
    .locals 16

    .line 14
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-wide/from16 v12, p11

    move/from16 v14, p13

    move/from16 v15, p14

    invoke-virtual/range {v0 .. v15}, Lcom/ubix/ssp/ad/b;->a(Landroid/view/ViewGroup;Landroid/view/View;ZIZZD[IIIDZZ)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;ZIZZD[IIIDZZ)V
    .locals 12

    .line 15
    const/4 v0, 0x1

    const/4 v1, 0x0

    move/from16 v2, p4

    if-ne v2, v0, :cond_0

    :try_start_0
    new-instance v2, Lcom/ubix/ssp/ad/e/a0/s;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    move/from16 v7, p11

    move-wide/from16 v8, p12

    move/from16 v10, p14

    move/from16 v11, p15

    invoke-direct/range {v2 .. v11}, Lcom/ubix/ssp/ad/e/a0/s;-><init>(Landroid/content/Context;D[IIDZZ)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_0
    new-instance v2, Lcom/ubix/ssp/ad/e/a0/s;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    aget v6, p9, v1

    move-wide/from16 v4, p7

    move-wide/from16 v7, p12

    invoke-direct/range {v2 .. v8}, Lcom/ubix/ssp/ad/e/a0/s;-><init>(Landroid/content/Context;DID)V

    :goto_0
    iput-object v2, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    if-nez p5, :cond_1

    if-nez p3, :cond_1

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    new-instance p1, Lcom/ubix/ssp/ad/b$c;

    invoke-direct {p1, p0, p2}, Lcom/ubix/ssp/ad/b$c;-><init>(Lcom/ubix/ssp/ad/b;Landroid/view/View;)V

    move/from16 v0, p10

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    if-nez p6, :cond_3

    const p1, 0xde315

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/s;->a(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/b;->setShakeSensor(Landroid/view/View;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 18
    return-void
.end method

.method public a(ZIIIZZD[IIIDZZ)V
    .locals 16

    .line 19
    :try_start_0
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v0, 0xde314

    invoke-virtual {v3, v0}, Landroid/view/View;->setId(I)V

    new-instance v4, Lcom/ubix/ssp/ad/e/k;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    move/from16 v6, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v4 .. v9}, Lcom/ubix/ssp/ad/e/k;-><init>(Landroid/content/Context;IIZZ)V

    const v0, 0xde318

    invoke-virtual {v4, v0}, Landroid/view/View;->setId(I)V

    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x11

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-direct {v0, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v2

    invoke-virtual/range {p0 .. p0}, Lcom/ubix/ssp/ad/b;->r()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    move-object/from16 v1, p0

    move/from16 v4, p1

    move/from16 v5, p3

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-wide/from16 v12, p12

    move/from16 v14, p14

    move/from16 v15, p15

    move v6, v0

    invoke-virtual/range {v1 .. v15}, Lcom/ubix/ssp/ad/b;->a(Landroid/view/ViewGroup;Landroid/view/View;ZIZD[IIIDZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(ZZDI)V
    .locals 0

    .line 20
    :try_start_0
    iput p5, p0, Lcom/ubix/ssp/ad/b;->i:I

    iput-wide p3, p0, Lcom/ubix/ssp/ad/b;->g:D

    new-instance p3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const p4, 0xde378

    invoke-virtual {p3, p4}, Landroid/view/View;->setId(I)V

    new-instance p4, Lcom/ubix/ssp/ad/e/n;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-direct {p4, p5, p1, p2}, Lcom/ubix/ssp/ad/e/n;-><init>(Landroid/content/Context;ZZ)V

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/b;->r()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(ILandroid/view/MotionEvent;)Z
    .locals 16

    .line 21
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_10

    iget-wide v5, v0, Lcom/ubix/ssp/ad/b;->g:D

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    cmpl-double v2, v5, v7

    if-nez v2, :cond_0

    iget-wide v5, v0, Lcom/ubix/ssp/ad/b;->h:D

    cmpl-double v2, v5, v7

    if-eqz v2, :cond_10

    :cond_0
    invoke-virtual {v0}, Lcom/ubix/ssp/ad/b;->n()Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    :cond_1
    iget-object v2, v0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v5, "__DOWN_X__"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, v0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v6, "__DOWN_Y__"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/16 v9, 0x8

    const/4 v10, 0x4

    const/4 v11, 0x0

    if-nez v6, :cond_4

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v2, v6

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/ubix/ssp/ad/e/a0/r;->h(Landroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    div-float v6, v2, v6

    iget-wide v12, v0, Lcom/ubix/ssp/ad/b;->h:D

    cmpl-double v12, v12, v7

    if-eqz v12, :cond_3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v12

    float-to-double v12, v12

    iget-wide v14, v0, Lcom/ubix/ssp/ad/b;->h:D

    cmpl-double v12, v12, v14

    if-lez v12, :cond_3

    cmpg-float v12, v2, v11

    if-gez v12, :cond_2

    move v12, v9

    goto :goto_0

    :cond_2
    cmpl-float v12, v2, v11

    if-lez v12, :cond_3

    move v12, v10

    goto :goto_0

    :cond_3
    move v12, v3

    goto :goto_0

    :cond_4
    move v12, v3

    move v2, v11

    move v6, v2

    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    sub-float/2addr v5, v13

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v13

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/ubix/ssp/ad/e/a0/r;->c(Landroid/content/Context;)I

    move-result v13

    int-to-float v13, v13

    div-float v13, v5, v13

    iget-wide v14, v0, Lcom/ubix/ssp/ad/b;->g:D

    cmpl-double v7, v14, v7

    if-eqz v7, :cond_7

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v7, v7

    iget-wide v14, v0, Lcom/ubix/ssp/ad/b;->g:D

    cmpl-double v7, v7, v14

    if-lez v7, :cond_7

    cmpg-float v7, v5, v11

    if-gez v7, :cond_5

    add-int/lit8 v12, v12, 0x2

    goto :goto_1

    :cond_5
    cmpl-float v7, v5, v11

    if-lez v7, :cond_7

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_6
    move v5, v11

    move v13, v5

    :cond_7
    :goto_1
    const/16 v7, 0x10

    if-eq v1, v7, :cond_e

    const/16 v7, 0x20

    if-eq v1, v7, :cond_8

    const/16 v7, 0x21

    if-eq v1, v7, :cond_8

    cmpl-float v1, v5, v11

    if-lez v1, :cond_10

    and-int/lit8 v1, v12, 0x1

    if-ne v1, v4, :cond_10

    div-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    iget v5, v0, Lcom/ubix/ssp/ad/b;->i:I

    int-to-double v7, v5

    cmpg-double v1, v1, v7

    if-gtz v1, :cond_10

    goto :goto_4

    :cond_8
    and-int/lit8 v1, v12, 0x4

    if-eq v1, v10, :cond_a

    and-int/lit8 v1, v12, 0x8

    if-ne v1, v9, :cond_9

    goto :goto_2

    :cond_9
    const-wide v7, 0x4076800000000000L    # 360.0

    goto :goto_3

    :cond_a
    :goto_2
    div-float v1, v5, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    :goto_3
    iget v1, v0, Lcom/ubix/ssp/ad/b;->i:I

    int-to-double v9, v1

    cmpg-double v1, v7, v9

    if-gtz v1, :cond_b

    goto :goto_4

    :cond_b
    and-int/lit8 v1, v12, 0x1

    if-eq v1, v4, :cond_c

    const/4 v1, 0x2

    and-int/lit8 v9, v12, 0x2

    if-ne v9, v1, :cond_d

    :cond_c
    div-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    :cond_d
    iget v1, v0, Lcom/ubix/ssp/ad/b;->i:I

    int-to-double v1, v1

    cmpg-double v1, v7, v1

    if-gtz v1, :cond_10

    goto :goto_4

    :cond_e
    cmpl-float v1, v2, v11

    if-lez v1, :cond_10

    and-int/lit8 v1, v12, 0x4

    if-ne v1, v10, :cond_10

    div-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    iget v5, v0, Lcom/ubix/ssp/ad/b;->i:I

    int-to-double v7, v5

    cmpg-double v1, v1, v7

    if-gtz v1, :cond_10

    :goto_4
    iget-wide v1, v0, Lcom/ubix/ssp/ad/b;->g:D

    const-wide/16 v7, 0x0

    cmpg-double v1, v1, v7

    if-gez v1, :cond_f

    goto :goto_5

    :cond_f
    move v6, v13

    :goto_5
    iput v6, v0, Lcom/ubix/ssp/ad/b;->k:F

    return v4

    :cond_10
    return v3
.end method

.method public a(Lcom/ubix/ssp/ad/d/l$a;)Z
    .locals 4

    .line 22
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/b;->r()Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    new-instance v2, Lcom/ubix/ssp/ad/e/h;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ubix/ssp/ad/e/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l$a;->f()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ubix/ssp/ad/e/h;->setClickable(Z)V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/ubix/ssp/ad/e/h;->setMaxStage(I)V

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l$a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ubix/ssp/ad/e/h;->setDuration(I)V

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l$a;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l$a;->c()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/ubix/ssp/ad/e/h;->setResource(I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l$a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l$a;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ubix/ssp/ad/e/h;->setResource(Ljava/lang/String;)V

    :goto_0
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {p1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/b;->q()V

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/h;->e()V

    new-instance p1, Lcom/ubix/ssp/ad/b$a;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/b$a;-><init>(Lcom/ubix/ssp/ad/b;)V

    invoke-virtual {v2, p1}, Lcom/ubix/ssp/ad/e/h;->setItemClickListener(Lcom/ubix/ssp/ad/e/h$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public b(IDI)V
    .locals 6

    .line 1
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ubix/ssp/ad/b;->a(IZDI)V

    return-void
.end method

.method public abstract b(Landroid/os/Bundle;)Z
.end method

.method public c(II)V
    .locals 0

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/b;->a(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getClickMap()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v1, "__DOWN_X__"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/b;->p()V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public abstract getInterface()Lcom/ubix/ssp/ad/g/k/b;
.end method

.method public h()Landroid/view/View;
    .locals 6

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v1

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v1

    const/high16 v3, 0x41b80000    # 23.0f

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, -0x80000000

    const/16 v5, 0x48

    invoke-static {v3, v4, v5}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v2, "\u53cd\u9988"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0xe0aed

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public i()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->j:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/b;->j:Landroid/animation/ValueAnimator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/b;->c:Z

    return-void
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/b;->c:Z

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/b;->d:Z

    return v0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/b;->c:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/b;->a(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/b;->j:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/b;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->pause()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/b;->j:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/Animator;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/b;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->resume()V

    :cond_1
    return-void
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public r()Landroid/view/ViewGroup;
    .locals 0

    return-object p0
.end method

.method public abstract setInnerListener(Lcom/ubix/ssp/ad/g/k/b;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/ubix/ssp/ad/g/k/b;",
            ">(TT;)V"
        }
    .end annotation
.end method

.method public setShakeSensor(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setShakeTrigger(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/b;->d:Z

    return-void
.end method

.method public setShowCloseBtnDelay(I)V
    .locals 0

    return-void
.end method

.method public setSlideTrigger(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/b;->e:Z

    return-void
.end method
