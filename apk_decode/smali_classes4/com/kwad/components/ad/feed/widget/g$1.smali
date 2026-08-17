.class final Lcom/kwad/components/ad/feed/widget/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/video/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/ad/feed/widget/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic iL:Lcom/kwad/components/ad/feed/widget/g;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/feed/widget/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/feed/widget/g$1;->iL:Lcom/kwad/components/ad/feed/widget/g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILcom/kwad/sdk/utils/al$a;)V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-eq p1, v2, :cond_2

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    if-eq p1, v3, :cond_1

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    const/16 p1, 0x23

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 p1, 0x27

    .line 15
    .line 16
    move v0, v2

    .line 17
    move v1, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/16 p1, 0x10

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const/16 p1, 0xf

    .line 23
    .line 24
    :goto_0
    iget-object v3, p0, Lcom/kwad/components/ad/feed/widget/g$1;->iL:Lcom/kwad/components/ad/feed/widget/g;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/kwad/components/ad/feed/widget/a;->cp()V

    .line 27
    .line 28
    .line 29
    new-instance v3, Lcom/kwad/components/core/e/d/a$a;

    .line 30
    .line 31
    iget-object v4, p0, Lcom/kwad/components/ad/feed/widget/g$1;->iL:Lcom/kwad/components/ad/feed/widget/g;

    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-direct {v3, v4}, Lcom/kwad/components/core/e/d/a$a;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    iget-object v4, p0, Lcom/kwad/components/ad/feed/widget/g$1;->iL:Lcom/kwad/components/ad/feed/widget/g;

    .line 41
    .line 42
    invoke-static {v4}, Lcom/kwad/components/ad/feed/widget/g;->b(Lcom/kwad/components/ad/feed/widget/g;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v3, v4}, Lcom/kwad/components/core/e/d/a$a;->aJ(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/components/core/e/d/a$a;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget-object v4, p0, Lcom/kwad/components/ad/feed/widget/g$1;->iL:Lcom/kwad/components/ad/feed/widget/g;

    .line 51
    .line 52
    iget-object v4, v4, Lcom/kwad/components/ad/feed/widget/c;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Lcom/kwad/components/core/e/d/a$a;->b(Lcom/kwad/components/core/e/d/d;)Lcom/kwad/components/core/e/d/a$a;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3, v0}, Lcom/kwad/components/core/e/d/a$a;->aN(I)Lcom/kwad/components/core/e/d/a$a;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/e/d/a$a;->as(Z)Lcom/kwad/components/core/e/d/a$a;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0, v2}, Lcom/kwad/components/core/e/d/a$a;->au(Z)Lcom/kwad/components/core/e/d/a$a;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const/4 v1, 0x5

    .line 71
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/e/d/a$a;->aL(I)Lcom/kwad/components/core/e/d/a$a;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/e/d/a$a;->aM(I)Lcom/kwad/components/core/e/d/a$a;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1, p2}, Lcom/kwad/components/core/e/d/a$a;->d(Lcom/kwad/sdk/utils/al$a;)Lcom/kwad/components/core/e/d/a$a;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1, v2}, Lcom/kwad/components/core/e/d/a$a;->aw(Z)Lcom/kwad/components/core/e/d/a$a;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    new-instance p2, Lcom/kwad/components/ad/feed/widget/g$1$1;

    .line 88
    .line 89
    invoke-direct {p2, p0}, Lcom/kwad/components/ad/feed/widget/g$1$1;-><init>(Lcom/kwad/components/ad/feed/widget/g$1;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Lcom/kwad/components/core/e/d/a$a;->a(Lcom/kwad/components/core/e/d/a$b;)Lcom/kwad/components/core/e/d/a$a;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p1}, Lcom/kwad/components/core/e/d/a;->a(Lcom/kwad/components/core/e/d/a$a;)I

    .line 97
    .line 98
    .line 99
    return-void
.end method
