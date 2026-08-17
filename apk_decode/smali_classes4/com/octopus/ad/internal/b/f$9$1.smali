.class Lcom/octopus/ad/internal/b/f$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/f$9;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/k$a;

.field final synthetic b:Lcom/octopus/ad/internal/b/f$9;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/f$9;Lcom/octopus/ad/internal/k$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/f$9$1;->b:Lcom/octopus/ad/internal/b/f$9;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/b/f$9$1;->a:Lcom/octopus/ad/internal/k$a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/octopus/ad/utils/OctUtil;->a()Lcom/octopus/ad/utils/OctUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/utils/OctUtil;->e()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/octopus/ad/internal/b/f$9$1;->b:Lcom/octopus/ad/internal/b/f$9;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/octopus/ad/internal/b/f$9;->b:Lcom/octopus/ad/internal/b/f;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/b/f;->a(Lcom/octopus/ad/internal/b/f;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    const-string v1, "OctopusAd"

    .line 19
    .line 20
    const-string v2, "A Throwable Caught"

    .line 21
    .line 22
    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/f$9$1;->b:Lcom/octopus/ad/internal/b/f$9;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/octopus/ad/internal/b/f$9;->b:Lcom/octopus/ad/internal/b/f;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/octopus/ad/internal/b/f;->h(Lcom/octopus/ad/internal/b/f;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    invoke-static {}, Lcom/octopus/ad/internal/k;->a()Lcom/octopus/ad/internal/k;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/octopus/ad/internal/b/f$9$1;->a:Lcom/octopus/ad/internal/k$a;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/k;->b(Lcom/octopus/ad/internal/k$a;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method
