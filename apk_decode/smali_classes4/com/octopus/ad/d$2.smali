.class Lcom/octopus/ad/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    iput-object p1, p0, Lcom/octopus/ad/d$2;->a:Lcom/octopus/ad/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1
    const/4 p1, 0x3

    .line 2
    if-eq p2, p1, :cond_3

    .line 3
    .line 4
    const/16 p1, 0x2be

    .line 5
    .line 6
    if-ne p2, p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/d$2;->a:Lcom/octopus/ad/d;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/octopus/ad/d;->f(Lcom/octopus/ad/d;)Lcom/octopus/ad/b/a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_6

    .line 16
    .line 17
    iget-object p1, p0, Lcom/octopus/ad/d$2;->a:Lcom/octopus/ad/d;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/octopus/ad/d;->f(Lcom/octopus/ad/d;)Lcom/octopus/ad/b/a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/octopus/ad/b/a;->f()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_6

    .line 28
    .line 29
    iget-object p1, p0, Lcom/octopus/ad/d$2;->a:Lcom/octopus/ad/d;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/octopus/ad/d;->f(Lcom/octopus/ad/d;)Lcom/octopus/ad/b/a;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/octopus/ad/b/a;->b()V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/octopus/ad/d$2;->a:Lcom/octopus/ad/d;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/octopus/ad/d;->d(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    iget-object p1, p0, Lcom/octopus/ad/d$2;->a:Lcom/octopus/ad/d;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/octopus/ad/d;->d(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/octopus/ad/internal/video/VideoStateListener;->onVideoStart()V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/d$2;->a:Lcom/octopus/ad/d;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/octopus/ad/d;->b(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/e/a;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    iget-object p1, p0, Lcom/octopus/ad/d$2;->a:Lcom/octopus/ad/d;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/octopus/ad/d;->b(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/e/a;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object p2, p0, Lcom/octopus/ad/d$2;->a:Lcom/octopus/ad/d;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Lcom/octopus/ad/internal/e/a;->a(Lcom/octopus/ad/d;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    iget-object p1, p0, Lcom/octopus/ad/d$2;->a:Lcom/octopus/ad/d;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/octopus/ad/d;->h(Lcom/octopus/ad/d;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/octopus/ad/d$2;->a:Lcom/octopus/ad/d;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/octopus/ad/d;->b(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/e/a;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    iget-object p1, p0, Lcom/octopus/ad/d$2;->a:Lcom/octopus/ad/d;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/octopus/ad/d;->b(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/e/a;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lcom/octopus/ad/internal/e/a;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    iget-object p1, p0, Lcom/octopus/ad/d$2;->a:Lcom/octopus/ad/d;

    .line 101
    .line 102
    invoke-static {p1}, Lcom/octopus/ad/d;->e(Lcom/octopus/ad/d;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/octopus/ad/d$2;->a:Lcom/octopus/ad/d;

    .line 106
    .line 107
    invoke-static {p1}, Lcom/octopus/ad/d;->b(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/e/a;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lcom/octopus/ad/internal/e/a;->i()V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/octopus/ad/d$2;->a:Lcom/octopus/ad/d;

    .line 115
    .line 116
    invoke-static {p1}, Lcom/octopus/ad/d;->b(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/e/a;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lcom/octopus/ad/internal/e/a;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-interface {p1}, Lcom/octopus/ad/internal/b;->d()V

    .line 125
    .line 126
    .line 127
    :cond_4
    iget-object p1, p0, Lcom/octopus/ad/d$2;->a:Lcom/octopus/ad/d;

    .line 128
    .line 129
    invoke-static {p1}, Lcom/octopus/ad/d;->f(Lcom/octopus/ad/d;)Lcom/octopus/ad/b/a;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-eqz p1, :cond_5

    .line 134
    .line 135
    iget-object p1, p0, Lcom/octopus/ad/d$2;->a:Lcom/octopus/ad/d;

    .line 136
    .line 137
    invoke-static {p1}, Lcom/octopus/ad/d;->f(Lcom/octopus/ad/d;)Lcom/octopus/ad/b/a;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1}, Lcom/octopus/ad/b/a;->c()V

    .line 142
    .line 143
    .line 144
    :cond_5
    iget-object p1, p0, Lcom/octopus/ad/d$2;->a:Lcom/octopus/ad/d;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/octopus/ad/d;->g(Lcom/octopus/ad/d;)Lcom/octopus/ad/b/a;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    if-eqz p1, :cond_6

    .line 151
    .line 152
    iget-object p1, p0, Lcom/octopus/ad/d$2;->a:Lcom/octopus/ad/d;

    .line 153
    .line 154
    invoke-static {p1}, Lcom/octopus/ad/d;->g(Lcom/octopus/ad/d;)Lcom/octopus/ad/b/a;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lcom/octopus/ad/b/a;->e()V

    .line 159
    .line 160
    .line 161
    :cond_6
    :goto_1
    const/4 p1, 0x0

    .line 162
    return p1
.end method
