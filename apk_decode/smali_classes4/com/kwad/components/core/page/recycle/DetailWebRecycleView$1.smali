.class final Lcom/kwad/components/core/page/recycle/DetailWebRecycleView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/page/recycle/DetailWebRecycleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic afh:Lcom/kwad/components/core/page/recycle/DetailWebRecycleView;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/page/recycle/DetailWebRecycleView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/page/recycle/DetailWebRecycleView$1;->afh:Lcom/kwad/components/core/page/recycle/DetailWebRecycleView;

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
    iget-object v0, p0, Lcom/kwad/components/core/page/recycle/DetailWebRecycleView$1;->afh:Lcom/kwad/components/core/page/recycle/DetailWebRecycleView;

    .line 2
    .line 3
    const-string v1, "mGapWorker"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/ab;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "postFromTraversal"

    .line 12
    .line 13
    iget-object v2, p0, Lcom/kwad/components/core/page/recycle/DetailWebRecycleView$1;->afh:Lcom/kwad/components/core/page/recycle/DetailWebRecycleView;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget-object v4, p0, Lcom/kwad/components/core/page/recycle/DetailWebRecycleView$1;->afh:Lcom/kwad/components/core/page/recycle/DetailWebRecycleView;

    .line 21
    .line 22
    invoke-static {v4}, Lcom/kwad/components/core/page/recycle/DetailWebRecycleView;->a(Lcom/kwad/components/core/page/recycle/DetailWebRecycleView;)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ab;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void

    .line 41
    :goto_0
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
