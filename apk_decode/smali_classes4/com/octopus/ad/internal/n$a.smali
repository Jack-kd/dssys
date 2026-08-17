.class Lcom/octopus/ad/internal/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/y$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:J

.field final synthetic b:Lcom/octopus/ad/internal/n;


# direct methods
.method private constructor <init>(Lcom/octopus/ad/internal/n;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/n$a;->b:Lcom/octopus/ad/internal/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/octopus/ad/internal/n$a;->a:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/octopus/ad/internal/n;Lcom/octopus/ad/internal/n$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/n$a;-><init>(Lcom/octopus/ad/internal/n;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-wide v0, p0, Lcom/octopus/ad/internal/n$a;->a:J

    .line 4
    .line 5
    const-wide/16 v2, 0xfa

    .line 6
    .line 7
    add-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Lcom/octopus/ad/internal/n$a;->a:J

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/octopus/ad/internal/n$a;->a:J

    .line 14
    .line 15
    :goto_0
    iget-wide v0, p0, Lcom/octopus/ad/internal/n$a;->a:J

    .line 16
    .line 17
    const-wide/16 v2, 0x1f4

    .line 18
    .line 19
    cmp-long p1, v0, v2

    .line 20
    .line 21
    if-ltz p1, :cond_2

    .line 22
    .line 23
    iget-object p1, p0, Lcom/octopus/ad/internal/n$a;->b:Lcom/octopus/ad/internal/n;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/octopus/ad/internal/n;->b(Lcom/octopus/ad/internal/n;)Lcom/octopus/ad/internal/y;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/octopus/ad/internal/n$a;->b:Lcom/octopus/ad/internal/n;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/octopus/ad/internal/n;->b(Lcom/octopus/ad/internal/n;)Lcom/octopus/ad/internal/y;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/octopus/ad/internal/y;->a()V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/n$a;->b:Lcom/octopus/ad/internal/n;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/octopus/ad/internal/n;->c(Lcom/octopus/ad/internal/n;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method
