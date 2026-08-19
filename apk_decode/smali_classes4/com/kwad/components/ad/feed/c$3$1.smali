.class final Lcom/kwad/components/ad/feed/c$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/feed/c$3;->e(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic hq:Lcom/kwad/components/ad/feed/c$3;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/feed/c$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/feed/c$3$1;->hq:Lcom/kwad/components/ad/feed/c$3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/ad/feed/c$3$1;->hq:Lcom/kwad/components/ad/feed/c$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/ad/feed/c$3;->hl:Lcom/kwad/components/ad/feed/c;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/kwad/components/ad/feed/c;->b(Lcom/kwad/components/ad/feed/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eI(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    iget-object v3, p0, Lcom/kwad/components/ad/feed/c$3$1;->hq:Lcom/kwad/components/ad/feed/c$3;

    .line 18
    .line 19
    iget-wide v3, v3, Lcom/kwad/components/ad/feed/c$3;->hm:J

    .line 20
    .line 21
    sub-long/2addr v1, v3

    .line 22
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/commercial/convert/d;->e(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/ad/feed/c$3$1;->hq:Lcom/kwad/components/ad/feed/c$3;

    .line 31
    .line 32
    iget-object v1, v0, Lcom/kwad/components/ad/feed/c$3;->hn:Lcom/kwad/sdk/api/KsFeedAd$AdRenderListener;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/kwad/components/ad/feed/c$3;->hl:Lcom/kwad/components/ad/feed/c;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/kwad/components/ad/feed/c;->c(Lcom/kwad/components/ad/feed/c;)Lcom/kwad/components/core/widget/b;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v1, v0}, Lcom/kwad/sdk/api/KsFeedAd$AdRenderListener;->onAdRenderSuccess(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/kwad/components/ad/feed/c$3$1;->hq:Lcom/kwad/components/ad/feed/c$3;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/kwad/components/ad/feed/c$3;->hl:Lcom/kwad/components/ad/feed/c;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/kwad/components/ad/feed/c;->b(Lcom/kwad/components/ad/feed/c;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/kwad/components/ad/feed/c$3$1;->hq:Lcom/kwad/components/ad/feed/c$3;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/kwad/components/ad/feed/c$3;->hl:Lcom/kwad/components/ad/feed/c;

    .line 54
    .line 55
    invoke-static {v1}, Lcom/kwad/components/ad/feed/c;->d(Lcom/kwad/components/ad/feed/c;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->bh(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/kwad/components/ad/feed/c$3$1;->hq:Lcom/kwad/components/ad/feed/c$3;

    .line 64
    .line 65
    iget-object v2, v2, Lcom/kwad/components/ad/feed/c$3;->hl:Lcom/kwad/components/ad/feed/c;

    .line 66
    .line 67
    invoke-static {v2}, Lcom/kwad/components/ad/feed/c;->e(Lcom/kwad/components/ad/feed/c;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    const/4 v3, 0x2

    .line 76
    invoke-static {v3, v0, v1, v2}, Lcom/kwad/components/ad/feed/monitor/b;->a(ILcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    return-void
.end method
