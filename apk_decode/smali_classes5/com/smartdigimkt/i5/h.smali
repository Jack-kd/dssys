.class public final Lcom/smartdigimkt/i5/h;
.super Lcom/smartdigimkt/g5/c;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public e:Lcom/smartdigimkt/i5/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartdigimkt/g5/c;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/smartdigimkt/i5/h;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/smartdigimkt/i5/h;->c:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/smartdigimkt/i5/h;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/smartdigimkt/g5/a;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/smartdigimkt/g5/a;->m:Lcom/smartdigimkt/a5/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p1, Lcom/smartdigimkt/g5/a;->q:Lcom/smartdigimkt/k4/a;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/smartdigimkt/sdk/api/AdError;->getErrorInfo()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, v0, Lcom/smartdigimkt/a5/f;->i:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p1, Lcom/smartdigimkt/g5/a;->e:Ljava/lang/String;

    .line 16
    .line 17
    iget v1, p1, Lcom/smartdigimkt/g5/a;->c:I

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/smartdigimkt/c5/j;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object p1, p1, Lcom/smartdigimkt/g5/a;->m:Lcom/smartdigimkt/a5/f;

    .line 28
    .line 29
    sget-object v2, Lcom/smartdigimkt/c5/w;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 30
    .line 31
    invoke-static {}, Lcom/smartdigimkt/sdk/api/SDMSDK;->getInstance()Lcom/smartdigimkt/sdk/api/SDMSDK;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/smartdigimkt/sdk/api/SDMSDK;->isNetworkLogDebug()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    sget-object v2, Lcom/smartdigimkt/c5/w;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    new-instance v3, Lcom/smartdigimkt/c5/s;

    .line 46
    .line 47
    invoke-direct {v3, p0, v0, v1, p1}, Lcom/smartdigimkt/c5/s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smartdigimkt/a5/f;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Lcom/smartdigimkt/g5/a;)Z
    .locals 11

    .line 1
    const-string v0, "start"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/smartdigimkt/i5/h;->a(Ljava/lang/String;Lcom/smartdigimkt/g5/a;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/smartdigimkt/g5/a;->a()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "success"

    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/smartdigimkt/i5/h;->a(Ljava/lang/String;Lcom/smartdigimkt/g5/a;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iget-object v2, p1, Lcom/smartdigimkt/g5/a;->i:Lcom/smartdigimkt/h5/a;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    iput-wide v0, v2, Lcom/smartdigimkt/h5/a;->d:J

    .line 28
    .line 29
    :cond_1
    iget-object v7, p1, Lcom/smartdigimkt/g5/a;->g:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v8, p1, Lcom/smartdigimkt/g5/a;->l:Lcom/smartdigimkt/a5/e;

    .line 32
    .line 33
    const-string v0, "10008"

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    if-nez v8, :cond_2

    .line 37
    .line 38
    const-string v2, "The placeStrategy is null."

    .line 39
    .line 40
    invoke-static {v0, v2}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Lcom/smartdigimkt/g5/a;->a(Lcom/smartdigimkt/k4/a;)V

    .line 45
    .line 46
    .line 47
    return v1

    .line 48
    :cond_2
    iget-object v9, p1, Lcom/smartdigimkt/g5/a;->m:Lcom/smartdigimkt/a5/f;

    .line 49
    .line 50
    if-nez v9, :cond_3

    .line 51
    .line 52
    const-string v2, "The placeStrategy does not has ADX ad source"

    .line 53
    .line 54
    invoke-static {v0, v2}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Lcom/smartdigimkt/g5/a;->a(Lcom/smartdigimkt/k4/a;)V

    .line 59
    .line 60
    .line 61
    return v1

    .line 62
    :cond_3
    iget-wide v2, v8, Lcom/smartdigimkt/a5/e;->p:J

    .line 63
    .line 64
    const-wide/16 v4, 0x0

    .line 65
    .line 66
    cmp-long v0, v2, v4

    .line 67
    .line 68
    if-gez v0, :cond_4

    .line 69
    .line 70
    const-wide/16 v2, 0x2710

    .line 71
    .line 72
    :cond_4
    new-instance v0, Lcom/smartdigimkt/i5/g;

    .line 73
    .line 74
    new-instance v4, Lcom/smartdigimkt/i5/c;

    .line 75
    .line 76
    invoke-direct {v4, p0, p1}, Lcom/smartdigimkt/i5/c;-><init>(Lcom/smartdigimkt/i5/h;Lcom/smartdigimkt/g5/a;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, v4}, Lcom/smartdigimkt/i5/g;-><init>(Lcom/smartdigimkt/i5/c;)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lcom/smartdigimkt/i5/h;->e:Lcom/smartdigimkt/i5/g;

    .line 83
    .line 84
    invoke-static {}, Lcom/smartdigimkt/x3/g;->a()Lcom/smartdigimkt/x3/g;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v4, p0, Lcom/smartdigimkt/i5/h;->e:Lcom/smartdigimkt/i5/g;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/smartdigimkt/x3/g;->a:Lcom/smartdigimkt/x3/f;

    .line 91
    .line 92
    invoke-virtual {v0, v4, v2, v3}, Lcom/smartdigimkt/x3/f;->a(Lcom/smartdigimkt/x3/b;J)V

    .line 93
    .line 94
    .line 95
    new-instance v6, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-static {v7, v8, v9}, Lcom/smartdigimkt/l3/a;->a(Ljava/lang/String;Lcom/smartdigimkt/a5/e;Lcom/smartdigimkt/a5/f;)Lcom/smartdigimkt/l3/a;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {}, Lcom/smartdigimkt/d4/i;->a()Lcom/smartdigimkt/d4/i;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    iget-object v10, v9, Lcom/smartdigimkt/a5/f;->e:Ljava/util/Map;

    .line 109
    .line 110
    new-instance v3, Lcom/smartdigimkt/i5/e;

    .line 111
    .line 112
    move-object v4, p0

    .line 113
    move-object v5, p1

    .line 114
    invoke-direct/range {v3 .. v9}, Lcom/smartdigimkt/i5/e;-><init>(Lcom/smartdigimkt/i5/h;Lcom/smartdigimkt/g5/a;Ljava/util/ArrayList;Ljava/lang/String;Lcom/smartdigimkt/a5/e;Lcom/smartdigimkt/a5/f;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-static {}, Lcom/smartdigimkt/x/l;->a()Lcom/smartdigimkt/x/l;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    new-instance v4, Lcom/smartdigimkt/d4/h;

    .line 125
    .line 126
    invoke-direct {v4, v2, v3, v10, v0}, Lcom/smartdigimkt/d4/h;-><init>(Lcom/smartdigimkt/d4/i;Lcom/smartdigimkt/sdk/api/ISDMAdManager$BidTokenCallBack;Ljava/util/Map;Lcom/smartdigimkt/l3/a;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-static {}, Lcom/smartdigimkt/b4/e;->a()Lcom/smartdigimkt/b4/e;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-static {}, Lcom/smartdigimkt/b4/e;->b()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_5

    .line 144
    .line 145
    invoke-static {}, Lcom/smartdigimkt/b4/e;->a()Lcom/smartdigimkt/b4/e;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    new-instance v2, Lcom/smartdigimkt/x/d;

    .line 150
    .line 151
    invoke-direct {v2, p1, v4}, Lcom/smartdigimkt/x/d;-><init>(Lcom/smartdigimkt/x/l;Lcom/smartdigimkt/d4/h;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v2}, Lcom/smartdigimkt/b4/e;->c(Ljava/lang/Runnable;)V

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_5
    invoke-virtual {p1, v4}, Lcom/smartdigimkt/x/l;->a(Lcom/smartdigimkt/x/k;)V

    .line 159
    .line 160
    .line 161
    :goto_0
    return v1
.end method
