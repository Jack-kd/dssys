.class public Lcom/fl/saas/O0;
.super Lcom/fl/saas/h;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/bidding/BiddingResult;
.implements Lcom/fl/saas/adx/base/interfaces/AdChangeCacheData;


# instance fields
.field private c:Lcom/fl/saas/M0;

.field private d:Lcom/fl/saas/j;

.field private e:Lcom/fl/saas/N0;

.field private f:Lcom/fl/saas/o0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/h;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/fl/saas/O0;->c:Lcom/fl/saas/M0;

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/O0;Lcom/fl/saas/N0;)Lcom/fl/saas/N0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/O0;->e:Lcom/fl/saas/N0;

    return-object p1
.end method

.method public static synthetic a(Lcom/fl/saas/O0;)Lcom/fl/saas/j;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/fl/saas/O0;->d:Lcom/fl/saas/j;

    return-object p0
.end method

.method public static synthetic a(Lcom/fl/saas/O0;Lcom/fl/saas/j;)Lcom/fl/saas/j;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/fl/saas/O0;->d:Lcom/fl/saas/j;

    return-object p1
.end method

.method public static synthetic a(Lcom/fl/saas/O0;Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/fl/saas/n;->disposeError(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method public static synthetic b(Lcom/fl/saas/O0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/h;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic c(Landroid/app/Activity;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/fl/saas/h;->onShowEvent()V

    iget-object v0, p0, Lcom/fl/saas/O0;->e:Lcom/fl/saas/N0;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/O0;->e:Lcom/fl/saas/N0;

    invoke-virtual {v1}, Lcom/fl/saas/N0;->d()Z

    move-result v1

    iput v1, v0, Lcom/fl/saas/j;->d0:I

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/O0;->e:Lcom/fl/saas/N0;

    invoke-virtual {v0, p1}, Lcom/fl/saas/N0;->a(Landroid/app/Activity;)V

    return-void

    :cond_1
    new-instance p1, Lcom/fl/saas/adx/base/exception/FLError;

    const/16 v0, 0x190

    const-string v1, "\u6682\u65e0\u53ef\u7528\u6fc0\u52b1\u89c6\u9891\u5e7f\u544a\uff0c\u8bf7\u7b49\u5f85\u7f13\u5b58\u52a0\u8f7d\u6216\u8005\u91cd\u65b0\u5237\u65b0"

    invoke-direct {p1, v0, v1}, Lcom/fl/saas/adx/base/exception/FLError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/fl/saas/n;->disposeError(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method public static synthetic c(Lcom/fl/saas/O0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/h;->c()V

    return-void
.end method

.method public static synthetic d(Lcom/fl/saas/O0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/h;->onClosedEvent()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lcom/fl/saas/O0;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fl/saas/O0;->c(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public biddingResult(ZIII)V
    .locals 0

    .line 1
    iget-object p4, p0, Lcom/fl/saas/O0;->d:Lcom/fl/saas/j;

    .line 2
    .line 3
    if-nez p4, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p3, p4, Lcom/fl/saas/j;->e:I

    .line 7
    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    if-lez p2, :cond_1

    .line 11
    .line 12
    iget p1, p4, Lcom/fl/saas/j;->d:I

    .line 13
    .line 14
    if-gt p2, p1, :cond_1

    .line 15
    .line 16
    iput p2, p4, Lcom/fl/saas/j;->d:I

    .line 17
    .line 18
    :cond_1
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p2, p0, Lcom/fl/saas/O0;->d:Lcom/fl/saas/j;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lcom/fl/saas/x;->b(Lcom/fl/saas/j;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    if-lez p2, :cond_3

    .line 29
    .line 30
    iput p2, p4, Lcom/fl/saas/j;->d:I

    .line 31
    .line 32
    :cond_3
    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p2, p0, Lcom/fl/saas/O0;->d:Lcom/fl/saas/j;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lcom/fl/saas/x;->a(Lcom/fl/saas/j;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/fl/saas/n;->destroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fl/saas/O0;->c:Lcom/fl/saas/M0;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/fl/saas/n;->isCache()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/fl/saas/O0;->c:Lcom/fl/saas/M0;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/fl/saas/M0;->a()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/n;->getActivityValid()Lcom/fl/saas/p0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/fl/saas/z1;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/fl/saas/z1;-><init>(Lcom/fl/saas/O0;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public handle(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/fl/saas/O0;->f:Lcom/fl/saas/o0;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/fl/saas/O0$a;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Lcom/fl/saas/O0$a;-><init>(Lcom/fl/saas/O0;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/fl/saas/O0;->f:Lcom/fl/saas/o0;

    .line 11
    .line 12
    :cond_0
    new-instance p1, Lcom/fl/saas/M0;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/fl/saas/O0;->f:Lcom/fl/saas/o0;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {p1, v0, v1}, Lcom/fl/saas/M0;-><init>(Lcom/fl/saas/o0;Z)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/fl/saas/O0;->c:Lcom/fl/saas/M0;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/fl/saas/n;->getPlaceId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0}, Lcom/fl/saas/n;->getLinkId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p0}, Lcom/fl/saas/n;->isHot()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {p1, v0, v1, v2}, Lcom/fl/saas/M0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public setCacheData(Ljava/lang/String;Lcom/fl/saas/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/O0;->d:Lcom/fl/saas/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, v0, Lcom/fl/saas/j;->r:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p1, p2, Lcom/fl/saas/j;->Z:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p1, v0, Lcom/fl/saas/j;->Z:Ljava/lang/String;

    .line 10
    .line 11
    iget-object p1, p2, Lcom/fl/saas/j;->i:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p1, v0, Lcom/fl/saas/j;->i:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p1, p2, Lcom/fl/saas/j;->h:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p1, v0, Lcom/fl/saas/j;->b0:Ljava/lang/String;

    .line 18
    .line 19
    iget-object p1, p2, Lcom/fl/saas/j;->i:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p1, v0, Lcom/fl/saas/j;->a0:Ljava/lang/String;

    .line 22
    .line 23
    iget-object p1, p2, Lcom/fl/saas/j;->j:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p1, v0, Lcom/fl/saas/j;->c0:Ljava/lang/String;

    .line 26
    .line 27
    :cond_0
    return-void
.end method
