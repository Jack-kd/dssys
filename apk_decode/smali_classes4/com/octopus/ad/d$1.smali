.class Lcom/octopus/ad/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/d;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/d;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/d$1;->a:Lcom/octopus/ad/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/octopus/ad/d$1;->a:Lcom/octopus/ad/d;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/octopus/ad/d;->a(Lcom/octopus/ad/d;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/octopus/ad/d$1;->a:Lcom/octopus/ad/d;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/octopus/ad/d;->a(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/b/f;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/octopus/ad/d$1;->a:Lcom/octopus/ad/d;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/octopus/ad/d;->a(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/b/f;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->aj()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/d$1;->a:Lcom/octopus/ad/d;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/octopus/ad/d;->b(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/e/a;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/octopus/ad/d$1;->a:Lcom/octopus/ad/d;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/octopus/ad/d;->c(Lcom/octopus/ad/d;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/octopus/ad/d$1;->a:Lcom/octopus/ad/d;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/octopus/ad/d;->b(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/e/a;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/octopus/ad/internal/e/a;->o()V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/d$1;->a:Lcom/octopus/ad/d;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/octopus/ad/d;->d(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    iget-object p1, p0, Lcom/octopus/ad/d$1;->a:Lcom/octopus/ad/d;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/octopus/ad/d;->d(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/octopus/ad/internal/video/VideoStateListener;->onVideoCompleted()V

    .line 64
    .line 65
    .line 66
    :cond_2
    iget-object p1, p0, Lcom/octopus/ad/d$1;->a:Lcom/octopus/ad/d;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/octopus/ad/d;->a:Lcom/octopus/ad/internal/e/b;

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lcom/octopus/ad/internal/e/b;->a(I)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_3

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    iget-object p1, p0, Lcom/octopus/ad/d$1;->a:Lcom/octopus/ad/d;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/octopus/ad/d;->b(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/e/a;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    instance-of p1, p1, Lcom/octopus/ad/internal/e/f;

    .line 86
    .line 87
    if-eqz p1, :cond_4

    .line 88
    .line 89
    iget-object p1, p0, Lcom/octopus/ad/d$1;->a:Lcom/octopus/ad/d;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/octopus/ad/d;->b(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/e/a;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Lcom/octopus/ad/internal/e/f;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/octopus/ad/internal/e/f;->getAdImplementation()Lcom/octopus/ad/AdActivity$a;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-eqz p1, :cond_4

    .line 102
    .line 103
    iget-object p1, p0, Lcom/octopus/ad/d$1;->a:Lcom/octopus/ad/d;

    .line 104
    .line 105
    invoke-static {p1}, Lcom/octopus/ad/d;->b(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/e/a;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Lcom/octopus/ad/internal/e/f;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/octopus/ad/internal/e/f;->getAdImplementation()Lcom/octopus/ad/AdActivity$a;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Lcom/octopus/ad/e;

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/octopus/ad/e;->f()V

    .line 118
    .line 119
    .line 120
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/octopus/ad/d$1;->a:Lcom/octopus/ad/d;

    .line 121
    .line 122
    invoke-static {p1}, Lcom/octopus/ad/d;->b(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/e/a;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-eqz p1, :cond_5

    .line 127
    .line 128
    iget-object p1, p0, Lcom/octopus/ad/d$1;->a:Lcom/octopus/ad/d;

    .line 129
    .line 130
    invoke-static {p1}, Lcom/octopus/ad/d;->b(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/e/a;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1}, Lcom/octopus/ad/internal/e/a;->s()V

    .line 135
    .line 136
    .line 137
    :cond_5
    return-void
.end method
