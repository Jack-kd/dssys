.class public Lcom/beizi/fusion/di;
.super Lcom/beizi/fusion/wa;
.source "SourceFile"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:F

.field private R:F

.field private S:F

.field private T:F

.field private U:F

.field private V:F

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:I

.field private final a:Ljava/lang/String;

.field private a0:J

.field private final b:Landroid/content/Context;

.field private c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/beizi/fusion/za;Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/wa;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "-999"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/beizi/fusion/di;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/beizi/fusion/di;->b:Landroid/content/Context;

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p2}, Lcom/beizi/fusion/za;->getEventCode()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p2, ""

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/beizi/fusion/di;->g:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p3}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getRequestTracSessionID()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/beizi/fusion/di;->d:Ljava/lang/String;

    .line 42
    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/beizi/fusion/di;->f:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p3}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getInteractiveType()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iput p1, p0, Lcom/beizi/fusion/di;->c:I

    .line 69
    .line 70
    invoke-virtual {p3}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getCacheRequestTraceSessionID()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/beizi/fusion/di;->e:Ljava/lang/String;

    .line 75
    .line 76
    iget p1, p0, Lcom/beizi/fusion/di;->c:I

    .line 77
    .line 78
    const/4 v0, -0x1

    .line 79
    if-eq p1, v0, :cond_0

    .line 80
    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    iget v0, p0, Lcom/beizi/fusion/di;->c:I

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    :cond_0
    iput-object p2, p0, Lcom/beizi/fusion/di;->h:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {p3}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getVideoExtUserID()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iput-object p1, p0, Lcom/beizi/fusion/di;->X:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {p3}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getVideoExtCustomData()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iput-object p1, p0, Lcom/beizi/fusion/di;->Y:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {p3}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getByCacheAd()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    iput p1, p0, Lcom/beizi/fusion/di;->Z:I

    .line 117
    .line 118
    invoke-virtual {p3}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getVideoDuration()J

    .line 119
    .line 120
    .line 121
    move-result-wide p1

    .line 122
    iput-wide p1, p0, Lcom/beizi/fusion/di;->a0:J

    .line 123
    .line 124
    invoke-virtual {p3}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getViewRecorder()Lcom/beizi/fusion/lf$b;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    if-eqz p1, :cond_1

    .line 129
    .line 130
    invoke-direct {p0, p1}, Lcom/beizi/fusion/di;->g(Lcom/beizi/fusion/lf$b;)V

    .line 131
    .line 132
    .line 133
    invoke-direct {p0, p1}, Lcom/beizi/fusion/di;->h(Lcom/beizi/fusion/lf$b;)V

    .line 134
    .line 135
    .line 136
    invoke-direct {p0, p1}, Lcom/beizi/fusion/di;->f(Lcom/beizi/fusion/lf$b;)V

    .line 137
    .line 138
    .line 139
    invoke-direct {p0, p1}, Lcom/beizi/fusion/di;->e(Lcom/beizi/fusion/lf$b;)V

    .line 140
    .line 141
    .line 142
    invoke-direct {p0, p1}, Lcom/beizi/fusion/di;->a(Lcom/beizi/fusion/lf$b;)V

    .line 143
    .line 144
    .line 145
    invoke-direct {p0, p1}, Lcom/beizi/fusion/di;->b(Lcom/beizi/fusion/lf$b;)V

    .line 146
    .line 147
    .line 148
    invoke-direct {p0, p1}, Lcom/beizi/fusion/di;->c(Lcom/beizi/fusion/lf$b;)V

    .line 149
    .line 150
    .line 151
    invoke-direct {p0, p1}, Lcom/beizi/fusion/di;->d(Lcom/beizi/fusion/lf$b;)V

    .line 152
    .line 153
    .line 154
    :cond_1
    invoke-virtual {p3}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getSensorRecord()Lcom/beizi/fusion/ze$c;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    if-eqz p1, :cond_2

    .line 159
    .line 160
    invoke-virtual {p3}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getTSensorModel()Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/beizi/fusion/di;->a(Lcom/beizi/fusion/ze$c;Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;)V

    .line 165
    .line 166
    .line 167
    iget p1, p0, Lcom/beizi/fusion/di;->c:I

    .line 168
    .line 169
    invoke-virtual {p3}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/trace/AdTraceModel;->getTSensorModel()Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/beizi/fusion/di;->a(ILcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;)V

    .line 174
    .line 175
    .line 176
    :cond_2
    return-void
