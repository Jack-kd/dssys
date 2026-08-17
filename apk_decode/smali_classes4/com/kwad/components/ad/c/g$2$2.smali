.class final Lcom/kwad/components/ad/c/g$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/ad/c/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/c/g$2;->a(Lcom/kwad/sdk/core/response/model/AdResultData;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic ck:Lcom/kwad/components/ad/c/g$2;

.field final synthetic cl:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field final synthetic cm:Lcom/kwad/sdk/api/KsBannerAd;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/c/g$2;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/api/KsBannerAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/c/g$2$2;->ck:Lcom/kwad/components/ad/c/g$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/c/g$2$2;->cl:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/components/ad/c/g$2$2;->cm:Lcom/kwad/sdk/api/KsBannerAd;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final ai()V
    .locals 6

    .line 1
    const-string v0, "KsAdBannerLoadManager"

    .line 2
    .line 3
    const-string v1, "loadFullScreenVideoAd startCacheVideo onCacheTargetSuccess"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/ad/c/g$2$2;->cl:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/kwad/components/ad/c/g$2$2;->ck:Lcom/kwad/components/ad/c/g$2;

    .line 11
    .line 12
    iget-object v2, v1, Lcom/kwad/components/ad/c/g$2;->bO:Lcom/kwad/sdk/api/KsLoadManager$BannerAdListener;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/kwad/components/ad/c/g$2$2;->cm:Lcom/kwad/sdk/api/KsBannerAd;

    .line 15
    .line 16
    iget-wide v4, v1, Lcom/kwad/components/ad/c/g$2;->ch:J

    .line 17
    .line 18
    invoke-static {v0, v2, v3, v4, v5}, Lcom/kwad/components/ad/c/g;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/api/KsLoadManager$BannerAdListener;Lcom/kwad/sdk/api/KsBannerAd;J)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final aj()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/c/g$2$2;->cl:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/components/ad/c/g$2$2;->ck:Lcom/kwad/components/ad/c/g$2;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/kwad/components/ad/c/g$2;->bO:Lcom/kwad/sdk/api/KsLoadManager$BannerAdListener;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/kwad/components/ad/c/g$2$2;->cm:Lcom/kwad/sdk/api/KsBannerAd;

    .line 8
    .line 9
    iget-wide v4, v1, Lcom/kwad/components/ad/c/g$2;->ch:J

    .line 10
    .line 11
    invoke-static {v0, v2, v3, v4, v5}, Lcom/kwad/components/ad/c/g;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/api/KsLoadManager$BannerAdListener;Lcom/kwad/sdk/api/KsBannerAd;J)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
