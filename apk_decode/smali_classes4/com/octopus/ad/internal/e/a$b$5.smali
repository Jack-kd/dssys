.class Lcom/octopus/ad/internal/e/a$b$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/e/a$b;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/octopus/ad/internal/e/a$b;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/e/a$b;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a$b$5;->b:Lcom/octopus/ad/internal/e/a$b;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/octopus/ad/internal/e/a$b$5;->a:J

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
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b$5;->b:Lcom/octopus/ad/internal/e/a$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->L(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/SplashAdListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b$5;->b:Lcom/octopus/ad/internal/e/a$b;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a$b;->a(Lcom/octopus/ad/internal/e/a$b;)Lcom/octopus/ad/internal/b/b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b$5;->b:Lcom/octopus/ad/internal/e/a$b;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a$b;->a(Lcom/octopus/ad/internal/e/a$b;)Lcom/octopus/ad/internal/b/b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Lcom/octopus/ad/internal/b/b;->a()Lcom/octopus/ad/internal/p;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v1, Lcom/octopus/ad/internal/p;->a:Lcom/octopus/ad/internal/p;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b$5;->b:Lcom/octopus/ad/internal/e/a$b;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->L(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/SplashAdListener;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-wide v1, p0, Lcom/octopus/ad/internal/e/a$b$5;->a:J

    .line 46
    .line 47
    invoke-interface {v0, v1, v2}, Lcom/octopus/ad/SplashAdListener;->onAdTick(J)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method
