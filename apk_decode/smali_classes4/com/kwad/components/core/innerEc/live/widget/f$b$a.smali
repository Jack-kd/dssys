.class final Lcom/kwad/components/core/innerEc/live/widget/f$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/innerEc/live/widget/f$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private final YX:Landroid/view/animation/Interpolator;

.field final synthetic YY:Lcom/kwad/components/core/innerEc/live/widget/f$b;


# direct methods
.method private constructor <init>(Lcom/kwad/components/core/innerEc/live/widget/f$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b$a;->YY:Lcom/kwad/components/core/innerEc/live/widget/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b$a;->YX:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kwad/components/core/innerEc/live/widget/f$b;B)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/widget/f$b$a;-><init>(Lcom/kwad/components/core/innerEc/live/widget/f$b;)V

    return-void
.end method

.method private a(FLjava/util/List;)F
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Lcom/kwad/components/core/innerEc/live/widget/k;",
            ">;)F"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/kwad/components/core/innerEc/live/widget/k;

    .line 18
    .line 19
    sub-float v3, p1, v0

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/kwad/components/core/innerEc/live/widget/k;->tg()F

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    cmpl-float v3, v3, v4

    .line 26
    .line 27
    if-lez v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/kwad/components/core/innerEc/live/widget/k;->tg()F

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    add-float/2addr v0, v3

    .line 34
    invoke-virtual {v2}, Lcom/kwad/components/core/innerEc/live/widget/k;->th()F

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    add-float/2addr v1, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v2, 0x0

    .line 41
    :cond_1
    if-eqz v2, :cond_2

    .line 42
    .line 43
    sub-float/2addr p1, v0

    .line 44
    invoke-virtual {v2}, Lcom/kwad/components/core/innerEc/live/widget/k;->tg()F

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    div-float/2addr p1, p2

    .line 49
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b$a;->YX:Landroid/view/animation/Interpolator;

    .line 50
    .line 51
    invoke-interface {p2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-virtual {v2}, Lcom/kwad/components/core/innerEc/live/widget/k;->th()F

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    mul-float/2addr p1, p2

    .line 60
    add-float/2addr v1, p1

    .line 61
    return v1

    .line 62
    :cond_2
    return p1
.end method

.method private f(F)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b$a;->YY:Lcom/kwad/components/core/innerEc/live/widget/f$b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/f$b;->a(Lcom/kwad/components/core/innerEc/live/widget/f$b;)Landroid/view/animation/DecelerateInterpolator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b$a;->YY:Lcom/kwad/components/core/innerEc/live/widget/f$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/f;->b(Lcom/kwad/components/core/innerEc/live/widget/f;)Lcom/kwad/components/core/innerEc/live/widget/g;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Lcom/kwad/components/core/innerEc/live/widget/g$d;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/widget/f$b$a;->f(F)F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    check-cast v0, Lcom/kwad/components/core/innerEc/live/widget/g$d;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/kwad/components/core/innerEc/live/widget/g$d;->sV()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/g;->n(Ljava/util/List;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/widget/f$b$a;->f(F)F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/kwad/components/core/innerEc/live/widget/f$b$a;->a(FLjava/util/List;)F

    .line 36
    .line 37
    .line 38
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return p1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v2, "calculateSegmentInterpolation error"

    .line 44
    .line 45
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "LiveCommentLinearLayoutManager"

    .line 56
    .line 57
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/widget/f$b$a;->f(F)F

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    return p1
.end method
