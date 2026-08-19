.class final Lcom/kwad/components/ad/feed/d$2$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/feed/d$2;->t(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic hB:Lcom/kwad/components/ad/feed/d$2;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/feed/d$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/feed/d$2$1;->hB:Lcom/kwad/components/ad/feed/d$2;

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
    const-string v0, "KSFeedRotateAndShakeManager"

    .line 2
    .line 3
    const-string v1, "onRotateEvent openGate2"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/kwad/components/ad/feed/d;->ci()Lcom/kwad/sdk/core/g/c;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lcom/kwad/components/ad/feed/d;->ci()Lcom/kwad/sdk/core/g/c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/kwad/sdk/core/g/c;->NJ()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
