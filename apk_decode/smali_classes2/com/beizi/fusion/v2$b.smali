.class Lcom/beizi/fusion/v2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/v2;->P0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/v2;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/v2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/v2;->v(Lcom/beizi/fusion/v2;)Lcom/beizi/fusion/cg;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/v2;->v(Lcom/beizi/fusion/v2;)Lcom/beizi/fusion/cg;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/beizi/fusion/fa;->c()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/e2;->e(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 23
    .line 24
    invoke-static {v0, p2, p1}, Lcom/beizi/fusion/v2;->b(Lcom/beizi/fusion/v2;Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 2
    .line 3
    sget-object v1, Lcom/beizi/fusion/c2;->c:Lcom/beizi/fusion/c2;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/beizi/fusion/v2;->b(Lcom/beizi/fusion/v2;Lcom/beizi/fusion/c2;)Lcom/beizi/fusion/c2;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/beizi/fusion/v2;->b(Lcom/beizi/fusion/v2;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/beizi/fusion/v2;->c(Lcom/beizi/fusion/v2;)Lcom/beizi/fusion/events/EventBean;

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
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/beizi/fusion/v2;->d(Lcom/beizi/fusion/v2;)J

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
    iget-object v2, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 44
    .line 45
    invoke-static {v2}, Lcom/beizi/fusion/v2;->d(Lcom/beizi/fusion/v2;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    sub-long/2addr v0, v2

    .line 50
    iget-object v2, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 51
    .line 52
    invoke-static {v2}, Lcom/beizi/fusion/v2;->e(Lcom/beizi/fusion/v2;)Lcom/beizi/fusion/events/EventBean;

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
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/beizi/fusion/v2;->f(Lcom/beizi/fusion/v2;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/beizi/fusion/v2;->g(Lcom/beizi/fusion/v2;)Lcom/beizi/fusion/n3;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/beizi/fusion/v2;->h(Lcom/beizi/fusion/v2;)Lcom/beizi/fusion/n3;

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
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/beizi/fusion/v2;->i(Lcom/beizi/fusion/v2;)Lcom/beizi/fusion/n3;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/beizi/fusion/v2;->x()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/n3;->d(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/beizi/fusion/v2;->j(Lcom/beizi/fusion/v2;)V

    .line 107
    .line 108
    .line 109
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/beizi/fusion/v2;->k(Lcom/beizi/fusion/v2;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/beizi/fusion/v2;->l(Lcom/beizi/fusion/v2;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/beizi/fusion/v2;->m(Lcom/beizi/fusion/v2;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 2
    .line 3
    sget-object v1, Lcom/beizi/fusion/c2;->b:Lcom/beizi/fusion/c2;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/beizi/fusion/v2;->a(Lcom/beizi/fusion/v2;Lcom/beizi/fusion/c2;)Lcom/beizi/fusion/c2;

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/beizi/fusion/v2;->v(Lcom/beizi/fusion/v2;)Lcom/beizi/fusion/cg;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/beizi/fusion/v2;->v(Lcom/beizi/fusion/v2;)Lcom/beizi/fusion/cg;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/beizi/fusion/tb;->getECPM()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    int-to-double v1, v1

    .line 27
    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/v2;->a(Lcom/beizi/fusion/v2;D)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/beizi/fusion/v2;->v(Lcom/beizi/fusion/v2;)Lcom/beizi/fusion/cg;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/beizi/fusion/fa;->c()Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/e2;->e(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/beizi/fusion/v2;->E(Lcom/beizi/fusion/v2;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/beizi/fusion/v2;->F(Lcom/beizi/fusion/v2;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/beizi/fusion/v2;->G(Lcom/beizi/fusion/v2;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/beizi/fusion/v2;->H(Lcom/beizi/fusion/v2;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void
.end method

.method public onAdClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/v2;->n(Lcom/beizi/fusion/v2;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/v2;->o(Lcom/beizi/fusion/v2;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/beizi/fusion/v2;->q(Lcom/beizi/fusion/v2;)Lcom/beizi/fusion/events/EventBean;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/beizi/fusion/v2;->p(Lcom/beizi/fusion/v2;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getCallBackStrategyUuid()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setCallBackStrategyUuid(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/beizi/fusion/v2;->r(Lcom/beizi/fusion/v2;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/beizi/fusion/v2;->s(Lcom/beizi/fusion/v2;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/beizi/fusion/v2;->n(Lcom/beizi/fusion/v2;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/beizi/fusion/v2;->t(Lcom/beizi/fusion/v2;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/beizi/fusion/v2;->u(Lcom/beizi/fusion/v2;)Lcom/beizi/fusion/n3;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/beizi/fusion/v2;->w(Lcom/beizi/fusion/v2;)Lcom/beizi/fusion/n3;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/beizi/fusion/n3;->z()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const/4 v1, 0x2

    .line 82
    if-eq v0, v1, :cond_2

    .line 83
    .line 84
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/beizi/fusion/v2;->x(Lcom/beizi/fusion/v2;)Lcom/beizi/fusion/n3;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/beizi/fusion/v2;->x()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/n3;->b(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 100
    .line 101
    invoke-static {v0}, Lcom/beizi/fusion/v2;->y(Lcom/beizi/fusion/v2;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/beizi/fusion/v2;->z(Lcom/beizi/fusion/v2;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public onAdClosed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/v2;->A(Lcom/beizi/fusion/v2;)Lcom/beizi/fusion/n3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/v2;->B(Lcom/beizi/fusion/v2;)Lcom/beizi/fusion/n3;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/beizi/fusion/n3;->z()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x2

    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/beizi/fusion/v2;->C(Lcom/beizi/fusion/v2;)Lcom/beizi/fusion/n3;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/beizi/fusion/v2;->x()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/n3;->c(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/v2$b;->a:Lcom/beizi/fusion/v2;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/beizi/fusion/v2;->D(Lcom/beizi/fusion/v2;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onAdLoaded()V
    .locals 0

    return-void
.end method

.method public onAdShown()V
    .locals 0

    return-void
.end method
