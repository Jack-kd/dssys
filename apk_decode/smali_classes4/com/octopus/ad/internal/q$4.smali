.class Lcom/octopus/ad/internal/q$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/q;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/octopus/ad/internal/q;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/q;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/q$4;->b:Lcom/octopus/ad/internal/q;

    .line 2
    .line 3
    iput p2, p0, Lcom/octopus/ad/internal/q$4;->a:I

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
    new-instance v1, Lcom/octopus/ad/internal/q$4$1;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/q$4$1;-><init>(Lcom/octopus/ad/internal/q$4;)V

    .line 8
    .line 9
    .line 10
    iget v2, p0, Lcom/octopus/ad/internal/q$4;->a:I

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/octopus/ad/utils/OctUtil;->a(Lcom/octopus/ad/utils/OctUtil$C;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    const-string v1, "OctopusAd"

    .line 18
    .line 19
    const-string v2, "A Throwable Caught"

    .line 20
    .line 21
    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
