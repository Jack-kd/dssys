.class Lcom/octopus/ad/internal/u$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/u;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/u;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/u$1;->a:Lcom/octopus/ad/internal/u;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IZLjava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/octopus/ad/internal/u$1;->a:Lcom/octopus/ad/internal/u;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/octopus/ad/internal/u;->a(Lcom/octopus/ad/internal/u;)Lcom/octopus/ad/internal/c/d$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/octopus/ad/internal/u$1;->a:Lcom/octopus/ad/internal/u;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/octopus/ad/internal/u;->a(Lcom/octopus/ad/internal/u;)Lcom/octopus/ad/internal/c/d$a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p1, p2, p3}, Lcom/octopus/ad/internal/c/d$a;->a(IZLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p2, p0, Lcom/octopus/ad/internal/u$1;->a:Lcom/octopus/ad/internal/u;

    .line 21
    .line 22
    invoke-static {p2, p1}, Lcom/octopus/ad/internal/u;->a(Lcom/octopus/ad/internal/u;I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object p2, p0, Lcom/octopus/ad/internal/u$1;->a:Lcom/octopus/ad/internal/u;

    .line 27
    .line 28
    invoke-static {p2}, Lcom/octopus/ad/internal/u;->b(Lcom/octopus/ad/internal/u;)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-lez p2, :cond_2

    .line 33
    .line 34
    new-instance p2, Landroid/os/Handler;

    .line 35
    .line 36
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance p3, Lcom/octopus/ad/internal/u$1$1;

    .line 40
    .line 41
    invoke-direct {p3, p0}, Lcom/octopus/ad/internal/u$1$1;-><init>(Lcom/octopus/ad/internal/u$1;)V

    .line 42
    .line 43
    .line 44
    const-wide/16 v0, 0xc8

    .line 45
    .line 46
    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object p2, p0, Lcom/octopus/ad/internal/u$1;->a:Lcom/octopus/ad/internal/u;

    .line 50
    .line 51
    invoke-static {p2}, Lcom/octopus/ad/internal/u;->b(Lcom/octopus/ad/internal/u;)I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-nez p2, :cond_3

    .line 56
    .line 57
    iget-object p2, p0, Lcom/octopus/ad/internal/u$1;->a:Lcom/octopus/ad/internal/u;

    .line 58
    .line 59
    invoke-static {p2, p1}, Lcom/octopus/ad/internal/u;->b(Lcom/octopus/ad/internal/u;I)V

    .line 60
    .line 61
    .line 62
    :cond_3
    return-void
.end method
