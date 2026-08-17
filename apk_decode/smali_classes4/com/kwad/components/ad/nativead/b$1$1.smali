.class final Lcom/kwad/components/ad/nativead/b$1$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/nativead/b$1;->a(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic pj:Lcom/kwad/components/ad/nativead/b$1;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/nativead/b$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/b$1$1;->pj:Lcom/kwad/components/ad/nativead/b$1;

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
    .locals 2

    .line 1
    const-string v0, "KSNativeAdRotateAndShakeManager"

    .line 2
    .line 3
    const-string v1, "onShakeEvent openGate2"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/b$1$1;->pj:Lcom/kwad/components/ad/nativead/b$1;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/kwad/components/ad/nativead/b$1;->pi:Lcom/kwad/components/ad/nativead/b;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/kwad/components/ad/nativead/b;->b(Lcom/kwad/components/ad/nativead/b;)Lcom/kwad/sdk/core/g/d;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/b$1$1;->pj:Lcom/kwad/components/ad/nativead/b$1;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/kwad/components/ad/nativead/b$1;->pi:Lcom/kwad/components/ad/nativead/b;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/kwad/components/ad/nativead/b;->b(Lcom/kwad/components/ad/nativead/b;)Lcom/kwad/sdk/core/g/d;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/kwad/sdk/core/g/d;->NJ()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
