.class final Lcom/kwad/components/core/widget/a/a$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/widget/a/a;->a(Lcom/kwad/sdk/core/j/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic awD:Lcom/kwad/sdk/core/j/c;

.field final synthetic awE:Lcom/kwad/components/core/widget/a/a;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/widget/a/a;Lcom/kwad/sdk/core/j/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/widget/a/a$1;->awE:Lcom/kwad/components/core/widget/a/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/widget/a/a$1;->awD:Lcom/kwad/sdk/core/j/c;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/widget/a/a$1;->awE:Lcom/kwad/components/core/widget/a/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/components/core/widget/a/a;->ah()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/components/core/widget/a/a$1;->awD:Lcom/kwad/sdk/core/j/c;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/kwad/sdk/core/j/c;->bz()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/widget/a/a$1;->awD:Lcom/kwad/sdk/core/j/c;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/kwad/sdk/core/j/c;->bA()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
