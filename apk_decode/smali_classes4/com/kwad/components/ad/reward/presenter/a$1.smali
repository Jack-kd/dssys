.class final Lcom/kwad/components/ad/reward/presenter/a$1;
.super Lcom/kwad/components/core/video/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/ad/reward/presenter/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic wv:Lcom/kwad/components/ad/reward/presenter/a;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/reward/presenter/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/reward/presenter/a$1;->wv:Lcom/kwad/components/ad/reward/presenter/a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/components/core/video/m;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMediaPlayProgress(JJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/a$1;->wv:Lcom/kwad/components/ad/reward/presenter/a;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 4
    .line 5
    iput-wide p3, p1, Lcom/kwad/components/ad/reward/g;->te:J

    .line 6
    .line 7
    return-void
.end method
