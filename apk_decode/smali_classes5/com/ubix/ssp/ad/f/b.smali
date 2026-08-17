.class public Lcom/ubix/ssp/ad/f/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/g/g;


# instance fields
.field private a:Lcom/ubix/ssp/ad/g/d;

.field private b:Lcom/ubix/ssp/ad/i/c;

.field private c:Lcom/ubix/ssp/open/AdSize;

.field private d:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/ubix/ssp/ad/f/a;

.field private f:Lcom/ubix/ssp/open/nativee/NativeAd;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/ubix/ssp/open/AdSize;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/ubix/ssp/open/AdSize;-><init>(II)V

    invoke-direct {p0, p1, p2, v0}, Lcom/ubix/ssp/ad/f/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/open/AdSize;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/open/AdSize;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/f/b;->g:Z

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/f/b;->d:Ljava/lang/ref/SoftReference;

    if-nez p3, :cond_0

    new-instance p3, Lcom/ubix/ssp/open/AdSize;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p3, v0, v1}, Lcom/ubix/ssp/open/AdSize;-><init>(II)V

    :cond_0
    iput-object p3, p0, Lcom/ubix/ssp/ad/f/b;->c:Lcom/ubix/ssp/open/AdSize;

    new-instance p3, Lcom/ubix/ssp/ad/i/c;

    invoke-direct {p3, p1, p2, p0}, Lcom/ubix/ssp/ad/i/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/ad/g/g;)V

    iput-object p3, p0, Lcom/ubix/ssp/ad/f/b;->b:Lcom/ubix/ssp/ad/i/c;

    const/4 p1, 0x3

    invoke-virtual {p3, p1}, Lcom/ubix/ssp/ad/i/c;->q(I)V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/f/b;)Lcom/ubix/ssp/ad/g/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/f/b;->a:Lcom/ubix/ssp/ad/g/d;

    return-object p0
.end method

