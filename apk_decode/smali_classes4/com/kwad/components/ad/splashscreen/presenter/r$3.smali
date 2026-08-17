.class final Lcom/kwad/components/ad/splashscreen/presenter/r$3;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/splashscreen/presenter/r;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Jf:Lcom/kwad/components/ad/splashscreen/presenter/r;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/splashscreen/presenter/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/r$3;->Jf:Lcom/kwad/components/ad/splashscreen/presenter/r;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/r$3;->Jf:Lcom/kwad/components/ad/splashscreen/presenter/r;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/r;->g(Lcom/kwad/components/ad/splashscreen/presenter/r;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/r$3;->Jf:Lcom/kwad/components/ad/splashscreen/presenter/r;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/r;->h(Lcom/kwad/components/ad/splashscreen/presenter/r;)Lcom/kwad/components/ad/splashscreen/widget/d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/r$3;->Jf:Lcom/kwad/components/ad/splashscreen/presenter/r;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/r;->h(Lcom/kwad/components/ad/splashscreen/presenter/r;)Lcom/kwad/components/ad/splashscreen/widget/d;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/kwad/components/ad/splashscreen/widget/d;->start()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
