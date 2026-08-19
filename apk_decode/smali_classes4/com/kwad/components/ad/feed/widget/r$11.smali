.class final Lcom/kwad/components/ad/feed/widget/r$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/ad/feed/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/feed/widget/r;->cL()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic jG:Lcom/kwad/components/ad/feed/widget/r;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/feed/widget/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/feed/widget/r$11;->jG:Lcom/kwad/components/ad/feed/widget/r;

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
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/r$11;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/kwad/components/ad/feed/widget/r;->d(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/widget/KSFrameLayout;

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
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r$11;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/kwad/components/core/widget/b;->fx()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-static {}, Lcom/kwad/components/ad/feed/d;->ce()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Lcom/kwad/components/core/e/d/a$a;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/r$11;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {v0, v2}, Lcom/kwad/components/core/e/d/a$a;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/r$11;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 49
    .line 50
    invoke-static {v2}, Lcom/kwad/components/ad/feed/widget/r;->as(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0, v2}, Lcom/kwad/components/core/e/d/a$a;->aJ(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/components/core/e/d/a$a;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/r$11;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 59
    .line 60
    invoke-static {v2}, Lcom/kwad/components/ad/feed/widget/r;->t(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/e/d/d;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v0, v2}, Lcom/kwad/components/core/e/d/a$a;->b(Lcom/kwad/components/core/e/d/d;)Lcom/kwad/components/core/e/d/a$a;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const/4 v2, 0x2

    .line 69
    invoke-virtual {v0, v2}, Lcom/kwad/components/core/e/d/a$a;->aN(I)Lcom/kwad/components/core/e/d/a$a;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/e/d/a$a;->as(Z)Lcom/kwad/components/core/e/d/a$a;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/e/d/a$a;->au(Z)Lcom/kwad/components/core/e/d/a$a;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const/16 v1, 0x9d

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/e/d/a$a;->aM(I)Lcom/kwad/components/core/e/d/a$a;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const/4 v1, 0x5

    .line 88
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/e/d/a$a;->aL(I)Lcom/kwad/components/core/e/d/a$a;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const/4 v1, 0x1

    .line 93
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/e/d/a$a;->aw(Z)Lcom/kwad/components/core/e/d/a$a;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    new-instance v2, Lcom/kwad/components/ad/feed/widget/r$11$1;

    .line 98
    .line 99
    invoke-direct {v2, p0, p1, p2}, Lcom/kwad/components/ad/feed/widget/r$11$1;-><init>(Lcom/kwad/components/ad/feed/widget/r$11;D)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v2}, Lcom/kwad/components/core/e/d/a$a;->a(Lcom/kwad/components/core/e/d/a$b;)Lcom/kwad/components/core/e/d/a$a;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {p1}, Lcom/kwad/components/core/e/d/a;->a(Lcom/kwad/components/core/e/d/a$a;)I

    .line 107
    .line 108
    .line 109
    :cond_1
    :goto_0
    return v1
.end method
