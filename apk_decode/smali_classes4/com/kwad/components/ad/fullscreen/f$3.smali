.class final Lcom/kwad/components/ad/fullscreen/f$3;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/fullscreen/f;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/ad/fullscreen/e;Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic ch:J

.field final synthetic cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field final synthetic dN:Ljava/util/List;

.field final synthetic jR:Lcom/kwad/components/ad/fullscreen/e;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/kwad/components/ad/fullscreen/e;Lcom/kwad/sdk/core/response/model/AdTemplate;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/fullscreen/f$3;->dN:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/fullscreen/f$3;->jR:Lcom/kwad/components/ad/fullscreen/e;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/components/ad/fullscreen/f$3;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/kwad/components/ad/fullscreen/f$3;->ch:J

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 5

    .line 1
    const-string v0, "fullAd_"

    .line 2
    .line 3
    const-string v1, "onFullScreenVideoAdCacheFailed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/l;->at(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/kwad/components/ad/KsAdLoadManager;->O()Lcom/kwad/components/ad/KsAdLoadManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/kwad/components/ad/fullscreen/f$3;->dN:Ljava/util/List;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/KsAdLoadManager;->b(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/kwad/components/ad/fullscreen/f$3;->jR:Lcom/kwad/components/ad/fullscreen/e;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/kwad/components/ad/fullscreen/f$3;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/kwad/components/ad/fullscreen/f$3;->dN:Ljava/util/List;

    .line 22
    .line 23
    iget-wide v3, p0, Lcom/kwad/components/ad/fullscreen/f$3;->ch:J

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/kwad/components/ad/fullscreen/e;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/util/List;J)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
