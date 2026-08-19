.class Lcom/beizi/fusion/x2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/vd;


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
    iput-object p1, p0, Lcom/beizi/fusion/x2$c;->a:Lcom/beizi/fusion/x2;

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
    iget-object v0, p0, Lcom/beizi/fusion/x2$c;->a:Lcom/beizi/fusion/x2;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/x2;->d(Lcom/beizi/fusion/x2;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/x2$c;->a:Lcom/beizi/fusion/x2;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/x2;->e(Lcom/beizi/fusion/x2;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/beizi/fusion/x2$c;->a:Lcom/beizi/fusion/x2;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/beizi/fusion/x2;->g(Lcom/beizi/fusion/x2;)Lcom/beizi/fusion/events/EventBean;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/beizi/fusion/x2$c;->a:Lcom/beizi/fusion/x2;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/beizi/fusion/x2;->f(Lcom/beizi/fusion/x2;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

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
    iget-object v0, p0, Lcom/beizi/fusion/x2$c;->a:Lcom/beizi/fusion/x2;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/beizi/fusion/x2;->h(Lcom/beizi/fusion/x2;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/x2$c;->a:Lcom/beizi/fusion/x2;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/beizi/fusion/x2;->i(Lcom/beizi/fusion/x2;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/beizi/fusion/x2$c;->a:Lcom/beizi/fusion/x2;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/beizi/fusion/x2;->d(Lcom/beizi/fusion/x2;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, Lcom/beizi/fusion/x2$c;->a:Lcom/beizi/fusion/x2;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/beizi/fusion/x2;->j(Lcom/beizi/fusion/x2;)Z

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
    iget-object v0, p0, Lcom/beizi/fusion/x2$c;->a:Lcom/beizi/fusion/x2;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/beizi/fusion/x2;->k(Lcom/beizi/fusion/x2;)Lcom/beizi/fusion/n3;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    iget-object v0, p0, Lcom/beizi/fusion/x2$c;->a:Lcom/beizi/fusion/x2;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/beizi/fusion/x2;->l(Lcom/beizi/fusion/x2;)Lcom/beizi/fusion/n3;

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
    iget-object v0, p0, Lcom/beizi/fusion/x2$c;->a:Lcom/beizi/fusion/x2;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/beizi/fusion/x2;->m(Lcom/beizi/fusion/x2;)Lcom/beizi/fusion/n3;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/beizi/fusion/x2$c;->a:Lcom/beizi/fusion/x2;

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/beizi/fusion/x2;->x()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/beizi/fusion/x2$c;->a:Lcom/beizi/fusion/x2;

    .line 100
    .line 101
    invoke-static {v0}, Lcom/beizi/fusion/x2;->n(Lcom/beizi/fusion/x2;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/beizi/fusion/x2$c;->a:Lcom/beizi/fusion/x2;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/beizi/fusion/x2;->o(Lcom/beizi/fusion/x2;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method
