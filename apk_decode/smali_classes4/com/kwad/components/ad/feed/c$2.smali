.class final Lcom/kwad/components/ad/feed/c$2;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/feed/c;->render(Lcom/kwad/sdk/api/KsFeedAd$AdRenderListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic hl:Lcom/kwad/components/ad/feed/c;

.field final synthetic hm:J

.field final synthetic hn:Lcom/kwad/sdk/api/KsFeedAd$AdRenderListener;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/feed/c;JLcom/kwad/sdk/api/KsFeedAd$AdRenderListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/feed/c$2;->hl:Lcom/kwad/components/ad/feed/c;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/kwad/components/ad/feed/c$2;->hm:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/kwad/components/ad/feed/c$2;->hn:Lcom/kwad/sdk/api/KsFeedAd$AdRenderListener;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/ad/feed/c$2;->hl:Lcom/kwad/components/ad/feed/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/feed/c;->b(Lcom/kwad/components/ad/feed/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eI(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    iget-wide v3, p0, Lcom/kwad/components/ad/feed/c$2;->hm:J

    .line 16
    .line 17
    sub-long/2addr v1, v3

    .line 18
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/commercial/convert/d;->e(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/ad/feed/c$2;->hn:Lcom/kwad/sdk/api/KsFeedAd$AdRenderListener;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/kwad/components/ad/feed/c$2;->hl:Lcom/kwad/components/ad/feed/c;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/kwad/components/ad/feed/c;->c(Lcom/kwad/components/ad/feed/c;)Lcom/kwad/components/core/widget/b;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/KsFeedAd$AdRenderListener;->onAdRenderSuccess(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/kwad/components/ad/feed/c$2;->hl:Lcom/kwad/components/ad/feed/c;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/kwad/components/ad/feed/c;->b(Lcom/kwad/components/ad/feed/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/kwad/components/ad/feed/c$2;->hl:Lcom/kwad/components/ad/feed/c;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/kwad/components/ad/feed/c;->d(Lcom/kwad/components/ad/feed/c;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->bh(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v2, p0, Lcom/kwad/components/ad/feed/c$2;->hl:Lcom/kwad/components/ad/feed/c;

    .line 54
    .line 55
    invoke-static {v2}, Lcom/kwad/components/ad/feed/c;->e(Lcom/kwad/components/ad/feed/c;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    const/4 v3, 0x2

    .line 64
    invoke-static {v3, v0, v1, v2}, Lcom/kwad/components/ad/feed/monitor/b;->a(ILcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
