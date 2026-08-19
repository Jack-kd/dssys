.class Lcom/octopus/ad/internal/e/a$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/e/a;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/e/a;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/e/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a$30;->a:Lcom/octopus/ad/internal/e/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "adClick"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$30;->a:Lcom/octopus/ad/internal/e/a;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->m(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/a/d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Lcom/octopus/ad/internal/e/a;->a(Lcom/octopus/ad/a/d;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-string v0, "getReward"

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$30;->a:Lcom/octopus/ad/internal/e/a;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->w(Lcom/octopus/ad/internal/e/a;)Landroid/widget/ImageView;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$30;->a:Lcom/octopus/ad/internal/e/a;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->w(Lcom/octopus/ad/internal/e/a;)Landroid/widget/ImageView;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$30;->a:Lcom/octopus/ad/internal/e/a;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/octopus/ad/internal/e/a;->p()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    const-string v0, "StopoverFinish"

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$30;->a:Lcom/octopus/ad/internal/e/a;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->E(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/b/a;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$30;->a:Lcom/octopus/ad/internal/e/a;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/octopus/ad/internal/e/a;->E(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/b/a;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lcom/octopus/ad/b/a;->c()V

    .line 74
    .line 75
    .line 76
    :cond_3
    invoke-static {}, Lcom/octopus/ad/internal/k;->a()Lcom/octopus/ad/internal/k;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$30;->a:Lcom/octopus/ad/internal/e/a;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->ab(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/internal/k$a;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1, v0}, Lcom/octopus/ad/internal/k;->b(Lcom/octopus/ad/internal/k$a;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$30;->a:Lcom/octopus/ad/internal/e/a;

    .line 90
    .line 91
    const/4 v0, 0x0

    .line 92
    invoke-static {p1, v0}, Lcom/octopus/ad/internal/e/a;->a(Lcom/octopus/ad/internal/e/a;Lcom/octopus/ad/internal/k$a;)Lcom/octopus/ad/internal/k$a;

    .line 93
    .line 94
    .line 95
    :cond_4
    return-void
.end method
