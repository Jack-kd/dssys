.class Lcom/beizi/fusion/i4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/ej;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/i4;->A0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/i4;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/i4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    invoke-static {v0}, Lcom/beizi/fusion/i4;->e(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/n3;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    invoke-static {v0}, Lcom/beizi/fusion/i4;->f(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/n3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/n3;->N()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    invoke-static {v0}, Lcom/beizi/fusion/i4;->L(Lcom/beizi/fusion/i4;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    iget-object v1, v1, Lcom/beizi/fusion/i4;->Z:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/go;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    invoke-static {v0}, Lcom/beizi/fusion/i4;->M(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/events/EventBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/events/EventBean;->setComplain(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    invoke-static {p1}, Lcom/beizi/fusion/i4;->N(Lcom/beizi/fusion/i4;)V

    .line 9
    iget-object p1, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    invoke-static {p1}, Lcom/beizi/fusion/i4;->O(Lcom/beizi/fusion/i4;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    invoke-static {p1}, Lcom/beizi/fusion/i4;->I(Lcom/beizi/fusion/i4;)V

    .line 4
    iget-object p1, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    invoke-static {p1}, Lcom/beizi/fusion/i4;->J(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/n3;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    invoke-static {p1}, Lcom/beizi/fusion/i4;->K(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/n3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beizi/fusion/n3;->M()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/i4;->Q(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/n3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/i4;->R(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/n3;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/beizi/fusion/n3;->O()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/i4;->S(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/n3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/i4;->T(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/n3;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/beizi/fusion/n3;->P()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onAdClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/i4;->v(Lcom/beizi/fusion/i4;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/i4;->w(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/beizi/fusion/i4;->y(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/events/EventBean;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/beizi/fusion/i4;->x(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

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
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/beizi/fusion/i4;->z(Lcom/beizi/fusion/i4;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/beizi/fusion/i4;->A(Lcom/beizi/fusion/i4;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/beizi/fusion/i4;->v(Lcom/beizi/fusion/i4;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/beizi/fusion/i4;->B(Lcom/beizi/fusion/i4;)Z

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
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/beizi/fusion/i4;->C(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/n3;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/beizi/fusion/i4;->D(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/n3;

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
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/beizi/fusion/i4;->F(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/n3;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/beizi/fusion/i4;->x()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 100
    .line 101
    invoke-static {v0}, Lcom/beizi/fusion/i4;->G(Lcom/beizi/fusion/i4;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/beizi/fusion/i4;->H(Lcom/beizi/fusion/i4;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public onAdClosed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/i4;->q(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/n3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/i4;->r(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/n3;

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
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/beizi/fusion/i4;->s(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/n3;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/beizi/fusion/i4;->x()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/beizi/fusion/i4;->u(Lcom/beizi/fusion/i4;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1, p1}, Lcom/beizi/fusion/i4;->a(Lcom/beizi/fusion/i4;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onAdLoaded()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 2
    .line 3
    sget-object v1, Lcom/beizi/fusion/c2;->b:Lcom/beizi/fusion/c2;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/beizi/fusion/i4;->a(Lcom/beizi/fusion/i4;Lcom/beizi/fusion/c2;)Lcom/beizi/fusion/c2;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/beizi/fusion/i4;->a(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/cj;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/beizi/fusion/k3;->q()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/beizi/fusion/i4;->a(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/cj;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/beizi/fusion/k3;->q()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/i4;->a(Lcom/beizi/fusion/i4;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/beizi/fusion/i4;->a(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/cj;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/beizi/fusion/k3;->u()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-static {v0, v1}, Lcom/beizi/fusion/i4;->a(Lcom/beizi/fusion/i4;Z)Z

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/beizi/fusion/i4;->t(Lcom/beizi/fusion/i4;)Z

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/beizi/fusion/i4;->t(Lcom/beizi/fusion/i4;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/beizi/fusion/i4;->a(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/cj;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/beizi/fusion/k3;->f()J

    .line 75
    .line 76
    .line 77
    move-result-wide v1

    .line 78
    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/i4;->a(Lcom/beizi/fusion/i4;J)J

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/beizi/fusion/i4;->P(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/events/EventBean;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-string v1, "1"

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setIsCacheAd(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 93
    .line 94
    invoke-static {v0}, Lcom/beizi/fusion/i4;->E(Lcom/beizi/fusion/i4;)J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    const-wide/16 v2, 0x0

    .line 99
    .line 100
    cmp-long v0, v0, v2

    .line 101
    .line 102
    if-lez v0, :cond_1

    .line 103
    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 105
    .line 106
    .line 107
    move-result-wide v0

    .line 108
    iget-object v2, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 109
    .line 110
    invoke-static {v2}, Lcom/beizi/fusion/i4;->E(Lcom/beizi/fusion/i4;)J

    .line 111
    .line 112
    .line 113
    move-result-wide v2

    .line 114
    sub-long/2addr v0, v2

    .line 115
    iget-object v2, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 116
    .line 117
    invoke-static {v2}, Lcom/beizi/fusion/i4;->U(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/events/EventBean;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v2, v0}, Lcom/beizi/fusion/events/EventBean;->setCacheTime(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 129
    .line 130
    invoke-static {v0}, Lcom/beizi/fusion/i4;->V(Lcom/beizi/fusion/i4;)V

    .line 131
    .line 132
    .line 133
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 134
    .line 135
    invoke-static {v0}, Lcom/beizi/fusion/i4;->W(Lcom/beizi/fusion/i4;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 139
    .line 140
    invoke-static {v0}, Lcom/beizi/fusion/i4;->X(Lcom/beizi/fusion/i4;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_3

    .line 145
    .line 146
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 147
    .line 148
    invoke-static {v0}, Lcom/beizi/fusion/i4;->b(Lcom/beizi/fusion/i4;)V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 153
    .line 154
    invoke-static {v0}, Lcom/beizi/fusion/i4;->c(Lcom/beizi/fusion/i4;)V

    .line 155
    .line 156
    .line 157
    :goto_1
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 158
    .line 159
    invoke-static {v0}, Lcom/beizi/fusion/i4;->d(Lcom/beizi/fusion/i4;)V

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method public onAdShown()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 2
    .line 3
    sget-object v1, Lcom/beizi/fusion/c2;->c:Lcom/beizi/fusion/c2;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/beizi/fusion/i4;->b(Lcom/beizi/fusion/i4;Lcom/beizi/fusion/c2;)Lcom/beizi/fusion/c2;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/beizi/fusion/i4;->t(Lcom/beizi/fusion/i4;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/beizi/fusion/i4;->g(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/events/EventBean;

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
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/beizi/fusion/i4;->E(Lcom/beizi/fusion/i4;)J

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
    iget-object v2, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 44
    .line 45
    invoke-static {v2}, Lcom/beizi/fusion/i4;->E(Lcom/beizi/fusion/i4;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    sub-long/2addr v0, v2

    .line 50
    iget-object v2, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 51
    .line 52
    invoke-static {v2}, Lcom/beizi/fusion/i4;->h(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/events/EventBean;

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
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/beizi/fusion/i4;->i(Lcom/beizi/fusion/i4;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/beizi/fusion/i4;->j(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/n3;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/beizi/fusion/i4;->k(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/n3;

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
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/beizi/fusion/i4;->l(Lcom/beizi/fusion/i4;)Lcom/beizi/fusion/n3;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/beizi/fusion/i4;->x()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/n3;->d(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/beizi/fusion/i4;->m(Lcom/beizi/fusion/i4;)V

    .line 107
    .line 108
    .line 109
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/beizi/fusion/i4;->n(Lcom/beizi/fusion/i4;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/beizi/fusion/i4;->o(Lcom/beizi/fusion/i4;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/beizi/fusion/i4$a;->a:Lcom/beizi/fusion/i4;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/beizi/fusion/i4;->p(Lcom/beizi/fusion/i4;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method
