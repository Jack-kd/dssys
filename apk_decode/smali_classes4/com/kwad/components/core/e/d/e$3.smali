.class final Lcom/kwad/components/core/e/d/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/e/d/e;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic RA:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field final synthetic RB:I

.field final synthetic RC:Ljava/lang/String;

.field final synthetic Ry:I


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;IILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/e/d/e$3;->RA:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    iput p2, p0, Lcom/kwad/components/core/e/d/e$3;->Ry:I

    .line 4
    .line 5
    iput p3, p0, Lcom/kwad/components/core/e/d/e$3;->RB:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/kwad/components/core/e/d/e$3;->RC:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/kwad/components/core/e/d/e;->aF(Z)V

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/kwad/sdk/core/c/b;->LW()Lcom/kwad/sdk/core/c/b;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/kwad/sdk/core/c/b;->isAppOnForeground()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/kwad/components/core/e/d/e$3;->RA:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 15
    .line 16
    iget v1, p0, Lcom/kwad/components/core/e/d/e$3;->Ry:I

    .line 17
    .line 18
    iget v2, p0, Lcom/kwad/components/core/e/d/e$3;->RB:I

    .line 19
    .line 20
    const-string v3, ""

    .line 21
    .line 22
    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/core/adlog/c;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;II)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/kwad/components/core/e/d/e$3;->RA:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/kwad/components/core/e/d/e$3;->RC:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/kwad/sdk/commercial/e/a;->s(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
