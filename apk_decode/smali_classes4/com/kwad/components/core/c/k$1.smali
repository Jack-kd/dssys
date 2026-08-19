.class final Lcom/kwad/components/core/c/k$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/c/k;->a(Lcom/kwad/components/core/request/a;Lcom/kwad/sdk/core/response/model/AdResultData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic PH:Lcom/kwad/sdk/core/response/model/AdResultData;

.field final synthetic PI:Lcom/kwad/components/core/c/k;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/c/k;Lcom/kwad/sdk/core/response/model/AdResultData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/c/k$1;->PI:Lcom/kwad/components/core/c/k;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/c/k$1;->PH:Lcom/kwad/sdk/core/response/model/AdResultData;

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
    iget-object v0, p0, Lcom/kwad/components/core/c/k$1;->PI:Lcom/kwad/components/core/c/k;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/components/core/c/k$1;->PH:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/components/core/c/k;->a(Lcom/kwad/components/core/c/k;Lcom/kwad/sdk/core/response/model/AdResultData;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
