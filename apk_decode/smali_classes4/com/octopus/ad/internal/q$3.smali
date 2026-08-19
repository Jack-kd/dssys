.class Lcom/octopus/ad/internal/q$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/d/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/q;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/q;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/q$3;->a:Lcom/octopus/ad/internal/q;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 4
    const-string v0, "OctopusAd"

    const-string v1, "\u4e0a\u62a5\u6d3b\u8dc3\u91cf"

    invoke-static {v0, v1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(JJ)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5728\u7ebf\u65f6\u957f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v1, p3, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OctopusAd"

    invoke-static {v1, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/q$3;->a:Lcom/octopus/ad/internal/q;

    iget-object v0, v0, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    const-string v1, "startTime"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/octopus/ad/internal/c/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/octopus/ad/internal/q$3;->a:Lcom/octopus/ad/internal/q;

    iget-object p1, p1, Lcom/octopus/ad/internal/q;->t:Landroid/content/Context;

    const-string p2, "endTime"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/octopus/ad/internal/c/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
