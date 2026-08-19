.class Lcom/octopus/ad/internal/b/f$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/f;->a(Landroid/content/Context;IZZZLcom/octopus/ad/a/d;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/octopus/ad/internal/b/f;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/f;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/f$9;->b:Lcom/octopus/ad/internal/b/f;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/b/f$9;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "AppSelfForeground"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/octopus/ad/internal/b/f$9;->b:Lcom/octopus/ad/internal/b/f;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/octopus/ad/internal/b/f;->g(Lcom/octopus/ad/internal/b/f;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    new-instance p1, Landroid/os/Handler;

    .line 18
    .line 19
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/octopus/ad/internal/b/f$9$1;

    .line 23
    .line 24
    invoke-direct {v0, p0, p0}, Lcom/octopus/ad/internal/b/f$9$1;-><init>(Lcom/octopus/ad/internal/b/f$9;Lcom/octopus/ad/internal/k$a;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/octopus/ad/internal/b/f$9;->b:Lcom/octopus/ad/internal/b/f;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/octopus/ad/internal/b/f;->i(Lcom/octopus/ad/internal/b/f;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    int-to-long v1, v1

    .line 34
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/b/f$9;->b:Lcom/octopus/ad/internal/b/f;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/octopus/ad/internal/b/f;->h(Lcom/octopus/ad/internal/b/f;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-static {}, Lcom/octopus/ad/utils/OctUtil;->a()Lcom/octopus/ad/utils/OctUtil;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/octopus/ad/internal/b/f$9;->a:Landroid/content/Context;

    .line 50
    .line 51
    const/16 v1, 0x3f1

    .line 52
    .line 53
    invoke-virtual {p1, v0, v1}, Lcom/octopus/ad/utils/OctUtil;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/octopus/ad/internal/b/f$9;->b:Lcom/octopus/ad/internal/b/f;

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-static {p1, v0}, Lcom/octopus/ad/internal/b/f;->b(Lcom/octopus/ad/internal/b/f;Z)Z

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/octopus/ad/internal/b/f$9;->b:Lcom/octopus/ad/internal/b/f;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/octopus/ad/internal/b/f;->g(Lcom/octopus/ad/internal/b/f;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_1

    .line 69
    .line 70
    invoke-static {}, Lcom/octopus/ad/internal/k;->a()Lcom/octopus/ad/internal/k;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1, p0}, Lcom/octopus/ad/internal/k;->b(Lcom/octopus/ad/internal/k$a;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    return-void
.end method
