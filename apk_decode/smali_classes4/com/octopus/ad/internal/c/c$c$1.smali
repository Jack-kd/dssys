.class Lcom/octopus/ad/internal/c/c$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/c/c$c;->a(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/octopus/ad/internal/c/c$c;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/c/c$c;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/c/c$c$1;->c:Lcom/octopus/ad/internal/c/c$c;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/octopus/ad/internal/c/c$c$1;->a:J

    .line 4
    .line 5
    iput-wide p4, p0, Lcom/octopus/ad/internal/c/c$c$1;->b:J

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/c/c$c$1;->c:Lcom/octopus/ad/internal/c/c$c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/internal/c/c$c;->a(Lcom/octopus/ad/internal/c/c$c;)Lcom/octopus/ad/internal/c/c$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/octopus/ad/internal/c/c$c$1;->c:Lcom/octopus/ad/internal/c/c$c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/octopus/ad/internal/c/c$c;->a(Lcom/octopus/ad/internal/c/c$c;)Lcom/octopus/ad/internal/c/c$b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-wide v1, p0, Lcom/octopus/ad/internal/c/c$c$1;->a:J

    .line 16
    .line 17
    iget-wide v3, p0, Lcom/octopus/ad/internal/c/c$c$1;->b:J

    .line 18
    .line 19
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/octopus/ad/internal/c/c$b;->a(JJ)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
