.class final Lcom/kwad/components/ad/feed/widget/q$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/ad/feed/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/feed/widget/q;->cL()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic jt:Lcom/kwad/components/ad/feed/widget/q;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/feed/widget/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/feed/widget/q$18;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(D)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Kd()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x42c80000    # 100.0f

    .line 6
    .line 7
    mul-float/2addr v0, v1

    .line 8
    float-to-int v0, v0

    .line 9
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/q$18;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/kwad/components/ad/feed/widget/q;->D(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/widget/RatioFrameLayout;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1, v0}, Lcom/kwad/sdk/utils/cb;->r(Landroid/view/View;I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$18;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/kwad/components/core/widget/b;->fx()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    return v1

    .line 31
    :cond_0
    new-instance v0, Lcom/kwad/components/core/e/d/a$a;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/q$18;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-direct {v0, v2}, Lcom/kwad/components/core/e/d/a$a;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/q$18;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 43
    .line 44
    invoke-static {v2}, Lcom/kwad/components/ad/feed/widget/q;->an(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v2}, Lcom/kwad/components/core/e/d/a$a;->aJ(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/components/core/e/d/a$a;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/q$18;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 53
    .line 54
    invoke-static {v2}, Lcom/kwad/components/ad/feed/widget/q;->J(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/components/core/e/d/d;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v2}, Lcom/kwad/components/core/e/d/a$a;->b(Lcom/kwad/components/core/e/d/d;)Lcom/kwad/components/core/e/d/a$a;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const/4 v2, 0x2

    .line 63
    invoke-virtual {v0, v2}, Lcom/kwad/components/core/e/d/a$a;->aN(I)Lcom/kwad/components/core/e/d/a$a;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/e/d/a$a;->as(Z)Lcom/kwad/components/core/e/d/a$a;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/e/d/a$a;->au(Z)Lcom/kwad/components/core/e/d/a$a;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const/16 v1, 0x9d

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/e/d/a$a;->aM(I)Lcom/kwad/components/core/e/d/a$a;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const/4 v1, 0x5

    .line 82
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/e/d/a$a;->aL(I)Lcom/kwad/components/core/e/d/a$a;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const/4 v1, 0x1

    .line 87
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/e/d/a$a;->aw(Z)Lcom/kwad/components/core/e/d/a$a;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v2, Lcom/kwad/components/ad/feed/widget/q$18$1;

    .line 92
    .line 93
    invoke-direct {v2, p0, p1, p2}, Lcom/kwad/components/ad/feed/widget/q$18$1;-><init>(Lcom/kwad/components/ad/feed/widget/q$18;D)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v2}, Lcom/kwad/components/core/e/d/a$a;->a(Lcom/kwad/components/core/e/d/a$b;)Lcom/kwad/components/core/e/d/a$a;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p1}, Lcom/kwad/components/core/e/d/a;->a(Lcom/kwad/components/core/e/d/a$a;)I

    .line 101
    .line 102
    .line 103
    :cond_1
    return v1
.end method
