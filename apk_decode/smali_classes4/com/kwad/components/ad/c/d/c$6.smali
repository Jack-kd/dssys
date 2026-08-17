.class final Lcom/kwad/components/ad/c/d/c$6;
.super Lcom/kwad/components/core/request/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/c/d/c;->aC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic cg:Lcom/kwad/sdk/internal/api/SceneImpl;

.field final synthetic dh:Lcom/kwad/components/ad/c/d/c;

.field final synthetic di:J


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/c/d/c;Lcom/kwad/sdk/internal/api/SceneImpl;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/c/d/c$6;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/c/d/c$6;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/kwad/components/ad/c/d/c$6;->di:J

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/kwad/components/core/request/d;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/sdk/core/response/model/AdResultData;Z)V
    .locals 5
    .param p1    # Lcom/kwad/sdk/core/response/model/AdResultData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lcom/kwad/components/ad/c/d/c$6;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c$6;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/kwad/components/ad/c/b;->bT:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    iget-wide v3, p0, Lcom/kwad/components/ad/c/d/c$6;->di:J

    .line 18
    .line 19
    sub-long/2addr v1, v3

    .line 20
    iget-object v3, p0, Lcom/kwad/components/ad/c/d/c$6;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 21
    .line 22
    invoke-static {v3}, Lcom/kwad/components/ad/c/d/c;->o(Lcom/kwad/components/ad/c/d/c;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-static {p2, v0, v1, v2, v3}, Lcom/kwad/components/ad/c/c/c;->a(Lcom/kwad/sdk/internal/api/SceneImpl;IJI)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lcom/kwad/components/ad/c/d/c$6;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-static {p2, v0}, Lcom/kwad/components/ad/c/d/c;->f(Lcom/kwad/components/ad/c/d/c;Z)Z

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lcom/kwad/components/ad/c/d/c$6;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 36
    .line 37
    iget-object p2, p2, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/model/AdResultData;->getAdTemplateList()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p2, Lcom/kwad/components/ad/c/b;->bT:Ljava/util/List;

    .line 44
    .line 45
    iget-object p2, p0, Lcom/kwad/components/ad/c/d/c$6;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 46
    .line 47
    iget-object p2, p2, Lcom/kwad/components/ad/c/d/a;->cS:Lcom/kwad/components/ad/c/b;

    .line 48
    .line 49
    iget-object p2, p2, Lcom/kwad/components/ad/c/b;->bT:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_1

    .line 56
    .line 57
    sget-object p2, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    .line 58
    .line 59
    iget p2, p2, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 60
    .line 61
    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/BaseResultData;->testErrorMsg:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/BaseResultData;->testErrorMsg:Ljava/lang/String;

    .line 75
    .line 76
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/kwad/components/ad/c/d/c$6;->onError(ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string p1, "bannerAd_"

    .line 80
    .line 81
    const-string p2, "\u6570\u636e\u4e3a\u7a7a"

    .line 82
    .line 83
    invoke-static {p1, p2}, Lcom/kwad/sdk/utils/l;->at(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    return-void
.end method

.method public final onError(ILjava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c$6;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/c/d/c;->e(Lcom/kwad/components/ad/c/d/c;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/kwad/components/ad/c/d/c$6$1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/c/d/c$6$1;-><init>(Lcom/kwad/components/ad/c/d/c$6;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->KE()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    int-to-long v2, v2

    .line 17
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    .line 19
    .line 20
    iget-object v4, p0, Lcom/kwad/components/ad/c/d/c$6;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 21
    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iget-wide v2, p0, Lcom/kwad/components/ad/c/d/c$6;->di:J

    .line 27
    .line 28
    sub-long v7, v0, v2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/kwad/components/ad/c/d/c$6;->dh:Lcom/kwad/components/ad/c/d/c;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/kwad/components/ad/c/d/c;->o(Lcom/kwad/components/ad/c/d/c;)Z

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    move v5, p1

    .line 37
    move-object v6, p2

    .line 38
    invoke-static/range {v4 .. v9}, Lcom/kwad/components/ad/c/c/c;->a(Lcom/kwad/sdk/internal/api/SceneImpl;ILjava/lang/String;JI)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
