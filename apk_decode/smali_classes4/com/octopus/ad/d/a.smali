.class public Lcom/octopus/ad/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/octopus/ad/d/a;->a:I

    .line 6
    .line 7
    iput v0, p0, Lcom/octopus/ad/d/a;->b:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;DDI)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getScreenWidth(Landroid/content/Context;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcom/octopus/ad/d/a;->a:I

    .line 9
    .line 10
    invoke-static {p1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getScreenHeight(Landroid/content/Context;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/octopus/ad/d/a;->b:I

    .line 15
    .line 16
    new-instance p1, Landroid/os/Handler;

    .line 17
    .line 18
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/octopus/ad/d/a$1;

    .line 22
    .line 23
    move-object v1, p0

    .line 24
    move-wide v2, p2

    .line 25
    move-wide v4, p4

    .line 26
    invoke-direct/range {v0 .. v5}, Lcom/octopus/ad/d/a$1;-><init>(Lcom/octopus/ad/d/a;DD)V

    .line 27
    .line 28
    .line 29
    int-to-long p2, p6

    .line 30
    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    move-object p1, v0

    .line 36
    const-string p2, "OctopusAd"

    .line 37
    .line 38
    const-string p3, "An Exception Caught"

    .line 39
    .line 40
    invoke-static {p2, p3, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
