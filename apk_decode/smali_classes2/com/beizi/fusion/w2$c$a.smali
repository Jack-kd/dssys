.class Lcom/beizi/fusion/w2$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/ud;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/w2$c;->registerViewForInteraction(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/w2$c;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/w2$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/w2$c$a;->a:Lcom/beizi/fusion/w2$c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/w2$c$a;->a:Lcom/beizi/fusion/w2$c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 4
    .line 5
    sget-object v1, Lcom/beizi/fusion/c2;->c:Lcom/beizi/fusion/c2;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/beizi/fusion/w2;->a(Lcom/beizi/fusion/w2;Lcom/beizi/fusion/c2;)Lcom/beizi/fusion/c2;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/beizi/fusion/w2$c$a;->a:Lcom/beizi/fusion/w2$c;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/beizi/fusion/w2;->e(Lcom/beizi/fusion/w2;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/beizi/fusion/w2$c$a;->a:Lcom/beizi/fusion/w2$c;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/beizi/fusion/w2;->f(Lcom/beizi/fusion/w2;)Lcom/beizi/fusion/events/EventBean;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "1"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setIsCacheAd(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/beizi/fusion/w2$c$a;->a:Lcom/beizi/fusion/w2$c;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/beizi/fusion/w2;->g(Lcom/beizi/fusion/w2;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    const-wide/16 v2, 0x0

    .line 42
    .line 43
    cmp-long v0, v0, v2

    .line 44
    .line 45
    if-lez v0, :cond_0

    .line 46
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    iget-object v2, p0, Lcom/beizi/fusion/w2$c$a;->a:Lcom/beizi/fusion/w2$c;

    .line 52
    .line 53
    iget-object v2, v2, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 54
    .line 55
    invoke-static {v2}, Lcom/beizi/fusion/w2;->g(Lcom/beizi/fusion/w2;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v2

    .line 59
    sub-long/2addr v0, v2

    .line 60
    iget-object v2, p0, Lcom/beizi/fusion/w2$c$a;->a:Lcom/beizi/fusion/w2$c;

    .line 61
    .line 62
    iget-object v2, v2, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 63
    .line 64
    invoke-static {v2}, Lcom/beizi/fusion/w2;->h(Lcom/beizi/fusion/w2;)Lcom/beizi/fusion/events/EventBean;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v2, v0}, Lcom/beizi/fusion/events/EventBean;->setCacheTime(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/w2$c$a;->a:Lcom/beizi/fusion/w2$c;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/beizi/fusion/w2;->i(Lcom/beizi/fusion/w2;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/w2$c$a;->a:Lcom/beizi/fusion/w2$c;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/beizi/fusion/w2;->j(Lcom/beizi/fusion/w2;)Lcom/beizi/fusion/n3;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    iget-object v0, p0, Lcom/beizi/fusion/w2$c$a;->a:Lcom/beizi/fusion/w2$c;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 95
    .line 96
    invoke-static {v0}, Lcom/beizi/fusion/w2;->k(Lcom/beizi/fusion/w2;)Lcom/beizi/fusion/n3;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/beizi/fusion/n3;->z()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    const/4 v1, 0x2

    .line 105
    if-eq v0, v1, :cond_2

    .line 106
    .line 107
    iget-object v0, p0, Lcom/beizi/fusion/w2$c$a;->a:Lcom/beizi/fusion/w2$c;

    .line 108
    .line 109
    iget-object v0, v0, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/beizi/fusion/w2;->l(Lcom/beizi/fusion/w2;)Lcom/beizi/fusion/n3;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/beizi/fusion/w2$c$a;->a:Lcom/beizi/fusion/w2$c;

    .line 116
    .line 117
    iget-object v1, v1, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/beizi/fusion/w2;->x()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/n3;->d(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/beizi/fusion/w2$c$a;->a:Lcom/beizi/fusion/w2$c;

    .line 127
    .line 128
    iget-object v0, v0, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 129
    .line 130
    invoke-static {v0}, Lcom/beizi/fusion/w2;->m(Lcom/beizi/fusion/w2;)V

    .line 131
    .line 132
    .line 133
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/w2$c$a;->a:Lcom/beizi/fusion/w2$c;

    .line 134
    .line 135
    iget-object v0, v0, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 136
    .line 137
    invoke-static {v0}, Lcom/beizi/fusion/w2;->n(Lcom/beizi/fusion/w2;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/beizi/fusion/w2$c$a;->a:Lcom/beizi/fusion/w2$c;

    .line 141
    .line 142
    iget-object v0, v0, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 143
    .line 144
    invoke-static {v0}, Lcom/beizi/fusion/w2;->o(Lcom/beizi/fusion/w2;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/beizi/fusion/w2$c$a;->a:Lcom/beizi/fusion/w2$c;

    .line 148
    .line 149
    iget-object v0, v0, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 150
    .line 151
    invoke-static {v0}, Lcom/beizi/fusion/w2;->p(Lcom/beizi/fusion/w2;)V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public onAdClosed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/w2$c$a;->a:Lcom/beizi/fusion/w2$c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/beizi/fusion/w2;->q(Lcom/beizi/fusion/w2;)Lcom/beizi/fusion/n3;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/w2$c$a;->a:Lcom/beizi/fusion/w2$c;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/beizi/fusion/w2;->r(Lcom/beizi/fusion/w2;)Lcom/beizi/fusion/n3;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/beizi/fusion/n3;->z()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x2

    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/beizi/fusion/w2$c$a;->a:Lcom/beizi/fusion/w2$c;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/beizi/fusion/w2;->s(Lcom/beizi/fusion/w2;)Lcom/beizi/fusion/n3;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/beizi/fusion/w2$c$a;->a:Lcom/beizi/fusion/w2$c;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/beizi/fusion/w2;->x()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/beizi/fusion/w2$c$a;->a:Lcom/beizi/fusion/w2$c;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 45
    .line 46
    iget-object v2, v2, Lcom/beizi/fusion/w2;->i0:Landroid/widget/FrameLayout;

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/n3;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/w2$c$a;->a:Lcom/beizi/fusion/w2$c;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/beizi/fusion/w2;->t(Lcom/beizi/fusion/w2;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public onAdShown()V
    .locals 0

    return-void
.end method
