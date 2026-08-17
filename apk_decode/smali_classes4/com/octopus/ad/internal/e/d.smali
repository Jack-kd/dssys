.class public Lcom/octopus/ad/internal/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/e/e;


# instance fields
.field private final a:J

.field private final b:Lcom/octopus/ad/internal/e/c;

.field private final c:Z


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/e/c;Ljava/lang/Long;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/octopus/ad/internal/e/d;->a:J

    .line 9
    .line 10
    iput-object p1, p0, Lcom/octopus/ad/internal/e/d;->b:Lcom/octopus/ad/internal/e/c;

    .line 11
    .line 12
    iput-boolean p3, p0, Lcom/octopus/ad/internal/e/d;->c:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/internal/e/d;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/d;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public c()Lcom/octopus/ad/internal/e/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/d;->b:Lcom/octopus/ad/internal/e/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/octopus/ad/internal/e/c;->getAdWebView()Lcom/octopus/ad/internal/e/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
