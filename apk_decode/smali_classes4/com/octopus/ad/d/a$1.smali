.class Lcom/octopus/ad/d/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/d/a;->a(Landroid/content/Context;DDI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:D

.field final synthetic b:D

.field final synthetic c:Lcom/octopus/ad/d/a;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/d/a;DD)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/d/a$1;->c:Lcom/octopus/ad/d/a;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/octopus/ad/d/a$1;->a:D

    .line 4
    .line 5
    iput-wide p4, p0, Lcom/octopus/ad/d/a$1;->b:D

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/d/a$1;->c:Lcom/octopus/ad/d/a;

    .line 2
    .line 3
    iget v1, v0, Lcom/octopus/ad/d/a;->a:I

    .line 4
    .line 5
    int-to-double v1, v1

    .line 6
    iget-wide v3, p0, Lcom/octopus/ad/d/a$1;->a:D

    .line 7
    .line 8
    mul-double/2addr v1, v3

    .line 9
    double-to-int v1, v1

    .line 10
    iget v0, v0, Lcom/octopus/ad/d/a;->b:I

    .line 11
    .line 12
    int-to-double v2, v0

    .line 13
    iget-wide v4, p0, Lcom/octopus/ad/d/a$1;->b:D

    .line 14
    .line 15
    mul-double/2addr v2, v4

    .line 16
    double-to-int v0, v2

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, ""

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v2, "input"

    .line 50
    .line 51
    const-string v3, "tap"

    .line 52
    .line 53
    filled-new-array {v2, v3, v1, v0}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :try_start_0
    new-instance v1, Ljava/lang/ProcessBuilder;

    .line 58
    .line 59
    invoke-direct {v1, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-string v1, "OctopusAd"

    .line 68
    .line 69
    const-string v2, "An Exception Caught"

    .line 70
    .line 71
    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method
