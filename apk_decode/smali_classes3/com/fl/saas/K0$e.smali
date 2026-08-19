.class Lcom/fl/saas/K0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/api/mixNative/NativeCustomizeVideo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/K0;->getCustomizeVideo()Lcom/fl/saas/adx/api/mixNative/NativeCustomizeVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fl/saas/j;

.field final synthetic b:Lcom/fl/saas/K0;


# direct methods
.method public constructor <init>(Lcom/fl/saas/K0;Lcom/fl/saas/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/K0$e;->b:Lcom/fl/saas/K0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/fl/saas/K0$e;->a:Lcom/fl/saas/j;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/K0$e;->a:Lcom/fl/saas/j;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fl/saas/j;->t1:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public reportVideoAutoStart()V
    .locals 0

    return-void
.end method

.method public reportVideoBreak(J)V
    .locals 0

    return-void
.end method

.method public reportVideoContinue(J)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/fl/saas/K0$e;->a:Lcom/fl/saas/j;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lcom/fl/saas/x;->h(Lcom/fl/saas/j;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public reportVideoError(JII)V
    .locals 0

    return-void
.end method

.method public reportVideoFinish()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/fl/saas/K0$e;->a:Lcom/fl/saas/j;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/fl/saas/x;->b(Lcom/fl/saas/j;I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/fl/saas/K0$e;->b:Lcom/fl/saas/K0;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/fl/saas/K0;->b(Lcom/fl/saas/K0;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public reportVideoFirst()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/fl/saas/K0$e;->a:Lcom/fl/saas/j;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/fl/saas/x;->i(Lcom/fl/saas/j;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public reportVideoPause(J)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/fl/saas/K0$e;->a:Lcom/fl/saas/j;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lcom/fl/saas/x;->l(Lcom/fl/saas/j;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public reportVideoStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public reportVideoStart(J)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/fl/saas/K0$e;->a:Lcom/fl/saas/j;

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    iput v1, v0, Lcom/fl/saas/j;->X1:I

    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/K0$e;->a:Lcom/fl/saas/j;

    long-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/fl/saas/x;->d(Lcom/fl/saas/j;I)V

    iget-object p1, p0, Lcom/fl/saas/K0$e;->b:Lcom/fl/saas/K0;

    invoke-static {p1}, Lcom/fl/saas/K0;->j(Lcom/fl/saas/K0;)V

    return-void
.end method

.method public reportVideoStartError(II)V
    .locals 0

    return-void
.end method

.method public reportVideoThird()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/fl/saas/K0$e;->a:Lcom/fl/saas/j;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/fl/saas/x;->m(Lcom/fl/saas/j;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public reportVideomMidpoint()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/fl/saas/K0$e;->a:Lcom/fl/saas/j;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/fl/saas/x;->n(Lcom/fl/saas/j;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
