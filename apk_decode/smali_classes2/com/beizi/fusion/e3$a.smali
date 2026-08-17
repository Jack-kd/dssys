.class Lcom/beizi/fusion/e3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/lj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/e3;->A0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/e3;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/e3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/e3;->p(Lcom/beizi/fusion/e3;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/beizi/fusion/e3;->q(Lcom/beizi/fusion/e3;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAdFailed(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1, p1}, Lcom/beizi/fusion/e3;->b(Lcom/beizi/fusion/e3;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onAdLoaded(Lcom/beizi/fusion/unified/BZUnifiedAdResponse;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

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
    invoke-static {p1, v1, v0}, Lcom/beizi/fusion/e3;->a(Lcom/beizi/fusion/e3;Ljava/lang/String;I)V

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
    iget-object v0, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 18
    .line 19
    invoke-static {v0, p1}, Lcom/beizi/fusion/e3;->a(Lcom/beizi/fusion/e3;Lcom/beizi/fusion/unified/BZUnifiedAdResponse;)Lcom/beizi/fusion/unified/BZUnifiedAdResponse;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 23
    .line 24
    sget-object v1, Lcom/beizi/fusion/c2;->b:Lcom/beizi/fusion/c2;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/beizi/fusion/e3;->b(Lcom/beizi/fusion/e3;Lcom/beizi/fusion/c2;)Lcom/beizi/fusion/c2;

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Lcom/beizi/fusion/unified/BZUnifiedAdResponse;->getEcpm()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 36
    .line 37
    invoke-interface {p1}, Lcom/beizi/fusion/unified/BZUnifiedAdResponse;->getEcpm()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    int-to-double v1, p1

    .line 42
    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/e3;->a(Lcom/beizi/fusion/e3;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/beizi/fusion/e3;->z(Lcom/beizi/fusion/e3;)Lcom/beizi/fusion/jj;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/beizi/fusion/k3;->u()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-static {p1, v0}, Lcom/beizi/fusion/e3;->b(Lcom/beizi/fusion/e3;Z)Z

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/beizi/fusion/e3;->y(Lcom/beizi/fusion/e3;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    iget-object p1, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 72
    .line 73
    invoke-static {p1}, Lcom/beizi/fusion/e3;->z(Lcom/beizi/fusion/e3;)Lcom/beizi/fusion/jj;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/beizi/fusion/k3;->f()J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    invoke-static {p1, v0, v1}, Lcom/beizi/fusion/e3;->a(Lcom/beizi/fusion/e3;J)J

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/beizi/fusion/e3;->B(Lcom/beizi/fusion/e3;)Lcom/beizi/fusion/events/EventBean;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const-string v0, "1"

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Lcom/beizi/fusion/events/EventBean;->setIsCacheAd(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 96
    .line 97
    invoke-static {p1}, Lcom/beizi/fusion/e3;->A(Lcom/beizi/fusion/e3;)J

    .line 98
    .line 99
    .line 100
    move-result-wide v0

    .line 101
    const-wide/16 v2, 0x0

    .line 102
    .line 103
    cmp-long p1, v0, v2

    .line 104
    .line 105
    if-lez p1, :cond_2

    .line 106
    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 108
    .line 109
    .line 110
    move-result-wide v0

    .line 111
    iget-object p1, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 112
    .line 113
    invoke-static {p1}, Lcom/beizi/fusion/e3;->A(Lcom/beizi/fusion/e3;)J

    .line 114
    .line 115
    .line 116
    move-result-wide v2

    .line 117
    sub-long/2addr v0, v2

    .line 118
    iget-object p1, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 119
    .line 120
    invoke-static {p1}, Lcom/beizi/fusion/e3;->C(Lcom/beizi/fusion/e3;)Lcom/beizi/fusion/events/EventBean;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p1, v0}, Lcom/beizi/fusion/events/EventBean;->setCacheTime(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_2
    iget-object p1, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 132
    .line 133
    invoke-static {p1}, Lcom/beizi/fusion/e3;->D(Lcom/beizi/fusion/e3;)V

    .line 134
    .line 135
    .line 136
    :cond_3
    iget-object p1, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 137
    .line 138
    invoke-static {p1}, Lcom/beizi/fusion/e3;->a(Lcom/beizi/fusion/e3;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 142
    .line 143
    invoke-static {p1}, Lcom/beizi/fusion/e3;->b(Lcom/beizi/fusion/e3;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_4

    .line 148
    .line 149
    iget-object p1, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 150
    .line 151
    invoke-static {p1}, Lcom/beizi/fusion/e3;->c(Lcom/beizi/fusion/e3;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_4
    iget-object p1, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 156
    .line 157
    invoke-static {p1}, Lcom/beizi/fusion/e3;->d(Lcom/beizi/fusion/e3;)V

    .line 158
    .line 159
    .line 160
    :goto_1
    return-void
.end method

.method public onAdShown()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 2
    .line 3
    sget-object v1, Lcom/beizi/fusion/c2;->c:Lcom/beizi/fusion/c2;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/beizi/fusion/e3;->a(Lcom/beizi/fusion/e3;Lcom/beizi/fusion/c2;)Lcom/beizi/fusion/c2;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/beizi/fusion/e3;->y(Lcom/beizi/fusion/e3;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/beizi/fusion/e3;->e(Lcom/beizi/fusion/e3;)Lcom/beizi/fusion/events/EventBean;

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
    iget-object v0, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/beizi/fusion/e3;->A(Lcom/beizi/fusion/e3;)J

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
    iget-object v2, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 44
    .line 45
    invoke-static {v2}, Lcom/beizi/fusion/e3;->A(Lcom/beizi/fusion/e3;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    sub-long/2addr v0, v2

    .line 50
    iget-object v2, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 51
    .line 52
    invoke-static {v2}, Lcom/beizi/fusion/e3;->f(Lcom/beizi/fusion/e3;)Lcom/beizi/fusion/events/EventBean;

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
    iget-object v0, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/beizi/fusion/e3;->g(Lcom/beizi/fusion/e3;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/beizi/fusion/e3;->h(Lcom/beizi/fusion/e3;)Lcom/beizi/fusion/n3;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    iget-object v0, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/beizi/fusion/e3;->i(Lcom/beizi/fusion/e3;)Lcom/beizi/fusion/n3;

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
    iget-object v0, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/beizi/fusion/e3;->j(Lcom/beizi/fusion/e3;)Lcom/beizi/fusion/n3;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/beizi/fusion/e3;->x()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/beizi/fusion/e3;->k(Lcom/beizi/fusion/e3;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/beizi/fusion/e3;->l(Lcom/beizi/fusion/e3;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/beizi/fusion/e3;->m(Lcom/beizi/fusion/e3;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/beizi/fusion/e3;->n(Lcom/beizi/fusion/e3;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/beizi/fusion/e3$a;->a:Lcom/beizi/fusion/e3;

    .line 125
    .line 126
    invoke-static {v0}, Lcom/beizi/fusion/e3;->o(Lcom/beizi/fusion/e3;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method