.end method

.method private a(F)Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/beizi/fusion/di;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/beizi/fusion/jn$a;->b(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(ILcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;)V
    .locals 1

    if-eqz p2, :cond_5

    .line 1
    invoke-virtual {p2}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;->getSld()Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/SldModel;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2
    sget-object v0, Lcom/beizi/fusion/fd$a;->c:Lcom/beizi/fusion/fd$a;

    invoke-virtual {v0}, Lcom/beizi/fusion/fd$a;->getEventCode()I

    move-result v0

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/beizi/fusion/fd$a;->g:Lcom/beizi/fusion/fd$a;

    .line 3
    invoke-virtual {v0}, Lcom/beizi/fusion/fd$a;->getEventCode()I

    move-result v0

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/beizi/fusion/fd$a;->h:Lcom/beizi/fusion/fd$a;

    .line 4
    invoke-virtual {v0}, Lcom/beizi/fusion/fd$a;->getEventCode()I

    move-result v0

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/beizi/fusion/fd$a;->i:Lcom/beizi/fusion/fd$a;

    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/fd$a;->getEventCode()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/beizi/fusion/fd$a;->d:Lcom/beizi/fusion/fd$a;

    invoke-virtual {v0}, Lcom/beizi/fusion/fd$a;->getEventCode()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 7
    invoke-virtual {p2}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;->getSld()Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/SldModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/SldModel;->getScroll()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beizi/fusion/di;->W:Ljava/lang/String;

    return-void

    .line 8
    :cond_1
    sget-object v0, Lcom/beizi/fusion/fd$a;->e:Lcom/beizi/fusion/fd$a;

    invoke-virtual {v0}, Lcom/beizi/fusion/fd$a;->getEventCode()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 9
    invoke-virtual {p2}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;->getSld()Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/SldModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/SldModel;->getShake()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beizi/fusion/di;->W:Ljava/lang/String;

    return-void

    .line 10
    :cond_2
    sget-object v0, Lcom/beizi/fusion/fd$a;->f:Lcom/beizi/fusion/fd$a;

    invoke-virtual {v0}, Lcom/beizi/fusion/fd$a;->getEventCode()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 11
    invoke-virtual {p2}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;->getSld()Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/SldModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/SldModel;->getTurn()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beizi/fusion/di;->W:Ljava/lang/String;

    return-void

    .line 12
    :cond_3
    invoke-virtual {p2}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;->getSld()Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/SldModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/SldModel;->getOther()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beizi/fusion/di;->W:Ljava/lang/String;

    return-void

    .line 13
    :cond_4
    :goto_0
    invoke-virtual {p2}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;->getSld()Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/SldModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/SldModel;->getClk()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beizi/fusion/di;->W:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method private a(Lcom/beizi/fusion/lf$b;)V
    .locals 5

    .line 30
    invoke-virtual {p1}, Lcom/beizi/fusion/lf$b;->d()F

    move-result v0

    .line 31
    invoke-virtual {p1}, Lcom/beizi/fusion/lf$b;->a()F

    move-result v1

    .line 32
    iget v2, p0, Lcom/beizi/fusion/di;->c:I

    sget-object v3, Lcom/beizi/fusion/fd$a;->c:Lcom/beizi/fusion/fd$a;

    invoke-virtual {v3}, Lcom/beizi/fusion/fd$a;->getEventCode()I

    move-result v3

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/beizi/fusion/di;->c:I

    sget-object v3, Lcom/beizi/fusion/fd$a;->d:Lcom/beizi/fusion/fd$a;

    invoke-virtual {v3}, Lcom/beizi/fusion/fd$a;->getEventCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    const-string p1, "-999"

    iput-object p1, p0, Lcom/beizi/fusion/di;->s:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/beizi/fusion/di;->I:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/beizi/fusion/di;->w:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/beizi/fusion/di;->M:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/beizi/fusion/di;->o:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/beizi/fusion/di;->E:Ljava/lang/String;

    return-void

    .line 39
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/beizi/fusion/lf$b;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/beizi/fusion/di;->m:Ljava/lang/String;

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/beizi/fusion/di;->s:Ljava/lang/String;

    .line 41
    invoke-direct {p0, v0}, Lcom/beizi/fusion/di;->a(F)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/beizi/fusion/di;->I:Ljava/lang/String;

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/beizi/fusion/di;->w:Ljava/lang/String;

    .line 43
    invoke-direct {p0, v0}, Lcom/beizi/fusion/di;->a(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/di;->M:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beizi/fusion/di;->o:Ljava/lang/String;

    .line 45
    invoke-direct {p0, v1}, Lcom/beizi/fusion/di;->a(F)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beizi/fusion/di;->E:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/beizi/fusion/ze$c;Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;)V
    .locals 3

    if-eqz p2, :cond_8

    .line 14
    invoke-virtual {p2}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 15
    invoke-virtual {p2}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;->getAglx()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/beizi/fusion/di;->Q:F

    .line 16
    invoke-virtual {p2}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;->getAgly()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/beizi/fusion/di;->R:F

    .line 17
    invoke-virtual {p2}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;->getAglz()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/beizi/fusion/di;->S:F

    .line 18
    invoke-virtual {p2}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;->getAccx()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/beizi/fusion/di;->T:F

    .line 19
    invoke-virtual {p2}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;->getAccy()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/beizi/fusion/di;->U:F

    .line 20
    invoke-virtual {p2}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;->getAccz()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/beizi/fusion/di;->V:F

    .line 21
    :cond_0
    invoke-virtual {p2}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    if-eqz p1, :cond_8

    .line 22
    invoke-virtual {p1, v1}, Lcom/beizi/fusion/ze$c;->a(I)Lcom/beizi/fusion/ze$b;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 23
    iget v1, v0, Lcom/beizi/fusion/ze$b;->a:F

    invoke-virtual {p2}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;->getAccx()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, v0, Lcom/beizi/fusion/ze$b;->a:F

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;->getAccx()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/beizi/fusion/ql;->a(F)F

    move-result v1

    :goto_0
    iput v1, p0, Lcom/beizi/fusion/di;->T:F

    .line 24
    iget v1, v0, Lcom/beizi/fusion/ze$b;->b:F

    invoke-virtual {p2}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;->getAccy()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget v1, v0, Lcom/beizi/fusion/ze$b;->b:F

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;->getAccy()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/beizi/fusion/ql;->a(F)F

    move-result v1

    :goto_1
    iput v1, p0, Lcom/beizi/fusion/di;->U:F

    .line 25
    iget v1, v0, Lcom/beizi/fusion/ze$b;->c:F

    invoke-virtual {p2}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;->getAccz()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iget v0, v0, Lcom/beizi/fusion/ze$b;->c:F

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;->getAccz()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/beizi/fusion/ql;->a(F)F

    move-result v0

    :goto_2
    iput v0, p0, Lcom/beizi/fusion/di;->V:F

    :cond_4
    const/4 v0, 0x4

    .line 26
    invoke-virtual {p1, v0}, Lcom/beizi/fusion/ze$c;->a(I)Lcom/beizi/fusion/ze$b;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 27
    iget v0, p1, Lcom/beizi/fusion/ze$b;->a:F

    invoke-virtual {p2}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;->getAglx()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget v0, p1, Lcom/beizi/fusion/ze$b;->a:F

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;->getAglx()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/beizi/fusion/ql;->a(F)F

    move-result v0

    :goto_3
    iput v0, p0, Lcom/beizi/fusion/di;->Q:F

    .line 28
    iget v0, p1, Lcom/beizi/fusion/ze$b;->b:F

    invoke-virtual {p2}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;->getAgly()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    iget v0, p1, Lcom/beizi/fusion/ze$b;->b:F

    goto :goto_4

    :cond_6
    invoke-virtual {p2}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;->getAgly()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/beizi/fusion/ql;->a(F)F

    move-result v0

    :goto_4
    iput v0, p0, Lcom/beizi/fusion/di;->R:F

    .line 29
    iget v0, p1, Lcom/beizi/fusion/ze$b;->c:F

    invoke-virtual {p2}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;->getAglz()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    iget p1, p1, Lcom/beizi/fusion/ze$b;->c:F

    goto :goto_5

    :cond_7
    invoke-virtual {p2}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/report/rule/TSensorModel;->getAglz()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Lcom/beizi/fusion/ql;->a(F)F

    move-result p1

    :goto_5
    iput p1, p0, Lcom/beizi/fusion/di;->S:F

    :cond_8
    return-void
.end method

.method private b(Lcom/beizi/fusion/lf$b;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/beizi/fusion/lf$b;->e()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/beizi/fusion/lf$b;->b()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget v1, p0, Lcom/beizi/fusion/di;->c:I

    .line 10
    .line 11
    sget-object v2, Lcom/beizi/fusion/fd$a;->c:Lcom/beizi/fusion/fd$a;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/beizi/fusion/fd$a;->getEventCode()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    .line 19
    iget v1, p0, Lcom/beizi/fusion/di;->c:I

    .line 20
    .line 21
    sget-object v2, Lcom/beizi/fusion/fd$a;->d:Lcom/beizi/fusion/fd$a;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/beizi/fusion/fd$a;->getEventCode()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string p1, "-999"

    .line 31
    .line 32
    iput-object p1, p0, Lcom/beizi/fusion/di;->t:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/beizi/fusion/di;->J:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/beizi/fusion/di;->x:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/beizi/fusion/di;->N:Ljava/lang/String;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/beizi/fusion/di;->p:Ljava/lang/String;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/beizi/fusion/di;->F:Ljava/lang/String;

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, ""

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iput-object v1, p0, Lcom/beizi/fusion/di;->t:Ljava/lang/String;

    .line 63
    .line 64
    invoke-direct {p0, v0}, Lcom/beizi/fusion/di;->a(F)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iput-object v1, p0, Lcom/beizi/fusion/di;->J:Ljava/lang/String;

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iput-object v1, p0, Lcom/beizi/fusion/di;->x:Ljava/lang/String;

    .line 86
    .line 87
    invoke-direct {p0, v0}, Lcom/beizi/fusion/di;->a(F)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, p0, Lcom/beizi/fusion/di;->N:Ljava/lang/String;

    .line 92
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iput-object v0, p0, Lcom/beizi/fusion/di;->p:Ljava/lang/String;

    .line 109
    .line 110
    invoke-direct {p0, p1}, Lcom/beizi/fusion/di;->a(F)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Lcom/beizi/fusion/di;->F:Ljava/lang/String;

    .line 115
    .line 116
    return-void
.end method

.method private c(Lcom/beizi/fusion/lf$b;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/beizi/fusion/lf$b;->i()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/beizi/fusion/lf$b;->f()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Lcom/beizi/fusion/di;->c:I

    .line 10
    .line 11
    sget-object v3, Lcom/beizi/fusion/fd$a;->c:Lcom/beizi/fusion/fd$a;

    .line 12
    .line 13
    invoke-virtual {v3}, Lcom/beizi/fusion/fd$a;->getEventCode()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eq v2, v3, :cond_1

    .line 18
    .line 19
    iget v2, p0, Lcom/beizi/fusion/di;->c:I

    .line 20
    .line 21
    sget-object v3, Lcom/beizi/fusion/fd$a;->d:Lcom/beizi/fusion/fd$a;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/beizi/fusion/fd$a;->getEventCode()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-ne v2, v3, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string p1, "-999"

    .line 31
    .line 32
    iput-object p1, p0, Lcom/beizi/fusion/di;->u:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/beizi/fusion/di;->K:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/beizi/fusion/di;->y:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/beizi/fusion/di;->O:Ljava/lang/String;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/beizi/fusion/di;->q:Ljava/lang/String;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/beizi/fusion/di;->G:Ljava/lang/String;

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/beizi/fusion/lf$b;->h()J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p1, ""

    .line 58
    .line 59
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    iput-object v2, p0, Lcom/beizi/fusion/di;->n:Ljava/lang/String;

    .line 67
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iput-object v2, p0, Lcom/beizi/fusion/di;->u:Ljava/lang/String;

    .line 84
    .line 85
    invoke-direct {p0, v0}, Lcom/beizi/fusion/di;->a(F)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    iput-object v2, p0, Lcom/beizi/fusion/di;->K:Ljava/lang/String;

    .line 90
    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    iput-object v2, p0, Lcom/beizi/fusion/di;->y:Ljava/lang/String;

    .line 107
    .line 108
    invoke-direct {p0, v0}, Lcom/beizi/fusion/di;->a(F)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iput-object v0, p0, Lcom/beizi/fusion/di;->O:Ljava/lang/String;

    .line 113
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iput-object p1, p0, Lcom/beizi/fusion/di;->q:Ljava/lang/String;

    .line 130
    .line 131
    invoke-direct {p0, v1}, Lcom/beizi/fusion/di;->a(F)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iput-object p1, p0, Lcom/beizi/fusion/di;->G:Ljava/lang/String;

    .line 136
    .line 137
    return-void
.end method

.method private d(Lcom/beizi/fusion/lf$b;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/beizi/fusion/lf$b;->j()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/beizi/fusion/lf$b;->g()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget v1, p0, Lcom/beizi/fusion/di;->c:I

    .line 10
    .line 11
    sget-object v2, Lcom/beizi/fusion/fd$a;->c:Lcom/beizi/fusion/fd$a;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/beizi/fusion/fd$a;->getEventCode()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    .line 19
    iget v1, p0, Lcom/beizi/fusion/di;->c:I

    .line 20
    .line 21
    sget-object v2, Lcom/beizi/fusion/fd$a;->d:Lcom/beizi/fusion/fd$a;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/beizi/fusion/fd$a;->getEventCode()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string p1, "-999"

    .line 31
    .line 32
    iput-object p1, p0, Lcom/beizi/fusion/di;->v:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/beizi/fusion/di;->L:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/beizi/fusion/di;->z:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/beizi/fusion/di;->P:Ljava/lang/String;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/beizi/fusion/di;->r:Ljava/lang/String;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/beizi/fusion/di;->H:Ljava/lang/String;

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, ""

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iput-object v1, p0, Lcom/beizi/fusion/di;->v:Ljava/lang/String;

    .line 63
    .line 64
    invoke-direct {p0, v0}, Lcom/beizi/fusion/di;->a(F)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iput-object v1, p0, Lcom/beizi/fusion/di;->L:Ljava/lang/String;

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iput-object v1, p0, Lcom/beizi/fusion/di;->z:Ljava/lang/String;

    .line 86
    .line 87
    invoke-direct {p0, v0}, Lcom/beizi/fusion/di;->a(F)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, p0, Lcom/beizi/fusion/di;->P:Ljava/lang/String;

    .line 92
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iput-object v0, p0, Lcom/beizi/fusion/di;->r:Ljava/lang/String;

    .line 109
    .line 110
    invoke-direct {p0, p1}, Lcom/beizi/fusion/di;->a(F)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Lcom/beizi/fusion/di;->H:Ljava/lang/String;

    .line 115
    .line 116
    return-void
.end method

.method private e(Lcom/beizi/fusion/lf$b;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/beizi/fusion/lf$b;->k()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ""

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/beizi/fusion/di;->l:Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/beizi/fusion/di;->a(F)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/beizi/fusion/di;->D:Ljava/lang/String;

    .line 30
    .line 31
    return-void
.end method

.method private f(Lcom/beizi/fusion/lf$b;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/beizi/fusion/lf$b;->l()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ""

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/beizi/fusion/di;->k:Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/beizi/fusion/di;->a(F)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/beizi/fusion/di;->C:Ljava/lang/String;

    .line 30
    .line 31
    return-void
.end method

.method private g(Lcom/beizi/fusion/lf$b;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/beizi/fusion/lf$b;->m()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/beizi/fusion/di;->i:Ljava/lang/String;

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/beizi/fusion/di;->a(F)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/beizi/fusion/di;->A:Ljava/lang/String;

    .line 29
    .line 30
    return-void
.end method

.method private h(Lcom/beizi/fusion/lf$b;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/beizi/fusion/lf$b;->n()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/beizi/fusion/di;->j:Ljava/lang/String;

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/beizi/fusion/di;->a(F)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/beizi/fusion/di;->B:Ljava/lang/String;

    .line 29
    .line 30
    return-void
.end method
