.class Lcom/fl/saas/K0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/interfaces/S2SVideoPlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/K0;->b(Lcom/fl/saas/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fl/saas/K0;


# direct methods
.method public constructor <init>(Lcom/fl/saas/K0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/K0$b;->a:Lcom/fl/saas/K0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onVideoPlayComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/K0$b;->a:Lcom/fl/saas/K0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/fl/saas/K0;->e(Lcom/fl/saas/K0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onVideoPlayError(II)V
    .locals 0

    return-void
.end method

.method public onVideoPlayStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/K0$b;->a:Lcom/fl/saas/K0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/fl/saas/K0;->d(Lcom/fl/saas/K0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onVideoPrepare()V
    .locals 2

    .line 1
    sget v0, Lcom/fl/saas/adx/util/DeviceUtil;->filling_timing:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/fl/saas/K0$b;->a:Lcom/fl/saas/K0;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/fl/saas/K0;->c(Lcom/fl/saas/K0;)Lcom/fl/saas/G0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/fl/saas/K0$b;->a:Lcom/fl/saas/K0;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/fl/saas/K0;->c(Lcom/fl/saas/K0;)Lcom/fl/saas/G0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lcom/fl/saas/G0;->a()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
