.class Lcom/octopus/ad/internal/e/a$b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/e/a$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/e/a$b;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/e/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a$b$3;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b$3;->a:Lcom/octopus/ad/internal/e/a$b;

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
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b$3;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->L(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/SplashAdListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lcom/octopus/ad/SplashAdListener;->onAdClosed()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b$3;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->M(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/InterstitialAdListener;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b$3;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->M(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/InterstitialAdListener;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Lcom/octopus/ad/InterstitialAdListener;->onAdClosed()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b$3;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->N(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/FullScreenVideoAdListener;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b$3;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->N(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/FullScreenVideoAdListener;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {v0}, Lcom/octopus/ad/FullScreenVideoAdListener;->onAdClosed()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b$3;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->O(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/RewardVideoAdListener;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b$3;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->O(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/RewardVideoAdListener;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-interface {v0}, Lcom/octopus/ad/RewardVideoAdListener;->onRewardVideoAdClosed()V

    .line 86
    .line 87
    .line 88
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b$3;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/octopus/ad/internal/e/a;->a:Lcom/octopus/ad/internal/e/a$a;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a$a;->b()V

    .line 95
    .line 96
    .line 97
    return-void
.end method
