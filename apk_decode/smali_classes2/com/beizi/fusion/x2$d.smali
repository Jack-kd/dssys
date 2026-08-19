.class Lcom/beizi/fusion/x2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/ud;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/x2;->O0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/x2;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/x2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/x2$d;->a:Lcom/beizi/fusion/x2;

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
    iget-object v0, p0, Lcom/beizi/fusion/x2$d;->a:Lcom/beizi/fusion/x2;

    .line 2
    .line 3
    sget-object v1, Lcom/beizi/fusion/c2;->c:Lcom/beizi/fusion/c2;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/beizi/fusion/x2;->b(Lcom/beizi/fusion/x2;Lcom/beizi/fusion/c2;)Lcom/beizi/fusion/c2;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/x2$d;->a:Lcom/beizi/fusion/x2;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/beizi/fusion/x2;->p(Lcom/beizi/fusion/x2;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/beizi/fusion/x2$d;->a:Lcom/beizi/fusion/x2;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/beizi/fusion/x2;->q(Lcom/beizi/fusion/x2;)Lcom/beizi/fusion/events/EventBean;

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
    iget-object v0, p0, Lcom/beizi/fusion/x2$d;->a:Lcom/beizi/fusion/x2;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/beizi/fusion/x2;->r(Lcom/beizi/fusion/x2;)J

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
    iget-object v2, p0, Lcom/beizi/fusion/x2$d;->a:Lcom/beizi/fusion/x2;

    .line 44
    .line 45
    invoke-static {v2}, Lcom/beizi/fusion/x2;->r(Lcom/beizi/fusion/x2;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    sub-long/2addr v0, v2

    .line 50
    iget-object v2, p0, Lcom/beizi/fusion/x2$d;->a:Lcom/beizi/fusion/x2;

    .line 51
    .line 52
    invoke-static {v2}, Lcom/beizi/fusion/x2;->s(Lcom/beizi/fusion/x2;)Lcom/beizi/fusion/events/EventBean;

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
    iget-object v0, p0, Lcom/beizi/fusion/x2$d;->a:Lcom/beizi/fusion/x2;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/beizi/fusion/x2;->t(Lcom/beizi/fusion/x2;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/x2$d;->a:Lcom/beizi/fusion/x2;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/beizi/fusion/x2;->u(Lcom/beizi/fusion/x2;)Lcom/beizi/fusion/n3;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    iget-object v0, p0, Lcom/beizi/fusion/x2$d;->a:Lcom/beizi/fusion/x2;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/beizi/fusion/x2;->v(Lcom/beizi/fusion/x2;)Lcom/beizi/fusion/n3;

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
    iget-object v0, p0, Lcom/beizi/fusion/x2$d;->a:Lcom/beizi/fusion/x2;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/beizi/fusion/x2;->w(Lcom/beizi/fusion/x2;)Lcom/beizi/fusion/n3;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/beizi/fusion/x2$d;->a:Lcom/beizi/fusion/x2;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/beizi/fusion/x2;->x()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/n3;->d(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/beizi/fusion/x2$d;->a:Lcom/beizi/fusion/x2;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/beizi/fusion/x2;->x(Lcom/beizi/fusion/x2;)V

    .line 107
    .line 108
    .line 109
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/x2$d;->a:Lcom/beizi/fusion/x2;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/beizi/fusion/x2;->y(Lcom/beizi/fusion/x2;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/beizi/fusion/x2$d;->a:Lcom/beizi/fusion/x2;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/beizi/fusion/x2;->z(Lcom/beizi/fusion/x2;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/beizi/fusion/x2$d;->a:Lcom/beizi/fusion/x2;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/beizi/fusion/x2;->A(Lcom/beizi/fusion/x2;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method public onAdClosed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/x2$d;->a:Lcom/beizi/fusion/x2;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/x2;->B(Lcom/beizi/fusion/x2;)Lcom/beizi/fusion/n3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/x2$d;->a:Lcom/beizi/fusion/x2;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/x2;->C(Lcom/beizi/fusion/x2;)Lcom/beizi/fusion/n3;

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
    iget-object v0, p0, Lcom/beizi/fusion/x2$d;->a:Lcom/beizi/fusion/x2;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/beizi/fusion/x2;->E(Lcom/beizi/fusion/x2;)Lcom/beizi/fusion/n3;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/beizi/fusion/x2$d;->a:Lcom/beizi/fusion/x2;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/beizi/fusion/x2;->x()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/beizi/fusion/x2$d;->a:Lcom/beizi/fusion/x2;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/beizi/fusion/x2;->r()Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/n3;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/x2$d;->a:Lcom/beizi/fusion/x2;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/beizi/fusion/x2;->F(Lcom/beizi/fusion/x2;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public onAdShown()V
    .locals 0

    return-void
.end method
