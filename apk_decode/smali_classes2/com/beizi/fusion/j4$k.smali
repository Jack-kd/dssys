.class Lcom/beizi/fusion/j4$k;
.super Lcom/beizi/fusion/p1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/j4;->A0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/beizi/fusion/j4;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/j4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/beizi/fusion/p1;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/beizi/fusion/j4$k;->a:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0}, Lcom/beizi/fusion/j4;->h0(Lcom/beizi/fusion/j4;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "uniteTime"

    invoke-static {v0, v2, v1}, Lcom/beizi/fusion/go;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0}, Lcom/beizi/fusion/j4;->i0(Lcom/beizi/fusion/j4;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0}, Lcom/beizi/fusion/j4;->j0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0}, Lcom/beizi/fusion/j4;->l0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/events/EventBean;

    move-result-object v0

    iget-object v1, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v1}, Lcom/beizi/fusion/j4;->k0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getCallBackStrategyUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setCallBackStrategyUuid(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0}, Lcom/beizi/fusion/j4;->m0(Lcom/beizi/fusion/j4;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0}, Lcom/beizi/fusion/j4;->n0(Lcom/beizi/fusion/j4;)V

    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0}, Lcom/beizi/fusion/j4;->h0(Lcom/beizi/fusion/j4;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v2}, Lcom/beizi/fusion/j4;->p0(Lcom/beizi/fusion/j4;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v3}, Lcom/beizi/fusion/j4;->q0(Lcom/beizi/fusion/j4;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/beizi/fusion/e2;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-virtual {v0}, Lcom/beizi/fusion/e2;->O()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/beizi/fusion/j4;->d(Lcom/beizi/fusion/j4;Z)Z

    .line 10
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0}, Lcom/beizi/fusion/j4;->r0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/n3;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0}, Lcom/beizi/fusion/j4;->s0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/n3;

    move-result-object v0

    iget-object v1, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-virtual {v1}, Lcom/beizi/fusion/j4;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/n3;->b(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0}, Lcom/beizi/fusion/j4;->t0(Lcom/beizi/fusion/j4;)V

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0}, Lcom/beizi/fusion/j4;->u0(Lcom/beizi/fusion/j4;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/beizi/fusion/j4;->b(Lcom/beizi/fusion/j4;Ljava/lang/String;I)V

    return-void
.end method

.method public a(J)V
    .locals 8

    .line 14
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/fusion/j4$k;->a:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0}, Lcom/beizi/fusion/j4;->v0(Lcom/beizi/fusion/j4;)V

    .line 16
    iput-boolean v1, p0, Lcom/beizi/fusion/j4$k;->a:Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    .line 17
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0}, Lcom/beizi/fusion/j4;->w0(Lcom/beizi/fusion/j4;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0}, Lcom/beizi/fusion/j4;->x0(Lcom/beizi/fusion/j4;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0}, Lcom/beizi/fusion/j4;->x0(Lcom/beizi/fusion/j4;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0}, Lcom/beizi/fusion/j4;->y0(Lcom/beizi/fusion/j4;)J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-gtz v0, :cond_4

    .line 19
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0}, Lcom/beizi/fusion/j4;->z0(Lcom/beizi/fusion/j4;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0}, Lcom/beizi/fusion/j4;->A0(Lcom/beizi/fusion/j4;)J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0}, Lcom/beizi/fusion/j4;->A0(Lcom/beizi/fusion/j4;)J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-lez v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0, v1}, Lcom/beizi/fusion/j4;->e(Lcom/beizi/fusion/j4;Z)Z

    .line 22
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0}, Lcom/beizi/fusion/j4;->B0(Lcom/beizi/fusion/j4;)Landroid/view/View;

    move-result-object v0

    const v3, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0, v2}, Lcom/beizi/fusion/j4;->e(Lcom/beizi/fusion/j4;Z)Z

    .line 24
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0}, Lcom/beizi/fusion/j4;->B0(Lcom/beizi/fusion/j4;)Landroid/view/View;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 25
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0}, Lcom/beizi/fusion/j4;->x0(Lcom/beizi/fusion/j4;)J

    move-result-wide v3

    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0}, Lcom/beizi/fusion/j4;->y0(Lcom/beizi/fusion/j4;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    .line 26
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0}, Lcom/beizi/fusion/j4;->B0(Lcom/beizi/fusion/j4;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    .line 27
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0}, Lcom/beizi/fusion/j4;->B0(Lcom/beizi/fusion/j4;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 28
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    long-to-float v1, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/beizi/fusion/j4;->e(Lcom/beizi/fusion/j4;I)V

    .line 29
    :cond_5
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0}, Lcom/beizi/fusion/j4;->C0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/n3;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0}, Lcom/beizi/fusion/j4;->D0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/n3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/n3;->z()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 30
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    invoke-static {v0}, Lcom/beizi/fusion/j4;->E0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/n3;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/beizi/fusion/n3;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-void

    .line 31
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/j4;->W(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/n3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/j4;->X(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/n3;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/beizi/fusion/j4;->x()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/n3;->c(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/beizi/fusion/j4;->Y(Lcom/beizi/fusion/j4;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/beizi/fusion/j4;->Z(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/wn;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/beizi/fusion/j4;->Z(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/wn;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/beizi/fusion/wn;->q()V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/beizi/fusion/j4;->a0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/vl;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/beizi/fusion/j4;->a0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/vl;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/beizi/fusion/vl;->e()V

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/beizi/fusion/j4;->b0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/kn;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/beizi/fusion/j4;->b0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/kn;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/beizi/fusion/kn;->b()V

    .line 82
    .line 83
    .line 84
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/beizi/fusion/j4;->c0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/mm;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 93
    .line 94
    invoke-static {v0}, Lcom/beizi/fusion/j4;->c0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/mm;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/beizi/fusion/mm;->h()V

    .line 99
    .line 100
    .line 101
    :cond_4
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/beizi/fusion/j4;->d0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/t7;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    if-eqz v0, :cond_5

    .line 108
    .line 109
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/beizi/fusion/j4;->d0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/t7;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/beizi/fusion/t7;->f()V

    .line 116
    .line 117
    .line 118
    :cond_5
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 119
    .line 120
    invoke-static {v0}, Lcom/beizi/fusion/j4;->e0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/mn;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eqz v0, :cond_6

    .line 125
    .line 126
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 127
    .line 128
    invoke-static {v0}, Lcom/beizi/fusion/j4;->e0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/mn;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/beizi/fusion/mn;->c()V

    .line 133
    .line 134
    .line 135
    :cond_6
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 136
    .line 137
    invoke-static {v0}, Lcom/beizi/fusion/j4;->f0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/ln;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-eqz v0, :cond_7

    .line 142
    .line 143
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 144
    .line 145
    invoke-static {v0}, Lcom/beizi/fusion/j4;->f0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/ln;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/beizi/fusion/ln;->c()V

    .line 150
    .line 151
    .line 152
    :cond_7
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 153
    .line 154
    invoke-static {v0}, Lcom/beizi/fusion/j4;->g0(Lcom/beizi/fusion/j4;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method public c()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/q1;->u()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/beizi/fusion/j4;->a(Lcom/beizi/fusion/j4;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v4

    .line 22
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/beizi/fusion/j4;->b(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/n3;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/beizi/fusion/n3;->u()J

    .line 29
    .line 30
    .line 31
    move-result-wide v6

    .line 32
    sub-long/2addr v4, v6

    .line 33
    sub-long/2addr v2, v4

    .line 34
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/beizi/fusion/j4;->B(Lcom/beizi/fusion/j4;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    int-to-long v4, v0

    .line 41
    cmp-long v0, v2, v4

    .line 42
    .line 43
    if-gez v0, :cond_0

    .line 44
    .line 45
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 46
    .line 47
    invoke-static {v0, v1}, Lcom/beizi/fusion/j4;->c(Lcom/beizi/fusion/j4;Z)Z

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 51
    .line 52
    const/4 v1, 0x3

    .line 53
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v0, v2, v1}, Lcom/beizi/fusion/j4;->a(Lcom/beizi/fusion/j4;Ljava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/beizi/fusion/j4;->o0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/fj;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2}, Lcom/beizi/fusion/k3;->e()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-static {v0, v2}, Lcom/beizi/fusion/j4;->d(Lcom/beizi/fusion/j4;I)I

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 78
    .line 79
    sget-object v2, Lcom/beizi/fusion/c2;->b:Lcom/beizi/fusion/c2;

    .line 80
    .line 81
    invoke-static {v0, v2}, Lcom/beizi/fusion/j4;->b(Lcom/beizi/fusion/j4;Lcom/beizi/fusion/c2;)Lcom/beizi/fusion/c2;

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/beizi/fusion/j4;->o0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/fj;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/beizi/fusion/k3;->q()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_1

    .line 95
    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/beizi/fusion/j4;->o0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/fj;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v2}, Lcom/beizi/fusion/k3;->q()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 107
    .line 108
    .line 109
    move-result-wide v2

    .line 110
    invoke-static {v0, v2, v3}, Lcom/beizi/fusion/j4;->a(Lcom/beizi/fusion/j4;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 116
    .line 117
    .line 118
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 119
    .line 120
    invoke-static {v0}, Lcom/beizi/fusion/j4;->o0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/fj;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2}, Lcom/beizi/fusion/k3;->s()Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-static {v0, v2}, Lcom/beizi/fusion/j4;->a(Lcom/beizi/fusion/j4;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 136
    .line 137
    invoke-static {v0}, Lcom/beizi/fusion/j4;->o0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/fj;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v2}, Lcom/beizi/fusion/k3;->u()Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    invoke-static {v0, v2}, Lcom/beizi/fusion/j4;->b(Lcom/beizi/fusion/j4;Z)Z

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 149
    .line 150
    invoke-static {v0}, Lcom/beizi/fusion/j4;->o0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/fj;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    if-eqz v0, :cond_3

    .line 155
    .line 156
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 157
    .line 158
    invoke-static {v0}, Lcom/beizi/fusion/j4;->o0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/fj;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v2}, Lcom/beizi/fusion/k3;->i()Lcom/beizi/fusion/g5;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-static {v0, v2}, Lcom/beizi/fusion/j4;->a(Lcom/beizi/fusion/j4;Lcom/beizi/fusion/g5;)Lcom/beizi/fusion/g5;

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 170
    .line 171
    invoke-static {v0}, Lcom/beizi/fusion/j4;->w(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/g5;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    if-eqz v0, :cond_2

    .line 176
    .line 177
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 178
    .line 179
    invoke-static {v0}, Lcom/beizi/fusion/j4;->x(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/g5;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v2}, Lcom/beizi/fusion/g5;->c()I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    invoke-static {v0, v2}, Lcom/beizi/fusion/j4;->b(Lcom/beizi/fusion/j4;I)I

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 191
    .line 192
    invoke-static {v0}, Lcom/beizi/fusion/j4;->y(Lcom/beizi/fusion/j4;)I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_2

    .line 197
    .line 198
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 199
    .line 200
    invoke-static {v0}, Lcom/beizi/fusion/j4;->z(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/g5;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-virtual {v2}, Lcom/beizi/fusion/g5;->f()I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    add-int/2addr v2, v1

    .line 209
    invoke-static {v0, v2}, Lcom/beizi/fusion/j4;->c(Lcom/beizi/fusion/j4;I)I

    .line 210
    .line 211
    .line 212
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 213
    .line 214
    invoke-static {v0}, Lcom/beizi/fusion/j4;->o0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/fj;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v1}, Lcom/beizi/fusion/k3;->m()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-static {v0, v1}, Lcom/beizi/fusion/j4;->b(Lcom/beizi/fusion/j4;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 226
    .line 227
    invoke-static {v0}, Lcom/beizi/fusion/j4;->c(Lcom/beizi/fusion/j4;)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_5

    .line 232
    .line 233
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 234
    .line 235
    invoke-static {v0}, Lcom/beizi/fusion/j4;->o0(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/fj;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {v1}, Lcom/beizi/fusion/k3;->f()J

    .line 240
    .line 241
    .line 242
    move-result-wide v1

    .line 243
    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/j4;->a(Lcom/beizi/fusion/j4;J)J

    .line 244
    .line 245
    .line 246
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 247
    .line 248
    invoke-static {v0}, Lcom/beizi/fusion/j4;->C(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/events/EventBean;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    const-string v1, "1"

    .line 253
    .line 254
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setIsCacheAd(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 258
    .line 259
    invoke-static {v0}, Lcom/beizi/fusion/j4;->A(Lcom/beizi/fusion/j4;)J

    .line 260
    .line 261
    .line 262
    move-result-wide v0

    .line 263
    const-wide/16 v2, 0x0

    .line 264
    .line 265
    cmp-long v0, v0, v2

    .line 266
    .line 267
    if-lez v0, :cond_4

    .line 268
    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 270
    .line 271
    .line 272
    move-result-wide v0

    .line 273
    iget-object v2, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 274
    .line 275
    invoke-static {v2}, Lcom/beizi/fusion/j4;->A(Lcom/beizi/fusion/j4;)J

    .line 276
    .line 277
    .line 278
    move-result-wide v2

    .line 279
    sub-long/2addr v0, v2

    .line 280
    iget-object v2, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 281
    .line 282
    invoke-static {v2}, Lcom/beizi/fusion/j4;->D(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/events/EventBean;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {v2, v0}, Lcom/beizi/fusion/events/EventBean;->setCacheTime(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    :cond_4
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 294
    .line 295
    invoke-static {v0}, Lcom/beizi/fusion/j4;->E(Lcom/beizi/fusion/j4;)V

    .line 296
    .line 297
    .line 298
    :cond_5
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 299
    .line 300
    invoke-static {v0}, Lcom/beizi/fusion/j4;->F(Lcom/beizi/fusion/j4;)V

    .line 301
    .line 302
    .line 303
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 304
    .line 305
    invoke-static {v0}, Lcom/beizi/fusion/j4;->G(Lcom/beizi/fusion/j4;)Z

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    if-eqz v0, :cond_6

    .line 310
    .line 311
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 312
    .line 313
    invoke-static {v0}, Lcom/beizi/fusion/j4;->H(Lcom/beizi/fusion/j4;)V

    .line 314
    .line 315
    .line 316
    goto :goto_1

    .line 317
    :cond_6
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 318
    .line 319
    invoke-static {v0}, Lcom/beizi/fusion/j4;->I(Lcom/beizi/fusion/j4;)V

    .line 320
    .line 321
    .line 322
    :goto_1
    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 2
    .line 3
    sget-object v1, Lcom/beizi/fusion/c2;->c:Lcom/beizi/fusion/c2;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/beizi/fusion/j4;->a(Lcom/beizi/fusion/j4;Lcom/beizi/fusion/c2;)Lcom/beizi/fusion/c2;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/beizi/fusion/j4;->c(Lcom/beizi/fusion/j4;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/beizi/fusion/j4;->J(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/events/EventBean;

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
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/beizi/fusion/j4;->A(Lcom/beizi/fusion/j4;)J

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
    iget-object v2, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 44
    .line 45
    invoke-static {v2}, Lcom/beizi/fusion/j4;->A(Lcom/beizi/fusion/j4;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    sub-long/2addr v0, v2

    .line 50
    iget-object v2, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 51
    .line 52
    invoke-static {v2}, Lcom/beizi/fusion/j4;->K(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/events/EventBean;

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
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/beizi/fusion/j4;->L(Lcom/beizi/fusion/j4;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/beizi/fusion/j4;->M(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/n3;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/beizi/fusion/j4;->N(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/n3;

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
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/beizi/fusion/j4;->O(Lcom/beizi/fusion/j4;)Lcom/beizi/fusion/n3;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/beizi/fusion/j4;->x()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/beizi/fusion/j4;->P(Lcom/beizi/fusion/j4;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/beizi/fusion/j4;->Q(Lcom/beizi/fusion/j4;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/beizi/fusion/j4;->R(Lcom/beizi/fusion/j4;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/beizi/fusion/j4;->S(Lcom/beizi/fusion/j4;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 125
    .line 126
    invoke-static {v0}, Lcom/beizi/fusion/j4;->T(Lcom/beizi/fusion/j4;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 130
    .line 131
    invoke-static {v0}, Lcom/beizi/fusion/j4;->U(Lcom/beizi/fusion/j4;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/beizi/fusion/j4$k;->b:Lcom/beizi/fusion/j4;

    .line 135
    .line 136
    invoke-static {v0}, Lcom/beizi/fusion/j4;->V(Lcom/beizi/fusion/j4;)V

    .line 137
    .line 138
    .line 139
    return-void
.end method
