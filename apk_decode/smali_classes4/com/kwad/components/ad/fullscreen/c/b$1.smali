.class final Lcom/kwad/components/ad/fullscreen/c/b$1;
.super Lcom/kwad/components/core/webview/tachikoma/f/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/fullscreen/c/b;->dn()Lcom/kwad/components/core/webview/tachikoma/f/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic kr:Lcom/kwad/components/ad/fullscreen/c/b;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/fullscreen/c/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/fullscreen/c/b$1;->kr:Lcom/kwad/components/ad/fullscreen/c/b;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/components/core/webview/tachikoma/f/g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;JJJ)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/kwad/components/ad/fullscreen/c/b$1;->kr:Lcom/kwad/components/ad/fullscreen/c/b;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/kwad/components/ad/fullscreen/c/b;->b(Lcom/kwad/components/ad/fullscreen/c/b;)Lcom/kwad/components/ad/reward/g;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-wide p1, p1, Lcom/kwad/components/ad/reward/g;->mStartRenderTime:J

    .line 8
    .line 9
    const-wide/16 p3, 0x0

    .line 10
    .line 11
    cmp-long p1, p1, p3

    .line 12
    .line 13
    if-lez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/kwad/components/ad/fullscreen/c/b$1;->kr:Lcom/kwad/components/ad/fullscreen/c/b;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/kwad/components/ad/fullscreen/c/b;->c(Lcom/kwad/components/ad/fullscreen/c/b;)Lcom/kwad/components/ad/reward/g;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p1, p1, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eI(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    .line 29
    .line 30
    move-result-wide p2

    .line 31
    iget-object p4, p0, Lcom/kwad/components/ad/fullscreen/c/b$1;->kr:Lcom/kwad/components/ad/fullscreen/c/b;

    .line 32
    .line 33
    invoke-static {p4}, Lcom/kwad/components/ad/fullscreen/c/b;->d(Lcom/kwad/components/ad/fullscreen/c/b;)Lcom/kwad/components/ad/reward/g;

    .line 34
    .line 35
    .line 36
    move-result-object p4

    .line 37
    iget-wide p4, p4, Lcom/kwad/components/ad/reward/g;->mStartRenderTime:J

    .line 38
    .line 39
    sub-long/2addr p2, p4

    .line 40
    const/4 p4, 0x2

    .line 41
    invoke-static {p1, p4, p2, p3}, Lcom/kwad/sdk/commercial/convert/d;->b(IIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/kwad/components/ad/fullscreen/c/b$1;->kr:Lcom/kwad/components/ad/fullscreen/c/b;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/kwad/components/ad/fullscreen/c/b;->e(Lcom/kwad/components/ad/fullscreen/c/b;)Lcom/kwad/components/ad/reward/g;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const/4 p2, 0x1

    .line 56
    iput-boolean p2, p1, Lcom/kwad/components/ad/reward/g;->na:Z

    .line 57
    .line 58
    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "tk_fullscreen"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    const-string v0, "tk_live_video"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "tk_image_video"

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/kwad/components/ad/fullscreen/c/b$1;->kr:Lcom/kwad/components/ad/fullscreen/c/b;

    .line 27
    .line 28
    invoke-static {p1, p1}, Lcom/kwad/components/ad/fullscreen/c/b;->a(Lcom/kwad/components/ad/fullscreen/c/b;Lcom/kwad/components/ad/fullscreen/c/b;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/kwad/components/ad/fullscreen/c/b$1;->kr:Lcom/kwad/components/ad/fullscreen/c/b;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/kwad/components/ad/fullscreen/c/b;->j(Lcom/kwad/components/ad/fullscreen/c/b;)Lcom/kwad/components/ad/reward/g;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    sget-object v0, Lcom/kwad/components/ad/reward/RewardRenderResult;->DEFAULT:Lcom/kwad/components/ad/reward/RewardRenderResult;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/kwad/components/ad/reward/g;->a(Lcom/kwad/components/ad/reward/RewardRenderResult;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/kwad/components/ad/fullscreen/c/b$1;->kr:Lcom/kwad/components/ad/fullscreen/c/b;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/kwad/components/ad/fullscreen/c/b;->i(Lcom/kwad/components/ad/fullscreen/c/b;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void

    .line 48
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/kwad/components/ad/fullscreen/c/b$1;->kr:Lcom/kwad/components/ad/fullscreen/c/b;

    .line 49
    .line 50
    invoke-static {p1, p1}, Lcom/kwad/components/ad/fullscreen/c/b;->a(Lcom/kwad/components/ad/fullscreen/c/b;Lcom/kwad/components/ad/fullscreen/c/b;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/kwad/components/ad/fullscreen/c/b$1;->kr:Lcom/kwad/components/ad/fullscreen/c/b;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/kwad/components/ad/fullscreen/c/b;->f(Lcom/kwad/components/ad/fullscreen/c/b;)Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/b$1;->kr:Lcom/kwad/components/ad/fullscreen/c/b;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/kwad/components/ad/fullscreen/c/b;->g(Lcom/kwad/components/ad/fullscreen/c/b;)Lcom/kwad/components/ad/reward/g;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/kwad/components/ad/fullscreen/c/b$1;->kr:Lcom/kwad/components/ad/fullscreen/c/b;

    .line 66
    .line 67
    invoke-static {v1}, Lcom/kwad/components/ad/fullscreen/c/b;->h(Lcom/kwad/components/ad/fullscreen/c/b;)Landroid/widget/FrameLayout;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {p1, v0, v1}, Lcom/kwad/components/ad/reward/g;->a(Landroid/content/Context;Lcom/kwad/components/ad/reward/g;Landroid/view/ViewGroup;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/kwad/components/ad/fullscreen/c/b$1;->kr:Lcom/kwad/components/ad/fullscreen/c/b;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/kwad/components/ad/fullscreen/c/b;->i(Lcom/kwad/components/ad/fullscreen/c/b;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method
