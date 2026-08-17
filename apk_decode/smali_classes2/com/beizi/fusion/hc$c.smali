.class Lcom/beizi/fusion/hc$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/hc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/hc;


# direct methods
.method private constructor <init>(Lcom/beizi/fusion/hc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/hc$c;->a:Lcom/beizi/fusion/hc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/beizi/fusion/hc;Lcom/beizi/fusion/hc$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/beizi/fusion/hc$c;-><init>(Lcom/beizi/fusion/hc;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/hc$c;->a:Lcom/beizi/fusion/hc;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/hc;->a(Lcom/beizi/fusion/hc;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/beizi/fusion/jn$a;->a(Landroid/view/View;I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/beizi/fusion/hc$c;->a:Lcom/beizi/fusion/hc;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/beizi/fusion/hc;->b(Lcom/beizi/fusion/hc;)Lcom/beizi/fusion/hc$b;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v2, Lcom/beizi/fusion/hc$b;->b:Lcom/beizi/fusion/hc$b;

    .line 23
    .line 24
    if-ne v0, v2, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/beizi/fusion/hc$c;->a:Lcom/beizi/fusion/hc;

    .line 27
    .line 28
    sget-object v2, Lcom/beizi/fusion/ic$a;->e:Lcom/beizi/fusion/ic$a;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/beizi/fusion/hc;->a(Lcom/beizi/fusion/hc;)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v0, v2, v3, v1}, Lcom/beizi/fusion/hc;->a(Lcom/beizi/fusion/za;Landroid/view/View;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/hc$c;->a:Lcom/beizi/fusion/hc;

    .line 38
    .line 39
    sget-object v2, Lcom/beizi/fusion/hc$b;->a:Lcom/beizi/fusion/hc$b;

    .line 40
    .line 41
    invoke-static {v0, v2}, Lcom/beizi/fusion/hc;->a(Lcom/beizi/fusion/hc;Lcom/beizi/fusion/hc$b;)Lcom/beizi/fusion/hc$b;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/hc$c;->a:Lcom/beizi/fusion/hc;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/beizi/fusion/hc;->b(Lcom/beizi/fusion/hc;)Lcom/beizi/fusion/hc$b;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sget-object v2, Lcom/beizi/fusion/hc$b;->a:Lcom/beizi/fusion/hc$b;

    .line 52
    .line 53
    if-ne v0, v2, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/beizi/fusion/hc$c;->a:Lcom/beizi/fusion/hc;

    .line 56
    .line 57
    sget-object v2, Lcom/beizi/fusion/ic$a;->f:Lcom/beizi/fusion/ic$a;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/beizi/fusion/hc;->a(Lcom/beizi/fusion/hc;)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v0, v2, v3, v1}, Lcom/beizi/fusion/hc;->a(Lcom/beizi/fusion/za;Landroid/view/View;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/hc$c;->a:Lcom/beizi/fusion/hc;

    .line 67
    .line 68
    sget-object v2, Lcom/beizi/fusion/hc$b;->b:Lcom/beizi/fusion/hc$b;

    .line 69
    .line 70
    invoke-static {v0, v2}, Lcom/beizi/fusion/hc;->a(Lcom/beizi/fusion/hc;Lcom/beizi/fusion/hc$b;)Lcom/beizi/fusion/hc$b;

    .line 71
    .line 72
    .line 73
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/hc$c;->a:Lcom/beizi/fusion/hc;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/beizi/fusion/hc;->c(Lcom/beizi/fusion/hc;)Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/ReportModel3;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    iget-object v0, p0, Lcom/beizi/fusion/hc$c;->a:Lcom/beizi/fusion/hc;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/beizi/fusion/hc;->c(Lcom/beizi/fusion/hc;)Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/ReportModel3;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/ReportModel3;->getShow()Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/ShowModel;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    iget-object v0, p0, Lcom/beizi/fusion/hc$c;->a:Lcom/beizi/fusion/hc;

    .line 94
    .line 95
    invoke-static {v0}, Lcom/beizi/fusion/hc;->c(Lcom/beizi/fusion/hc;)Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/ReportModel3;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/ReportModel3;->getShow()Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/ShowModel;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/ShowModel;->getAv()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    goto :goto_1

    .line 108
    :cond_3
    const/4 v0, 0x0

    .line 109
    :goto_1
    iget-object v2, p0, Lcom/beizi/fusion/hc$c;->a:Lcom/beizi/fusion/hc;

    .line 110
    .line 111
    invoke-static {v2}, Lcom/beizi/fusion/hc;->a(Lcom/beizi/fusion/hc;)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-static {v2, v0}, Lcom/beizi/fusion/jn$a;->a(Landroid/view/View;I)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_4

    .line 120
    .line 121
    iget-object v0, p0, Lcom/beizi/fusion/hc$c;->a:Lcom/beizi/fusion/hc;

    .line 122
    .line 123
    sget-object v2, Lcom/beizi/fusion/ic$a;->d:Lcom/beizi/fusion/ic$a;

    .line 124
    .line 125
    invoke-static {v0}, Lcom/beizi/fusion/hc;->a(Lcom/beizi/fusion/hc;)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v0, v2, v3, v1}, Lcom/beizi/fusion/hc;->a(Lcom/beizi/fusion/za;Landroid/view/View;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/beizi/fusion/hc$c;->a:Lcom/beizi/fusion/hc;

    .line 133
    .line 134
    sget-object v2, Lcom/beizi/fusion/ic$a;->c:Lcom/beizi/fusion/ic$a;

    .line 135
    .line 136
    invoke-static {v0}, Lcom/beizi/fusion/hc;->a(Lcom/beizi/fusion/hc;)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v0, v2, v3, v1}, Lcom/beizi/fusion/hc;->a(Lcom/beizi/fusion/za;Landroid/view/View;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :cond_4
    return-void
.end method
