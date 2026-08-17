.class Lcom/beizi/fusion/s4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/jo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/s4;->A0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/s4;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/s4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/beizi/ad/internal/splash/SplashUnifiedAdResponse;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {p1, v1, v0}, Lcom/beizi/fusion/s4;->a(Lcom/beizi/fusion/s4;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 18
    .line 19
    invoke-static {v0, p1}, Lcom/beizi/fusion/s4;->a(Lcom/beizi/fusion/s4;Lcom/beizi/ad/internal/splash/SplashUnifiedAdResponse;)Lcom/beizi/ad/internal/splash/SplashUnifiedAdResponse;

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 23
    .line 24
    sget-object v0, Lcom/beizi/fusion/c2;->b:Lcom/beizi/fusion/c2;

    .line 25
    .line 26
    invoke-static {p1, v0}, Lcom/beizi/fusion/s4;->b(Lcom/beizi/fusion/s4;Lcom/beizi/fusion/c2;)Lcom/beizi/fusion/c2;

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/beizi/fusion/s4;->t(Lcom/beizi/fusion/s4;)Lcom/beizi/fusion/hj;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/beizi/fusion/k3;->q()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    :try_start_0
    iget-object p1, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/beizi/fusion/s4;->t(Lcom/beizi/fusion/s4;)Lcom/beizi/fusion/hj;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/beizi/fusion/k3;->q()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    invoke-static {p1, v0, v1}, Lcom/beizi/fusion/s4;->a(Lcom/beizi/fusion/s4;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/beizi/fusion/s4;->t(Lcom/beizi/fusion/s4;)Lcom/beizi/fusion/hj;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/beizi/fusion/k3;->u()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-static {p1, v0}, Lcom/beizi/fusion/s4;->b(Lcom/beizi/fusion/s4;Z)Z

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/beizi/fusion/s4;->D(Lcom/beizi/fusion/s4;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    iget-object p1, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/beizi/fusion/s4;->t(Lcom/beizi/fusion/s4;)Lcom/beizi/fusion/hj;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/beizi/fusion/k3;->f()J

    .line 91
    .line 92
    .line 93
    move-result-wide v0

    .line 94
    invoke-static {p1, v0, v1}, Lcom/beizi/fusion/s4;->a(Lcom/beizi/fusion/s4;J)J

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 98
    .line 99
    invoke-static {p1}, Lcom/beizi/fusion/s4;->F(Lcom/beizi/fusion/s4;)Lcom/beizi/fusion/events/EventBean;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-string v0, "1"

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Lcom/beizi/fusion/events/EventBean;->setIsCacheAd(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 109
    .line 110
    invoke-static {p1}, Lcom/beizi/fusion/s4;->E(Lcom/beizi/fusion/s4;)J

    .line 111
    .line 112
    .line 113
    move-result-wide v0

    .line 114
    const-wide/16 v2, 0x0

    .line 115
    .line 116
    cmp-long p1, v0, v2

    .line 117
    .line 118
    if-lez p1, :cond_2

    .line 119
    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 121
    .line 122
    .line 123
    move-result-wide v0

    .line 124
    iget-object p1, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 125
    .line 126
    invoke-static {p1}, Lcom/beizi/fusion/s4;->E(Lcom/beizi/fusion/s4;)J

    .line 127
    .line 128
    .line 129
    move-result-wide v2

    .line 130
    sub-long/2addr v0, v2

    .line 131
    iget-object p1, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 132
    .line 133
    invoke-static {p1}, Lcom/beizi/fusion/s4;->G(Lcom/beizi/fusion/s4;)Lcom/beizi/fusion/events/EventBean;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p1, v0}, Lcom/beizi/fusion/events/EventBean;->setCacheTime(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_2
    iget-object p1, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/beizi/fusion/s4;->H(Lcom/beizi/fusion/s4;)V

    .line 147
    .line 148
    .line 149
    :cond_3
    iget-object p1, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 150
    .line 151
    invoke-static {p1}, Lcom/beizi/fusion/s4;->b(Lcom/beizi/fusion/s4;)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 155
    .line 156
    invoke-static {p1}, Lcom/beizi/fusion/s4;->c(Lcom/beizi/fusion/s4;)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-eqz p1, :cond_4

    .line 161
    .line 162
    iget-object p1, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 163
    .line 164
    invoke-static {p1}, Lcom/beizi/fusion/s4;->d(Lcom/beizi/fusion/s4;)V

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_4
    iget-object p1, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 169
    .line 170
    invoke-static {p1}, Lcom/beizi/fusion/s4;->e(Lcom/beizi/fusion/s4;)V

    .line 171
    .line 172
    .line 173
    :goto_1
    return-void
.end method

.method public onAdClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/s4;->q(Lcom/beizi/fusion/s4;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/beizi/fusion/s4;->r(Lcom/beizi/fusion/s4;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAdClosed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/s4;->s(Lcom/beizi/fusion/s4;)Lcom/beizi/fusion/n3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/s4;->u(Lcom/beizi/fusion/s4;)Lcom/beizi/fusion/n3;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/beizi/fusion/s4;->x()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/n3;->c(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/beizi/fusion/s4;->v(Lcom/beizi/fusion/s4;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onAdFailed(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1, p1}, Lcom/beizi/fusion/s4;->b(Lcom/beizi/fusion/s4;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onAdShown()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 2
    .line 3
    sget-object v1, Lcom/beizi/fusion/c2;->c:Lcom/beizi/fusion/c2;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/beizi/fusion/s4;->a(Lcom/beizi/fusion/s4;Lcom/beizi/fusion/c2;)Lcom/beizi/fusion/c2;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/beizi/fusion/s4;->D(Lcom/beizi/fusion/s4;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/beizi/fusion/s4;->f(Lcom/beizi/fusion/s4;)Lcom/beizi/fusion/events/EventBean;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "1"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setIsCacheAd(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/beizi/fusion/s4;->E(Lcom/beizi/fusion/s4;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    const-wide/16 v2, 0x0

    .line 34
    .line 35
    cmp-long v0, v0, v2

    .line 36
    .line 37
    if-lez v0, :cond_0

    .line 38
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    iget-object v2, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 44
    .line 45
    invoke-static {v2}, Lcom/beizi/fusion/s4;->E(Lcom/beizi/fusion/s4;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    sub-long/2addr v0, v2

    .line 50
    iget-object v2, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 51
    .line 52
    invoke-static {v2}, Lcom/beizi/fusion/s4;->g(Lcom/beizi/fusion/s4;)Lcom/beizi/fusion/events/EventBean;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v2, v0}, Lcom/beizi/fusion/events/EventBean;->setCacheTime(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/beizi/fusion/s4;->h(Lcom/beizi/fusion/s4;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/beizi/fusion/s4;->i(Lcom/beizi/fusion/s4;)Lcom/beizi/fusion/n3;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    iget-object v0, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/beizi/fusion/s4;->j(Lcom/beizi/fusion/s4;)Lcom/beizi/fusion/n3;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/beizi/fusion/n3;->z()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const/4 v1, 0x2

    .line 87
    if-eq v0, v1, :cond_2

    .line 88
    .line 89
    iget-object v0, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/beizi/fusion/s4;->k(Lcom/beizi/fusion/s4;)Lcom/beizi/fusion/n3;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/beizi/fusion/s4;->x()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/n3;->d(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/beizi/fusion/s4;->l(Lcom/beizi/fusion/s4;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/beizi/fusion/s4;->m(Lcom/beizi/fusion/s4;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/beizi/fusion/s4;->n(Lcom/beizi/fusion/s4;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/beizi/fusion/s4;->o(Lcom/beizi/fusion/s4;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/beizi/fusion/s4$a;->a:Lcom/beizi/fusion/s4;

    .line 125
    .line 126
    invoke-static {v0}, Lcom/beizi/fusion/s4;->p(Lcom/beizi/fusion/s4;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method
