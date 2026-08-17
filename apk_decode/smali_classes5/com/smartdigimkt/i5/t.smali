.class public final Lcom/smartdigimkt/i5/t;
.super Lcom/smartdigimkt/g5/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartdigimkt/g5/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final b(Lcom/smartdigimkt/g5/a;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/smartdigimkt/g5/a;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-static {}, Lcom/smartdigimkt/z4/d;->c()Lcom/smartdigimkt/z4/d;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/smartdigimkt/z4/d;->e()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p1, Lcom/smartdigimkt/g5/a;->a:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {}, Lcom/smartdigimkt/sdk/core/SDKContext;->getInstance()Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/smartdigimkt/sdk/core/SDKContext;->h()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Ljava/lang/StringBuffer;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/smartdigimkt/c5/h;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    .line 37
    .line 38
    const-string v0, "&"

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/smartdigimkt/c5/h;->q()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    .line 58
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide v3

    .line 63
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    .line 68
    .line 69
    new-instance v0, Ljava/util/Random;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 72
    .line 73
    .line 74
    const/16 v1, 0x2710

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Lcom/smartdigimkt/c5/i;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, p1, Lcom/smartdigimkt/g5/a;->g:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    iget-object v2, p1, Lcom/smartdigimkt/g5/a;->i:Lcom/smartdigimkt/h5/a;

    .line 98
    .line 99
    if-eqz v2, :cond_1

    .line 100
    .line 101
    iput-wide v0, v2, Lcom/smartdigimkt/h5/a;->b:J

    .line 102
    .line 103
    :cond_1
    iget-object v0, p1, Lcom/smartdigimkt/g5/a;->e:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {}, Lcom/smartdigimkt/z4/m;->a()Lcom/smartdigimkt/z4/m;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1, v0}, Lcom/smartdigimkt/z4/m;->a(Ljava/lang/String;)Lcom/smartdigimkt/a5/e;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {p1}, Lcom/smartdigimkt/c5/b0;->a(Lcom/smartdigimkt/g5/a;)Lcom/smartdigimkt/q3/a;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-static {v2, v1}, Lcom/smartdigimkt/c5/b0;->a(Lcom/smartdigimkt/q3/a;Lcom/smartdigimkt/a5/e;)V

    .line 118
    .line 119
    .line 120
    iput-object v2, p1, Lcom/smartdigimkt/g5/a;->s:Lcom/smartdigimkt/q3/a;

    .line 121
    .line 122
    new-instance v3, Lcom/smartdigimkt/j4/a;

    .line 123
    .line 124
    invoke-direct {v3, v0}, Lcom/smartdigimkt/j4/a;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iput-object v1, v3, Lcom/smartdigimkt/j4/a;->b:Lcom/smartdigimkt/a5/e;

    .line 128
    .line 129
    new-instance v0, Lcom/smartdigimkt/i5/r;

    .line 130
    .line 131
    invoke-direct {v0, p0, p1, v1, v2}, Lcom/smartdigimkt/i5/r;-><init>(Lcom/smartdigimkt/i5/t;Lcom/smartdigimkt/g5/a;Lcom/smartdigimkt/a5/e;Lcom/smartdigimkt/q3/a;)V

    .line 132
    .line 133
    .line 134
    iput-object v0, v3, Lcom/smartdigimkt/j4/a;->c:Lcom/smartdigimkt/z4/l;

    .line 135
    .line 136
    new-instance p1, Lcom/smartdigimkt/j4/b;

    .line 137
    .line 138
    invoke-direct {p1, v3}, Lcom/smartdigimkt/j4/b;-><init>(Lcom/smartdigimkt/j4/a;)V

    .line 139
    .line 140
    .line 141
    invoke-static {}, Lcom/smartdigimkt/b4/e;->a()Lcom/smartdigimkt/b4/e;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    new-instance v1, Lcom/smartdigimkt/i5/s;

    .line 146
    .line 147
    invoke-direct {v1, p1}, Lcom/smartdigimkt/i5/s;-><init>(Lcom/smartdigimkt/j4/b;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1}, Lcom/smartdigimkt/b4/e;->c(Ljava/lang/Runnable;)V

    .line 151
    .line 152
    .line 153
    const/4 p1, 0x0

    .line 154
    return p1
.end method
