.class Lcom/fl/saas/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/fl/saas/g;


# direct methods
.method public constructor <init>(Lcom/fl/saas/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/g$b;->a:Lcom/fl/saas/g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/fl/saas/g$b;->a:Lcom/fl/saas/g;

    invoke-static {v0}, Lcom/fl/saas/g;->access$400(Lcom/fl/saas/g;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/g$b;->a:Lcom/fl/saas/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fl/saas/g;->access$402(Lcom/fl/saas/g;Z)Z

    iget-object v0, p0, Lcom/fl/saas/g$b;->a:Lcom/fl/saas/g;

    new-instance v1, Lcom/fl/saas/adx/base/manager/f;

    invoke-direct {v1}, Lcom/fl/saas/adx/base/manager/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fl/saas/o;->handleListenerEvent(Lcom/fl/saas/B;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/g$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/g$b;->a()V

    return-void
.end method


# virtual methods
.method public getAdMaterialData()Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/g$b;->a:Lcom/fl/saas/g;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/fl/saas/adx/base/interfaces/AdMaterial;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/fl/saas/n;->getMaterialData()Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v0, v0, Lcom/fl/saas/j;->a:I

    .line 17
    .line 18
    invoke-static {v0}, Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;->createEmpty(I)Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public getEcpm()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/g$b;->a:Lcom/fl/saas/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/fl/saas/j;->g()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isAdReady()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fl/saas/g$b;->a:Lcom/fl/saas/g;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/fl/saas/g;->access$100(Lcom/fl/saas/g;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/fl/saas/g$b;->a:Lcom/fl/saas/g;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/fl/saas/g;->access$300(Lcom/fl/saas/g;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getBootTime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    iget-object v2, p0, Lcom/fl/saas/g$b;->a:Lcom/fl/saas/g;

    .line 26
    .line 27
    invoke-static {v2}, Lcom/fl/saas/g;->access$300(Lcom/fl/saas/g;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    sub-long/2addr v0, v2

    .line 32
    iget-object v2, p0, Lcom/fl/saas/g$b;->a:Lcom/fl/saas/g;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget v2, v2, Lcom/fl/saas/j;->D1:I

    .line 39
    .line 40
    int-to-long v2, v2

    .line 41
    const-wide/16 v4, 0x3e8

    .line 42
    .line 43
    mul-long/2addr v2, v4

    .line 44
    cmp-long v0, v0, v2

    .line 45
    .line 46
    if-gez v0, :cond_0

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    return v0

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 51
    return v0
.end method

.method public show(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fl/saas/g$b;->a:Lcom/fl/saas/g;

    invoke-static {v0}, Lcom/fl/saas/g;->access$100(Lcom/fl/saas/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/g$b;->a:Lcom/fl/saas/g;

    invoke-virtual {v0}, Lcom/fl/saas/o;->getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewListener;

    move-result-object v0

    instance-of v0, v0, Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/fl/saas/u2;

    invoke-direct {v0, p0}, Lcom/fl/saas/u2;-><init>(Lcom/fl/saas/g$b;)V

    const-wide/16 v1, 0x1770

    invoke-static {v1, v2, v0}, Lcom/fl/saas/adx/util/DeviceUtil;->postUIDelayed(JLjava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/g$b;->a:Lcom/fl/saas/g;

    invoke-virtual {v0}, Lcom/fl/saas/n;->reportRequestShow()V

    iget-object v0, p0, Lcom/fl/saas/g$b;->a:Lcom/fl/saas/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fl/saas/g;->access$102(Lcom/fl/saas/g;Z)Z

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/g$b;->a:Lcom/fl/saas/g;

    invoke-virtual {v0, p1}, Lcom/fl/saas/n;->setContext(Landroid/content/Context;)Lcom/fl/saas/n;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/fl/saas/g$b;->a:Lcom/fl/saas/g;

    invoke-static {p1}, Lcom/fl/saas/g;->access$000(Lcom/fl/saas/g;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spreadLoadListener show:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fl/saas/g$b;->a:Lcom/fl/saas/g;

    invoke-static {p1, p2}, Lcom/fl/saas/g;->access$200(Lcom/fl/saas/g;Landroid/view/ViewGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    iget-object p2, p0, Lcom/fl/saas/g$b;->a:Lcom/fl/saas/g;

    new-instance v0, Lcom/fl/saas/adx/base/exception/FLError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x4fb5

    invoke-direct {v0, v1, p1}, Lcom/fl/saas/adx/base/exception/FLError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/fl/saas/g;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method public show(Landroid/view/ViewGroup;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/fl/saas/g$b;->a:Lcom/fl/saas/g;

    invoke-virtual {v0}, Lcom/fl/saas/n;->getActivityOrNull()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/fl/saas/g$b;->a:Lcom/fl/saas/g;

    invoke-static {v1}, Lcom/fl/saas/g;->access$000(Lcom/fl/saas/g;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "spreadLoadListener show:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fl/saas/g$b;->a:Lcom/fl/saas/g;

    invoke-static {v3}, Lcom/fl/saas/g;->access$100(Lcom/fl/saas/g;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/fl/saas/g$b;->show(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    return-void
.end method
