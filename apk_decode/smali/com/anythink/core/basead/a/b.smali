.class public final Lcom/anythink/core/basead/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/basead/adx/api/IATAdxHandler;


# static fields
.field public static a:Ljava/lang/String; = "anythink_adx_handler"


# instance fields
.field private b:Lcom/anythink/core/common/h/ad;

.field private c:Lcom/anythink/core/common/h/by;

.field private d:Lcom/anythink/core/common/h/n;

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/anythink/core/common/h/ad;Lcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/anythink/core/basead/a/b;->b:Lcom/anythink/core/common/h/ad;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/anythink/core/basead/a/b;->c:Lcom/anythink/core/common/h/by;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/anythink/core/basead/a/b;->d:Lcom/anythink/core/common/h/n;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final declared-synchronized destroy()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/core/basead/a/b;->f:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/anythink/core/basead/a/b;->a:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "destroy: has call destroy(), do nothing"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_2

    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 18
    :try_start_1
    iput-boolean v0, p0, Lcom/anythink/core/basead/a/b;->f:Z

    .line 19
    .line 20
    iget-object v0, p0, Lcom/anythink/core/basead/a/b;->d:Lcom/anythink/core/common/h/n;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/anythink/core/common/h/bx;->aQ()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/anythink/core/basead/a/b;->c:Lcom/anythink/core/common/h/by;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/anythink/core/common/h/by;->G()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    :try_start_2
    iget-object v0, p0, Lcom/anythink/core/basead/a/b;->b:Lcom/anythink/core/common/h/ad;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/anythink/core/common/h/z;->getCommonAdManager()Lcom/anythink/core/common/f;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/anythink/core/common/f;->e()Lcom/anythink/core/common/a;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/anythink/core/common/f;->e()Lcom/anythink/core/common/a;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/anythink/core/basead/a/b;->d:Lcom/anythink/core/common/h/n;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/anythink/core/common/h/bx;->aQ()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/anythink/core/basead/a/b;->c:Lcom/anythink/core/common/h/by;

    .line 57
    .line 58
    iget-object v3, p0, Lcom/anythink/core/basead/a/b;->d:Lcom/anythink/core/common/h/n;

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/anythink/core/common/h/bx;->aR()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/common/a;->a(Ljava/lang/String;Lcom/anythink/core/common/h/by;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_1
    move-exception v0

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    monitor-exit p0

    .line 71
    return-void

    .line 72
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    .line 74
    .line 75
    monitor-exit p0

    .line 76
    return-void

    .line 77
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    throw v0
.end method

.method public final declared-synchronized notifyLose(Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;DLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;",
            "D",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/core/basead/a/b;->e:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object p1, Lcom/anythink/core/basead/a/b;->a:Ljava/lang/String;

    .line 7
    .line 8
    const-string p2, "notifyWin: win or loss has been sent, do anything"

    .line 9
    .line 10
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto/16 :goto_4

    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    :try_start_1
    iput-boolean v0, p0, Lcom/anythink/core/basead/a/b;->e:Z

    .line 20
    .line 21
    iget-object v1, p0, Lcom/anythink/core/basead/a/b;->b:Lcom/anythink/core/common/h/ad;

    .line 22
    .line 23
    if-eqz v1, :cond_8

    .line 24
    .line 25
    iget-object v1, p0, Lcom/anythink/core/basead/a/b;->c:Lcom/anythink/core/common/h/by;

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_1
    const-wide/16 v1, 0x0

    .line 32
    .line 33
    cmpg-double v1, p2, v1

    .line 34
    .line 35
    if-gtz v1, :cond_2

    .line 36
    .line 37
    sget-object p1, Lcom/anythink/core/basead/a/b;->a:Ljava/lang/String;

    .line 38
    .line 39
    new-instance p4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v0, "notifyLose, winnerPrice: "

    .line 42
    .line 43
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p2, " <= 0, do nothing"

    .line 50
    .line 51
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    .line 61
    monitor-exit p0

    .line 62
    return-void

    .line 63
    :cond_2
    :try_start_2
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-static {p4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .line 68
    .line 69
    :try_start_3
    sget-object v1, Lcom/anythink/core/basead/a/b$1;->a:[I

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    aget v1, v1, v2

    .line 76
    .line 77
    const/4 v2, 0x2

    .line 78
    if-eq v1, v0, :cond_4

    .line 79
    .line 80
    if-eq v1, v2, :cond_3

    .line 81
    .line 82
    const-string v0, "103"

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_1
    move-exception p1

    .line 86
    goto :goto_2

    .line 87
    :cond_3
    const-string v0, "102"

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    const-string v0, "100"

    .line 91
    .line 92
    :goto_0
    iget-object v1, p0, Lcom/anythink/core/basead/a/b;->b:Lcom/anythink/core/common/h/ad;

    .line 93
    .line 94
    iget-object v3, p0, Lcom/anythink/core/basead/a/b;->c:Lcom/anythink/core/common/h/by;

    .line 95
    .line 96
    iget-object v4, p0, Lcom/anythink/core/basead/a/b;->d:Lcom/anythink/core/common/h/n;

    .line 97
    .line 98
    new-instance v5, Lcom/anythink/core/common/h/ay;

    .line 99
    .line 100
    invoke-direct {v5, v2, v3, v4}, Lcom/anythink/core/common/h/ay;-><init>(ILcom/anythink/core/common/h/by;Lcom/anythink/core/common/h/n;)V

    .line 101
    .line 102
    .line 103
    const-string v2, ""

    .line 104
    .line 105
    if-eqz p4, :cond_6

    .line 106
    .line 107
    const-string v3, "bidding_name"

    .line 108
    .line 109
    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    instance-of v4, v3, Ljava/lang/String;

    .line 114
    .line 115
    if-eqz v4, :cond_5

    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    :cond_5
    const-string v3, "waterfall_info"

    .line 122
    .line 123
    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p4

    .line 127
    instance-of v3, p4, Ljava/lang/String;

    .line 128
    .line 129
    if-eqz v3, :cond_6

    .line 130
    .line 131
    invoke-static {}, Lcom/anythink/core/common/d;->a()Lcom/anythink/core/common/d;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    iget-object v4, p0, Lcom/anythink/core/basead/a/b;->d:Lcom/anythink/core/common/h/n;

    .line 136
    .line 137
    invoke-virtual {v4}, Lcom/anythink/core/common/h/bx;->aQ()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    check-cast p4, Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v3, v4, p4}, Lcom/anythink/core/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 144
    .line 145
    .line 146
    :cond_6
    :try_start_4
    sget-object p4, Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;->LOSS_TO_AUCTION_FLOOR:Lcom/anythink/core/basead/adx/api/IATAdxHandler$LOSS_REASON;

    .line 147
    .line 148
    if-ne p1, p4, :cond_7

    .line 149
    .line 150
    const-string v2, ""

    .line 151
    .line 152
    iget-object p1, p0, Lcom/anythink/core/basead/a/b;->d:Lcom/anythink/core/common/h/n;

    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/anythink/core/common/h/n;->a()Lcom/anythink/core/common/f;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    if-eqz p1, :cond_7

    .line 159
    .line 160
    invoke-virtual {p1}, Lcom/anythink/core/common/f;->i()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :catchall_2
    move-exception p1

    .line 165
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 166
    .line 167
    .line 168
    :cond_7
    :goto_1
    invoke-virtual {v5, p2, p3, v2, v0}, Lcom/anythink/core/common/h/ay;->a(DLjava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const/4 p1, 0x0

    .line 172
    const/16 p2, 0x1c

    .line 173
    .line 174
    invoke-static {v1, v5, p1, p2}, Lcom/anythink/core/c/d/c;->a(Lcom/anythink/core/common/h/ad;Lcom/anythink/core/common/h/ay;ZI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 175
    .line 176
    .line 177
    monitor-exit p0

    .line 178
    return-void

    .line 179
    :goto_2
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 180
    .line 181
    .line 182
    monitor-exit p0

    .line 183
    return-void

    .line 184
    :cond_8
    :goto_3
    monitor-exit p0

    .line 185
    return-void

    .line 186
    :goto_4
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 187
    throw p1
.end method

.method public final declared-synchronized notifyWin(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/core/basead/a/b;->e:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object p1, Lcom/anythink/core/basead/a/b;->a:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "notifyWin: win or loss has been sent, do anything"

    .line 9
    .line 10
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    :try_start_1
    iput-boolean v0, p0, Lcom/anythink/core/basead/a/b;->e:Z

    .line 20
    .line 21
    iget-object v0, p0, Lcom/anythink/core/basead/a/b;->b:Lcom/anythink/core/common/h/ad;

    .line 22
    .line 23
    if-eqz v0, :cond_7

    .line 24
    .line 25
    iget-object v0, p0, Lcom/anythink/core/basead/a/b;->c:Lcom/anythink/core/common/h/by;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_1
    const-string v0, "notifyWin, extraMap: "

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    :try_start_2
    iget-object v0, p0, Lcom/anythink/core/basead/a/b;->b:Lcom/anythink/core/common/h/ad;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/anythink/core/basead/a/b;->c:Lcom/anythink/core/common/h/by;

    .line 43
    .line 44
    const-string v2, ""

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    const-string v4, "second_price"

    .line 50
    .line 51
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 62
    .line 63
    .line 64
    move-result-wide v4

    .line 65
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 66
    .line 67
    .line 68
    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    goto :goto_0

    .line 70
    :catchall_1
    move-exception v4

    .line 71
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_2
    move-exception p1

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    :goto_0
    const-string v4, "bidding_name"

    .line 78
    .line 79
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    instance-of v5, v4, Ljava/lang/String;

    .line 84
    .line 85
    if-eqz v5, :cond_3

    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    :cond_3
    const-string v4, "waterfall_info"

    .line 92
    .line 93
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    instance-of v4, p1, Ljava/lang/String;

    .line 98
    .line 99
    if-eqz v4, :cond_4

    .line 100
    .line 101
    invoke-static {}, Lcom/anythink/core/common/d;->a()Lcom/anythink/core/common/d;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    iget-object v5, p0, Lcom/anythink/core/basead/a/b;->d:Lcom/anythink/core/common/h/n;

    .line 106
    .line 107
    invoke-virtual {v5}, Lcom/anythink/core/common/h/bx;->aQ()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    check-cast p1, Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v4, v5, p1}, Lcom/anythink/core/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    if-nez v3, :cond_5

    .line 117
    .line 118
    invoke-static {v1}, Lcom/anythink/core/common/v/o;->a(Lcom/anythink/core/common/h/by;)D

    .line 119
    .line 120
    .line 121
    move-result-wide v2

    .line 122
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    const-string v2, "TopOn"

    .line 127
    .line 128
    :cond_5
    iget-object p1, v0, Lcom/anythink/core/common/h/ad;->v:Lcom/anythink/core/common/h/cg;

    .line 129
    .line 130
    if-eqz p1, :cond_6

    .line 131
    .line 132
    invoke-virtual {p1, v3, v2}, Lcom/anythink/core/common/h/cg;->a(Ljava/lang/Double;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_6
    const/4 p1, 0x4

    .line 136
    invoke-static {v0, v1, p1}, Lcom/anythink/core/c/d/c;->a(Lcom/anythink/core/common/h/ad;Lcom/anythink/core/common/h/by;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 137
    .line 138
    .line 139
    monitor-exit p0

    .line 140
    return-void

    .line 141
    :goto_1
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 142
    .line 143
    .line 144
    monitor-exit p0

    .line 145
    return-void

    .line 146
    :cond_7
    :goto_2
    monitor-exit p0

    .line 147
    return-void

    .line 148
    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 149
    throw p1
.end method
