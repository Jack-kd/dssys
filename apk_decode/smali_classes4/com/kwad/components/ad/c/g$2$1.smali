.class final Lcom/kwad/components/ad/c/g$2$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/c/g$2;->onError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic ci:I

.field final synthetic cj:Ljava/lang/String;

.field final synthetic ck:Lcom/kwad/components/ad/c/g$2;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/c/g$2;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/c/g$2$1;->ck:Lcom/kwad/components/ad/c/g$2;

    .line 2
    .line 3
    iput p2, p0, Lcom/kwad/components/ad/c/g$2$1;->ci:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/components/ad/c/g$2$1;->cj:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/c/g$2$1;->ck:Lcom/kwad/components/ad/c/g$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/ad/c/g$2;->bO:Lcom/kwad/sdk/api/KsLoadManager$BannerAdListener;

    .line 4
    .line 5
    iget v1, p0, Lcom/kwad/components/ad/c/g$2$1;->ci:I

    .line 6
    .line 7
    iget-object v2, p0, Lcom/kwad/components/ad/c/g$2$1;->cj:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/api/KsLoadManager$BannerAdListener;->onError(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/kwad/components/ad/c/g$2$1;->ck:Lcom/kwad/components/ad/c/g$2;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/kwad/components/ad/c/g$2;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 15
    .line 16
    iget v2, p0, Lcom/kwad/components/ad/c/g$2$1;->ci:I

    .line 17
    .line 18
    iget-object v3, p0, Lcom/kwad/components/ad/c/g$2$1;->cj:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    iget-object v0, p0, Lcom/kwad/components/ad/c/g$2$1;->ck:Lcom/kwad/components/ad/c/g$2;

    .line 25
    .line 26
    iget-wide v6, v0, Lcom/kwad/components/ad/c/g$2;->ch:J

    .line 27
    .line 28
    sub-long/2addr v4, v6

    .line 29
    const/4 v6, 0x0

    .line 30
    invoke-static/range {v1 .. v6}, Lcom/kwad/components/ad/c/c/c;->a(Lcom/kwad/sdk/internal/api/SceneImpl;ILjava/lang/String;JI)V

    .line 31
    .line 32
    .line 33
    iget v0, p0, Lcom/kwad/components/ad/c/g$2$1;->ci:I

    .line 34
    .line 35
    iget-object v1, p0, Lcom/kwad/components/ad/c/g$2$1;->cj:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/kwad/components/ad/c/c/c;->d(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
