.class final Lcom/kwad/components/ad/reward/a$3;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/reward/a;->b(Lcom/kwad/components/core/playable/PlayableSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic rV:Lcom/kwad/components/core/playable/PlayableSource;

.field final synthetic rX:Lcom/kwad/components/ad/reward/a;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/reward/a;Lcom/kwad/components/core/playable/PlayableSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/reward/a$3;->rX:Lcom/kwad/components/ad/reward/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/reward/a$3;->rV:Lcom/kwad/components/core/playable/PlayableSource;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/a$3;->rX:Lcom/kwad/components/ad/reward/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/components/ad/reward/a$3;->rV:Lcom/kwad/components/core/playable/PlayableSource;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/components/ad/reward/a;->a(Lcom/kwad/components/ad/reward/a;Lcom/kwad/components/core/playable/PlayableSource;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