.method private a(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/f/b;Lcom/ubix/ssp/open/AdError;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/f/b;->a(Lcom/ubix/ssp/open/AdError;)V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/f/b;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/f/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/ubix/ssp/open/AdError;)V
    .locals 1

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/f/b;->g:Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/f/b;->b:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/i/c;->c(Lcom/ubix/ssp/open/AdError;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/f/b;->b:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/i/c;->e(Lcom/ubix/ssp/open/AdError;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/f/b;->b:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/i/c;->w()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/f/b;->b:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/i/c;->D()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/f/b;->b:Lcom/ubix/ssp/ad/i/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/i/c;->n(I)Lcom/ubix/ssp/ad/d/a;

    move-result-object v3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v1, "IMAGE_URL"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/f/b;->c:Lcom/ubix/ssp/open/AdSize;

    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdSize;->getWidth()I

    move-result p1

    const-string v1, "AD_WIDTH"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/f/b;->c:Lcom/ubix/ssp/open/AdSize;

    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdSize;->getHeight()I

    move-result p1

    const-string v1, "AD_HEIGHT"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget p1, v3, Lcom/ubix/ssp/ad/d/a;->p:I

    const-string v1, "TEMPLATE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, v3, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->t:Ljava/lang/String;

    const-string v1, "AD_SOURCE"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, v3, Lcom/ubix/ssp/ad/d/a;->v:Z

    const-string v1, "IS_UNNAMED"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/f/b;->d:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v1, 0x3

    const/4 v8, 0x1

    invoke-static {p1, v0, v1, v8}, Lcom/ubix/ssp/ad/b;->a(Landroid/content/Context;Landroid/os/Bundle;IZ)Lcom/ubix/ssp/ad/b;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/f/a;

    iput-object p1, p0, Lcom/ubix/ssp/ad/f/b;->e:Lcom/ubix/ssp/ad/f/a;

    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/f/a;->b(Landroid/os/Bundle;)Z

    iget-object v2, p0, Lcom/ubix/ssp/ad/f/b;->b:Lcom/ubix/ssp/ad/i/c;

    iget-object v4, p0, Lcom/ubix/ssp/ad/f/b;->e:Lcom/ubix/ssp/ad/f/a;

    invoke-direct {p0, v4}, Lcom/ubix/ssp/ad/f/b;->a(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object p1, p0, Lcom/ubix/ssp/ad/f/b;->e:Lcom/ubix/ssp/ad/f/a;

    const v0, 0x927c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/ubix/ssp/ad/f/b$b;

    invoke-direct {v7, p0}, Lcom/ubix/ssp/ad/f/b$b;-><init>(Lcom/ubix/ssp/ad/f/b;)V

    invoke-virtual/range {v2 .. v7}, Lcom/ubix/ssp/ad/i/c;->b(Lcom/ubix/ssp/ad/d/a;Landroid/view/ViewGroup;Ljava/util/List;Landroid/view/View;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V

    iput-boolean v8, p0, Lcom/ubix/ssp/ad/f/b;->g:Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/f/b;->a:Lcom/ubix/ssp/ad/g/d;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ubix/ssp/ad/g/d;->onAdLoadSucceed()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 3
    return-void
.end method

.method public a(J)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/ubix/ssp/ad/f/b;->b:Lcom/ubix/ssp/ad/i/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/i/c;->n(I)Lcom/ubix/ssp/ad/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/f/b;->b:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v1, v0, p1, p2}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;J)V

    :cond_0
    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/g/d;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/ubix/ssp/ad/f/b;->a:Lcom/ubix/ssp/ad/g/d;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/ubix/ssp/ad/f/b;->b:Lcom/ubix/ssp/ad/i/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/i/c;->h(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ubix/ssp/open/nativee/NativeAd;",
            ">;)V"
        }
    .end annotation

    .line 10
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/open/nativee/NativeAd;

    iput-object p1, p0, Lcom/ubix/ssp/ad/f/b;->f:Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/NativeAd;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/f/b;->b:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/i/c;->v()V

    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object v0

    new-instance v1, Lcom/ubix/ssp/ad/f/b$a;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/f/b$a;-><init>(Lcom/ubix/ssp/ad/f/b;)V

    invoke-interface {v0, p1, v1}, Lcom/ubix/ssp/ad/e/v/a;->a(Ljava/lang/String;Lcom/ubix/ssp/ad/e/v/e$b;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/ubix/ssp/ad/f/b;->b:Lcom/ubix/ssp/ad/i/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/i/c;->n(I)Lcom/ubix/ssp/ad/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/f/b;->b:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v1, v0, p1}, Lcom/ubix/ssp/ad/i/c;->c(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/f/b;->b:Lcom/ubix/ssp/ad/i/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/i/c;->B()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/f/b;->e:Lcom/ubix/ssp/ad/f/a;

    return-object v0
.end method

.method public d()Lcom/ubix/ssp/open/ParamsReview;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/f/b;->b:Lcom/ubix/ssp/ad/i/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/i/c;->n(I)Lcom/ubix/ssp/ad/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/f/b;->b:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/i/c;->o(Lcom/ubix/ssp/ad/d/a;)Lcom/ubix/ssp/open/ParamsReview;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()J
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/f/b;->f:Lcom/ubix/ssp/open/nativee/NativeAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/NativeAd;->getPrice()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public f()Z
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/f/b;->b:Lcom/ubix/ssp/ad/i/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/ubix/ssp/ad/f/b;->g:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/i/c;->n(I)Lcom/ubix/ssp/ad/d/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ubix/ssp/ad/i/c;->s(Lcom/ubix/ssp/ad/d/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/f/b;->b:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/i/c;->C()V

    return-void
.end method

.method public onAdLoadFailed(Lcom/ubix/ssp/open/AdError;)V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/f/b;->a:Lcom/ubix/ssp/ad/g/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/g/d;->onAdLoadFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    return-void
.end method
