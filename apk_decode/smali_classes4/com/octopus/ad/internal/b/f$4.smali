.class Lcom/octopus/ad/internal/b/f$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/f;->a(Lcom/octopus/ad/listener/OnCpaListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/listener/OnCpaListener;

.field final synthetic b:Lcom/octopus/ad/internal/b/f;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/f;Lcom/octopus/ad/listener/OnCpaListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/f$4;->b:Lcom/octopus/ad/internal/b/f;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/b/f$4;->a:Lcom/octopus/ad/listener/OnCpaListener;

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
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/octopus/ad/internal/q;->n()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "/sdk/cpa/callback?requestId="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/octopus/ad/internal/b/f$4;->b:Lcom/octopus/ad/internal/b/f;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/octopus/ad/internal/b/f;->c(Lcom/octopus/ad/internal/b/f;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Lcom/octopus/ad/internal/t;

    .line 36
    .line 37
    invoke-direct {v1, v0}, Lcom/octopus/ad/internal/t;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lcom/octopus/ad/internal/b/f$4$1;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/b/f$4$1;-><init>(Lcom/octopus/ad/internal/b/f$4;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Lcom/octopus/ad/internal/t;->a(Lcom/octopus/ad/internal/c/d$a;)Lcom/octopus/ad/internal/t;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/octopus/ad/internal/c/d;->b()V

    .line 50
    .line 51
    .line 52
    return-void
.end method
