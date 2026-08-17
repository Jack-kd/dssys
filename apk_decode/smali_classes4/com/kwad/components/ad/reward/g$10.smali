.class final Lcom/kwad/components/ad/reward/g$10;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/reward/g;->b(Lcom/kwad/components/core/j/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic tD:Lcom/kwad/components/core/j/d;

.field final synthetic tE:Lcom/kwad/components/core/j/c;

.field final synthetic tz:Lcom/kwad/components/ad/reward/g;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/reward/g;Lcom/kwad/components/core/j/d;Lcom/kwad/components/core/j/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/reward/g$10;->tz:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/reward/g$10;->tD:Lcom/kwad/components/core/j/d;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/components/ad/reward/g$10;->tE:Lcom/kwad/components/core/j/c;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/g$10;->tD:Lcom/kwad/components/core/j/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/kwad/components/ad/reward/g$10;->tE:Lcom/kwad/components/core/j/c;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/j/d;->d(Lcom/kwad/components/core/j/c;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
