.class final Lcom/kwad/components/ad/splashscreen/b$4;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/splashscreen/b;->a(Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;Lcom/kwad/sdk/api/KsSplashScreenAd;Lcom/kwad/sdk/core/response/model/AdTemplate;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Gl:Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;

.field final synthetic Gu:Lcom/kwad/sdk/api/KsSplashScreenAd;

.field final synthetic Gv:I

.field final synthetic ch:J

.field final synthetic cn:Lcom/kwad/sdk/core/response/model/AdTemplate;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/api/KsSplashScreenAd;Lcom/kwad/sdk/core/response/model/AdTemplate;JILcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/splashscreen/b$4;->Gu:Lcom/kwad/sdk/api/KsSplashScreenAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/splashscreen/b$4;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/kwad/components/ad/splashscreen/b$4;->ch:J

    .line 6
    .line 7
    iput p5, p0, Lcom/kwad/components/ad/splashscreen/b$4;->Gv:I

    .line 8
    .line 9
    iput-object p6, p0, Lcom/kwad/components/ad/splashscreen/b$4;->Gl:Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/components/ad/KsAdLoadManager;->O()Lcom/kwad/components/ad/KsAdLoadManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/b$4;->Gu:Lcom/kwad/sdk/api/KsSplashScreenAd;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/KsAdLoadManager;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    .line 9
    .line 10
    :try_start_1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/b$4;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eI(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    iget-wide v3, p0, Lcom/kwad/components/ad/splashscreen/b$4;->ch:J

    .line 21
    .line 22
    sub-long/2addr v1, v3

    .line 23
    iget v3, p0, Lcom/kwad/components/ad/splashscreen/b$4;->Gv:I

    .line 24
    .line 25
    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/commercial/convert/d;->a(IJI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    :try_start_2
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/b$4;->Gl:Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/b$4;->Gu:Lcom/kwad/sdk/api/KsSplashScreenAd;

    .line 36
    .line 37
    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;->onSplashScreenAdLoad(Lcom/kwad/sdk/api/KsSplashScreenAd;)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/monitor/a;->mt()Lcom/kwad/components/ad/splashscreen/monitor/a;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/b$4;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/splashscreen/monitor/a;->am(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_1
    move-exception v0

    .line 51
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
