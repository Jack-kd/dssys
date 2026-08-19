.class public abstract Lcom/kwad/sdk/core/j/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/j/c;


# instance fields
.field private aba:Z

.field private abb:Z

.field private bbU:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kwad/sdk/core/j/b;->bbU:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/kwad/sdk/core/j/b;->aba:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/kwad/sdk/core/j/b;->abb:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public abstract aP()V
.end method

.method public abstract aQ()V
.end method

.method public final bA()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/core/j/b;->bbU:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/kwad/sdk/core/j/b;->aba:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/kwad/sdk/core/j/b;->aQ()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/kwad/sdk/core/j/b;->aba:Z

    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public final bz()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kwad/sdk/core/j/b;->bbU:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/kwad/sdk/core/j/b;->abb:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/kwad/sdk/core/j/b;->aP()V

    .line 9
    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/kwad/sdk/core/j/b;->abb:Z

    .line 12
    .line 13
    :cond_0
    return-void
.end method
