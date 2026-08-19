.class final Lcom/kwad/components/ad/draw/view/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/j/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/ad/draw/view/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic gu:Lcom/kwad/components/ad/draw/view/c;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/draw/view/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/draw/view/c$2;->gu:Lcom/kwad/components/ad/draw/view/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bA()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/c$2;->gu:Lcom/kwad/components/ad/draw/view/c;

    .line 2
    .line 3
    const-string v1, "pageInvisiable"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/draw/view/c;->setLifeStatue(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final bz()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/c$2;->gu:Lcom/kwad/components/ad/draw/view/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/draw/view/c;->b(Lcom/kwad/components/ad/draw/view/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v0, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPvReported:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/c$2;->gu:Lcom/kwad/components/ad/draw/view/c;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/kwad/components/ad/draw/view/c;->c(Lcom/kwad/components/ad/draw/view/c;)Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/c$2;->gu:Lcom/kwad/components/ad/draw/view/c;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/kwad/components/ad/draw/view/c;->b(Lcom/kwad/components/ad/draw/view/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-boolean v0, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mHasAdShow:Z

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/c$2;->gu:Lcom/kwad/components/ad/draw/view/c;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/kwad/components/ad/draw/view/c;->c(Lcom/kwad/components/ad/draw/view/c;)Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;->onAdShow()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/c$2;->gu:Lcom/kwad/components/ad/draw/view/c;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/kwad/components/ad/draw/view/c;->b(Lcom/kwad/components/ad/draw/view/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/4 v2, 0x2

    .line 46
    invoke-static {v0, v2, v2}, Lcom/kwad/components/ad/draw/a/d;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/c$2;->gu:Lcom/kwad/components/ad/draw/view/c;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/kwad/components/ad/draw/view/c;->b(Lcom/kwad/components/ad/draw/view/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0, v2}, Lcom/kwad/components/ad/draw/a/d;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/c$2;->gu:Lcom/kwad/components/ad/draw/view/c;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/kwad/components/ad/draw/view/c;->b(Lcom/kwad/components/ad/draw/view/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-boolean v1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mHasAdShow:Z

    .line 65
    .line 66
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/c$2;->gu:Lcom/kwad/components/ad/draw/view/c;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/kwad/components/ad/draw/view/c;->d(Lcom/kwad/components/ad/draw/view/c;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_1

    .line 73
    .line 74
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/c$2;->gu:Lcom/kwad/components/ad/draw/view/c;

    .line 75
    .line 76
    const-string v2, "showStart"

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Lcom/kwad/components/ad/draw/view/c;->setLifeStatue(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/c$2;->gu:Lcom/kwad/components/ad/draw/view/c;

    .line 82
    .line 83
    const-string v2, "showEnd"

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Lcom/kwad/components/ad/draw/view/c;->setLifeStatue(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/c$2;->gu:Lcom/kwad/components/ad/draw/view/c;

    .line 89
    .line 90
    invoke-static {v0, v1}, Lcom/kwad/components/ad/draw/view/c;->a(Lcom/kwad/components/ad/draw/view/c;Z)Z

    .line 91
    .line 92
    .line 93
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/c$2;->gu:Lcom/kwad/components/ad/draw/view/c;

    .line 94
    .line 95
    const-string v1, "pageVisiable"

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/draw/view/c;->setLifeStatue(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method
