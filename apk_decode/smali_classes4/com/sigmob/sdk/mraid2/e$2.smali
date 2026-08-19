.class Lcom/sigmob/sdk/mraid2/e$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/mraid2/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/mraid2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid2/e;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/mraid2/e;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcom/sigmob/sdk/mraid2/c;II)V
    .locals 0

    .line 5
    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid2/c;->getMraidBridge()Lcom/sigmob/sdk/mraid2/d;

    move-result-object p0

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/mraid2/d;->a(II)V

    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/mraid2/c;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sigmob/sdk/mraid2/e$2;->a(Lcom/sigmob/sdk/mraid2/c;II)V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/mraid2/c;I)Landroid/widget/LinearLayout;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/e;->e(Lcom/sigmob/sdk/mraid2/e;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid2/e;->c(Lcom/sigmob/sdk/mraid2/e;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid2/e;->a(Lcom/sigmob/sdk/mraid2/e;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/e;->f(Lcom/sigmob/sdk/mraid2/e;)Lcom/sigmob/sdk/mraid2/o;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    new-instance v1, Lcom/sigmob/sdk/mraid2/l;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid2/e;->c(Lcom/sigmob/sdk/mraid2/e;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sigmob/sdk/mraid2/l;-><init>(Landroid/content/Context;)V

    invoke-static {p2, v1}, Lcom/sigmob/sdk/mraid2/e;->a(Lcom/sigmob/sdk/mraid2/e;Lcom/sigmob/sdk/mraid2/o;)Lcom/sigmob/sdk/mraid2/o;

    iget-object p2, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {p2}, Lcom/sigmob/sdk/mraid2/e;->e(Lcom/sigmob/sdk/mraid2/e;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    new-instance v2, Lcom/sigmob/sdk/mraid2/r;

    iget-object v3, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v3}, Lcom/sigmob/sdk/mraid2/e;->c(Lcom/sigmob/sdk/mraid2/e;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sigmob/sdk/mraid2/r;-><init>(Landroid/content/Context;)V

    invoke-static {p2, v2}, Lcom/sigmob/sdk/mraid2/e;->a(Lcom/sigmob/sdk/mraid2/e;Lcom/sigmob/sdk/mraid2/o;)Lcom/sigmob/sdk/mraid2/o;

    iget-object p2, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {p2}, Lcom/sigmob/sdk/mraid2/e;->e(Lcom/sigmob/sdk/mraid2/e;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :goto_0
    iget-object p2, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {p2}, Lcom/sigmob/sdk/mraid2/e;->f(Lcom/sigmob/sdk/mraid2/e;)Lcom/sigmob/sdk/mraid2/o;

    move-result-object p2

    new-instance v1, Lcom/sigmob/sdk/mraid2/K;

    invoke-direct {v1}, Lcom/sigmob/sdk/mraid2/K;-><init>()V

    invoke-interface {p2, v1}, Lcom/sigmob/sdk/mraid2/o;->setPageChangedListener(Lcom/sigmob/sdk/mraid2/u;)V

    iget-object p2, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {p2}, Lcom/sigmob/sdk/mraid2/e;->f(Lcom/sigmob/sdk/mraid2/e;)Lcom/sigmob/sdk/mraid2/o;

    move-result-object p2

    invoke-interface {p2}, Lcom/sigmob/sdk/mraid2/o;->getView()Landroid/view/ViewGroup;

    move-result-object p2

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/e;->e(Lcom/sigmob/sdk/mraid2/e;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {p2}, Lcom/sigmob/sdk/mraid2/e;->g(Lcom/sigmob/sdk/mraid2/e;)Landroid/widget/FrameLayout;

    move-result-object p2

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/e;->f(Lcom/sigmob/sdk/mraid2/e;)Lcom/sigmob/sdk/mraid2/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/sigmob/sdk/mraid2/o;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid2/c;->getScrollTouchListener()Lcom/sigmob/sdk/mraid2/v;

    move-result-object p2

    if-nez p2, :cond_3

    new-instance p2, Lcom/sigmob/sdk/mraid2/e$2$1;

    invoke-direct {p2, p0}, Lcom/sigmob/sdk/mraid2/e$2$1;-><init>(Lcom/sigmob/sdk/mraid2/e$2;)V

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/mraid2/c;->setScrollTouchListener(Lcom/sigmob/sdk/mraid2/v;)V

    :cond_3
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/e;->e(Lcom/sigmob/sdk/mraid2/e;)Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/sigmob/sdk/mraid2/c;Lorg/json/JSONObject;)Lcom/sigmob/sdk/mraid2/c;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/e;->c(Lcom/sigmob/sdk/mraid2/e;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/sigmob/sdk/mraid2/e;->a(Lcom/sigmob/sdk/mraid2/e;Landroid/content/Context;Lcom/sigmob/sdk/mraid2/c;Lorg/json/JSONObject;)Lcom/sigmob/sdk/mraid2/c;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {p2}, Lcom/sigmob/sdk/mraid2/e;->d(Lcom/sigmob/sdk/mraid2/e;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/e;->a(Lcom/sigmob/sdk/mraid2/e;)Lcom/sigmob/sdk/mraid2/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/e;->a(Lcom/sigmob/sdk/mraid2/e;)Lcom/sigmob/sdk/mraid2/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/mraid2/m;->d()V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/mraid2/c;)V
    .locals 1

    .line 4
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/e;->a(Lcom/sigmob/sdk/mraid2/e;)Lcom/sigmob/sdk/mraid2/m;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/e;->a(Lcom/sigmob/sdk/mraid2/e;)Lcom/sigmob/sdk/mraid2/m;

    move-result-object p1

    invoke-interface {p1}, Lcom/sigmob/sdk/mraid2/m;->b()V

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/e;->d(Lcom/sigmob/sdk/mraid2/e;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/e;->d(Lcom/sigmob/sdk/mraid2/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/e;->d(Lcom/sigmob/sdk/mraid2/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid2/c;->b()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Lcom/sigmob/sdk/mraid2/c;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lorg/json/JSONObject;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/e;->a(Lcom/sigmob/sdk/mraid2/e;)Lcom/sigmob/sdk/mraid2/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/e;->a(Lcom/sigmob/sdk/mraid2/e;)Lcom/sigmob/sdk/mraid2/m;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/sigmob/sdk/mraid2/m;->a(Lcom/sigmob/sdk/mraid2/c;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lorg/json/JSONObject;)V

    return-void
.end method

.method public b(Lcom/sigmob/sdk/mraid2/c;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/e;->a(Lcom/sigmob/sdk/mraid2/e;)Lcom/sigmob/sdk/mraid2/m;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/e;->a(Lcom/sigmob/sdk/mraid2/e;)Lcom/sigmob/sdk/mraid2/m;

    move-result-object p1

    invoke-interface {p1}, Lcom/sigmob/sdk/mraid2/m;->c()V

    return-void
.end method

.method public b(Lcom/sigmob/sdk/mraid2/c;Lorg/json/JSONObject;)V
    .locals 1

    .line 3
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    const-string v0, "flag"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/sigmob/sdk/mraid2/e;->a(Lcom/sigmob/sdk/mraid2/e;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/e;->a(Lcom/sigmob/sdk/mraid2/e;)Lcom/sigmob/sdk/mraid2/m;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/e;->a(Lcom/sigmob/sdk/mraid2/e;)Lcom/sigmob/sdk/mraid2/m;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/mraid2/e$2;->a:Lcom/sigmob/sdk/mraid2/e;

    invoke-static {p2}, Lcom/sigmob/sdk/mraid2/e;->h(Lcom/sigmob/sdk/mraid2/e;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/mraid2/m;->a(Z)V

    return-void
.end method
