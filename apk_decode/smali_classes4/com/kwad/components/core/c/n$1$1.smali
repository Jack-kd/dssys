.class final Lcom/kwad/components/core/c/n$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/c/n$1;->a(Lcom/kwad/components/core/request/model/a;Lcom/kwad/sdk/core/response/model/AdResultData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic PL:Lcom/kwad/sdk/internal/api/SceneImpl;

.field final synthetic PM:Lcom/kwad/components/core/c/n$1;

.field final synthetic bJ:Lcom/kwad/components/core/request/model/a;

.field final synthetic pq:Lcom/kwad/sdk/core/response/model/AdResultData;

.field final synthetic ws:I


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/c/n$1;Lcom/kwad/sdk/internal/api/SceneImpl;Lcom/kwad/sdk/core/response/model/AdResultData;ILcom/kwad/components/core/request/model/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/c/n$1$1;->PM:Lcom/kwad/components/core/c/n$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/c/n$1$1;->PL:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/components/core/c/n$1$1;->pq:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 6
    .line 7
    iput p4, p0, Lcom/kwad/components/core/c/n$1$1;->ws:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/kwad/components/core/c/n$1$1;->bJ:Lcom/kwad/components/core/request/model/a;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/c/n$1$1;->PM:Lcom/kwad/components/core/c/n$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/components/core/c/n$1$1;->PL:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/kwad/components/core/c/n$1$1;->pq:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 6
    .line 7
    iget v3, p0, Lcom/kwad/components/core/c/n$1$1;->ws:I

    .line 8
    .line 9
    new-instance v4, Lcom/kwad/components/core/c/n$1$1$1;

    .line 10
    .line 11
    invoke-direct {v4, p0}, Lcom/kwad/components/core/c/n$1$1$1;-><init>(Lcom/kwad/components/core/c/n$1$1;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, v2, v3, v4}, Lcom/kwad/components/core/c/n$1;->a(Lcom/kwad/components/core/c/n$1;Lcom/kwad/sdk/internal/api/SceneImpl;Lcom/kwad/sdk/core/response/model/AdResultData;ILcom/kwad/components/core/c/l;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
