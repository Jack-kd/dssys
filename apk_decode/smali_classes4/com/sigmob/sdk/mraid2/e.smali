.class public Lcom/sigmob/sdk/mraid2/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/mraid2/e$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/FrameLayout;

.field private b:Z

.field private c:Lcom/sigmob/sdk/mraid2/m;

.field private d:Lcom/sigmob/sdk/mraid2/c;

.field private e:Landroid/widget/LinearLayout;

.field private f:Lcom/sigmob/sdk/mraid2/o;

.field private g:Lcom/sigmob/sdk/mraid2/e$a;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/mraid2/c;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/sigmob/sdk/base/common/g;

.field private k:Landroid/view/WindowInsets;

.field private final l:Landroid/os/Handler;

.field private final m:Lcom/sigmob/sdk/mraid2/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid2/e;->b:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sigmob/sdk/mraid2/e;->h:Ljava/util/List;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sigmob/sdk/mraid2/e;->l:Landroid/os/Handler;

    new-instance v2, Lcom/sigmob/sdk/mraid2/e$2;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/mraid2/e$2;-><init>(Lcom/sigmob/sdk/mraid2/e;)V

    iput-object v2, p0, Lcom/sigmob/sdk/mraid2/e;->m:Lcom/sigmob/sdk/mraid2/t;

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sigmob/sdk/mraid2/e;->i:Ljava/util/List;

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sigmob/sdk/mraid2/e;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Lcom/sigmob/sdk/mraid2/e$a;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/mraid2/e$a;-><init>(Lcom/sigmob/sdk/mraid2/e;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid2/e;->g:Lcom/sigmob/sdk/mraid2/e$a;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid2/e$a;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/sigmob/sdk/mraid2/c;

    invoke-direct {v0, p1, p2, v3}, Lcom/sigmob/sdk/mraid2/c;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid2/e;->d:Lcom/sigmob/sdk/mraid2/c;

    new-instance p1, Lcom/sigmob/sdk/mraid2/e$1;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/mraid2/e$1;-><init>(Lcom/sigmob/sdk/mraid2/e;)V

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid2/c;->setLoadListener(Lcom/sigmob/sdk/mraid2/a;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/e;->d:Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {p1, v2}, Lcom/sigmob/sdk/mraid2/c;->setNextWebViewListener(Lcom/sigmob/sdk/mraid2/t;)V

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/e;->d:Lcom/sigmob/sdk/mraid2/c;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/e;->d:Lcom/sigmob/sdk/mraid2/c;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/e;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/e;->e:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method private a(Landroid/content/Context;Lcom/sigmob/sdk/mraid2/c;Lorg/json/JSONObject;)Lcom/sigmob/sdk/mraid2/c;
    .locals 6

    .line 2
    new-instance v0, Lcom/sigmob/sdk/mraid2/c;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid2/e;->i:Ljava/util/List;

    iget-object v3, p0, Lcom/sigmob/sdk/mraid2/e;->a:Landroid/widget/FrameLayout;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/mraid2/c;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/FrameLayout;Lcom/sigmob/sdk/mraid2/c;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/e;->j:Lcom/sigmob/sdk/base/common/g;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid2/c;->setAdSize(Lcom/sigmob/sdk/base/common/g;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/e;->m:Lcom/sigmob/sdk/mraid2/t;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid2/c;->setNextWebViewListener(Lcom/sigmob/sdk/mraid2/t;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/e;Landroid/content/Context;Lcom/sigmob/sdk/mraid2/c;Lorg/json/JSONObject;)Lcom/sigmob/sdk/mraid2/c;
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/mraid2/e;->a(Landroid/content/Context;Lcom/sigmob/sdk/mraid2/c;Lorg/json/JSONObject;)Lcom/sigmob/sdk/mraid2/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/e;)Lcom/sigmob/sdk/mraid2/m;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/sigmob/sdk/mraid2/e;->c:Lcom/sigmob/sdk/mraid2/m;

    return-object p0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/e;Lcom/sigmob/sdk/mraid2/o;)Lcom/sigmob/sdk/mraid2/o;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/e;->f:Lcom/sigmob/sdk/mraid2/o;

    return-object p1
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/e;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid2/e;->b:Z

    return p1
.end method

.method public static synthetic b(Lcom/sigmob/sdk/mraid2/e;)Lcom/sigmob/sdk/mraid2/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/mraid2/e;->d:Lcom/sigmob/sdk/mraid2/c;

    return-object p0
.end method

.method public static synthetic c(Lcom/sigmob/sdk/mraid2/e;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid2/e;->f()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/sigmob/sdk/mraid2/e;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/mraid2/e;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic e(Lcom/sigmob/sdk/mraid2/e;)Landroid/widget/LinearLayout;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/mraid2/e;->e:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private f()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e;->a:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f(Lcom/sigmob/sdk/mraid2/e;)Lcom/sigmob/sdk/mraid2/o;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/mraid2/e;->f:Lcom/sigmob/sdk/mraid2/o;

    return-object p0
.end method

.method public static synthetic g(Lcom/sigmob/sdk/mraid2/e;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/mraid2/e;->a:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private synthetic g()V
    .locals 2

    .line 2
    const-string v0, "onShow end"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e;->c:Lcom/sigmob/sdk/mraid2/m;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/sigmob/sdk/mraid2/e;->b:Z

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/mraid2/m;->a(Z)V

    return-void
.end method

.method public static synthetic h(Lcom/sigmob/sdk/mraid2/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sigmob/sdk/mraid2/e;->b:Z

    return p0
.end method

.method public static synthetic i(Lcom/sigmob/sdk/mraid2/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid2/e;->g()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e;->h:Ljava/util/List;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/sigmob/sdk/mraid2/e;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/sigmob/sdk/mraid2/e;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {v2}, Lcom/sigmob/sdk/mraid2/c;->getMraidBridge()Lcom/sigmob/sdk/mraid2/d;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0}, Lcom/sigmob/sdk/mraid2/d;->a(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOrientationChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/e;->h:Ljava/util/List;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid2/c;->getMraidBridge()Lcom/sigmob/sdk/mraid2/d;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid2/d;->e()V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/e;->j:Lcom/sigmob/sdk/base/common/g;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid2/d;->a(Lcom/sigmob/sdk/base/common/g;)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public a(Landroid/view/WindowInsets;Z)V
    .locals 5

    .line 8
    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/e;->k:Landroid/view/WindowInsets;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWindowInsets "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sigmob/sdk/mraid2/e;->h:Ljava/util/List;

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1}, Lcom/sigmob/sdk/videoplayer/c;->a(Landroid/view/WindowInsets;)Lcom/sigmob/sdk/base/utils/l;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid2/c;->getMraidBridge()Lcom/sigmob/sdk/mraid2/d;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/utils/l;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/utils/l;->b()I

    move-result v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/utils/l;->c()I

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/utils/l;->d()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/mraid2/d;->a(IIII)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/common/g;)V
    .locals 1

    .line 9
    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/e;->j:Lcom/sigmob/sdk/base/common/g;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e;->d:Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid2/c;->setAdSize(Lcom/sigmob/sdk/base/common/g;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/e;->d:Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid2/c;->a()V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 5

    .line 10
    const-string p1, "onShow start"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/e;->l:Landroid/os/Handler;

    new-instance v0, Lcom/sigmob/sdk/mraid2/J;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/mraid2/J;-><init>(Lcom/sigmob/sdk/mraid2/e;)V

    const/4 v1, 0x5

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Lcom/sigmob/sdk/mraid2/f;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e;->d:Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid2/c;->getMraidBridge()Lcom/sigmob/sdk/mraid2/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Lcom/sigmob/sdk/mraid2/f;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/mraid2/m;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/e;->c:Lcom/sigmob/sdk/mraid2/m;

    return-void
.end method

.method public b()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e;->h:Ljava/util/List;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/e;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/e;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid2/x;->l()V

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid2/c;->getMraidBridge()Lcom/sigmob/sdk/mraid2/d;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/mraid2/d;->a(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public c()Lcom/sigmob/sdk/mraid2/c;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e;->d:Lcom/sigmob/sdk/mraid2/c;

    return-object v0
.end method

.method public d()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e;->g:Lcom/sigmob/sdk/mraid2/e$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid2/e$a;->a()V

    iput-object v1, p0, Lcom/sigmob/sdk/mraid2/e;->g:Lcom/sigmob/sdk/mraid2/e$a;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {v2}, Lcom/sigmob/sdk/mraid2/c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/sigmob/sdk/mraid2/e;->d:Lcom/sigmob/sdk/mraid2/c;

    iput-object v1, p0, Lcom/sigmob/sdk/mraid2/e;->c:Lcom/sigmob/sdk/mraid2/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public e()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method
