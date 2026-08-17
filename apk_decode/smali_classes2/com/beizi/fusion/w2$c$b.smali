.class Lcom/beizi/fusion/w2$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/vd;


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
    iput-object p1, p0, Lcom/beizi/fusion/w2$c$b;->a:Lcom/beizi/fusion/w2$c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/w2$c$b;->a:Lcom/beizi/fusion/w2$c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/beizi/fusion/w2;->u(Lcom/beizi/fusion/w2;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/w2$c$b;->a:Lcom/beizi/fusion/w2$c;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/beizi/fusion/w2;->v(Lcom/beizi/fusion/w2;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/beizi/fusion/w2$c$b;->a:Lcom/beizi/fusion/w2$c;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/beizi/fusion/w2;->x(Lcom/beizi/fusion/w2;)Lcom/beizi/fusion/events/EventBean;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/beizi/fusion/w2$c$b;->a:Lcom/beizi/fusion/w2$c;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/beizi/fusion/w2;->w(Lcom/beizi/fusion/w2;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getCallBackStrategyUuid()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setCallBackStrategyUuid(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/beizi/fusion/w2$c$b;->a:Lcom/beizi/fusion/w2$c;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/beizi/fusion/w2;->y(Lcom/beizi/fusion/w2;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/w2$c$b;->a:Lcom/beizi/fusion/w2$c;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/beizi/fusion/w2;->z(Lcom/beizi/fusion/w2;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/beizi/fusion/w2$c$b;->a:Lcom/beizi/fusion/w2$c;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/beizi/fusion/w2;->u(Lcom/beizi/fusion/w2;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    iget-object v0, p0, Lcom/beizi/fusion/w2$c$b;->a:Lcom/beizi/fusion/w2$c;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/beizi/fusion/w2;->A(Lcom/beizi/fusion/w2;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_1

    .line 77
    .line 78
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/w2$c$b;->a:Lcom/beizi/fusion/w2$c;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/beizi/fusion/w2;->B(Lcom/beizi/fusion/w2;)Lcom/beizi/fusion/n3;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    iget-object v0, p0, Lcom/beizi/fusion/w2$c$b;->a:Lcom/beizi/fusion/w2$c;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/beizi/fusion/w2;->D(Lcom/beizi/fusion/w2;)Lcom/beizi/fusion/n3;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/beizi/fusion/n3;->z()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    const/4 v1, 0x2

    .line 102
    if-eq v0, v1, :cond_2

    .line 103
    .line 104
    iget-object v0, p0, Lcom/beizi/fusion/w2$c$b;->a:Lcom/beizi/fusion/w2$c;

    .line 105
    .line 106
    iget-object v0, v0, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 107
    .line 108
    invoke-static {v0}, Lcom/beizi/fusion/w2;->E(Lcom/beizi/fusion/w2;)Lcom/beizi/fusion/n3;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/beizi/fusion/w2$c$b;->a:Lcom/beizi/fusion/w2$c;

    .line 113
    .line 114
    iget-object v1, v1, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/beizi/fusion/w2;->x()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/n3;->b(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/w2$c$b;->a:Lcom/beizi/fusion/w2$c;

    .line 124
    .line 125
    iget-object v0, v0, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 126
    .line 127
    invoke-static {v0}, Lcom/beizi/fusion/w2;->F(Lcom/beizi/fusion/w2;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/beizi/fusion/w2$c$b;->a:Lcom/beizi/fusion/w2$c;

    .line 131
    .line 132
    iget-object v0, v0, Lcom/beizi/fusion/w2$c;->a:Lcom/beizi/fusion/w2;

    .line 133
    .line 134
    invoke-static {v0}, Lcom/beizi/fusion/w2;->G(Lcom/beizi/fusion/w2;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method
