.class public Lcom/kwad/sdk/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/m;


# instance fields
.field private aGn:Z


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
    iput-boolean v0, p0, Lcom/kwad/sdk/n;->aGn:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final Gr()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kwad/sdk/n;->aGn:Z

    .line 3
    .line 4
    return-void
.end method

.method public M()V
    .locals 0

    return-void
.end method

.method public N()V
    .locals 0

    return-void
.end method

.method public final isDone()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/n;->aGn:Z

    .line 2
    .line 3
    return v0
.end method
