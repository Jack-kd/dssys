.class public final Lcom/anythink/core/common/d/q;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "anythink_notice_handler"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/anythink/core/common/f;)Lcom/anythink/core/common/h/n;
    .locals 11

    .line 17
    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    move-result-object v0

    .line 18
    iget-boolean v0, v0, Lcom/anythink/core/common/d/s;->d:Z

    .line 19
    const-string v1, "anythink_notice_handler"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 20
    const-string p0, "SDK should be inited first!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 21
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    const-string p0, "Please put placementId!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    if-nez p1, :cond_2

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "The \""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" object has not been created yet!"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 24
    :cond_2
    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/d/s;->g()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 25
    invoke-virtual {p1, v0, v1, v1, v2}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;ZZLcom/anythink/core/common/h/ae;)Lcom/anythink/core/common/h/c;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 26
    invoke-virtual {v1}, Lcom/anythink/core/common/h/c;->i()Lcom/anythink/core/common/h/n;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/h/n;->ah()Lcom/anythink/core/common/h/n;

    move-result-object p0

    return-object p0

    .line 27
    :cond_3
    invoke-static {v0}, Lcom/anythink/core/e/o;->a(Landroid/content/Context;)Lcom/anythink/core/e/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/anythink/core/e/o;->a(Ljava/lang/String;)Lcom/anythink/core/e/m;

    move-result-object v3

    .line 28
    invoke-virtual {p1}, Lcom/anythink/core/common/f;->m()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, ""

    :cond_4
    move-object v1, v0

    const/4 v8, 0x0

    .line 30
    invoke-virtual {p1}, Lcom/anythink/core/common/f;->n()Lcom/anythink/core/api/ATAdRequest;

    move-result-object v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v10, p1

    invoke-static/range {v1 .. v10}, Lcom/anythink/core/common/v/ah;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/e/m;IILjava/util/Map;Lcom/anythink/core/common/h/d;ILcom/anythink/core/api/ATAdRequest;Lcom/anythink/core/common/f;)Lcom/anythink/core/common/h/n;

    move-result-object p0

    if-nez v3, :cond_5

    .line 31
    invoke-virtual {v10}, Lcom/anythink/core/common/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/core/common/h/bx;->K(Ljava/lang/String;)V

    :cond_5
    return-object p0
.end method

.method public static a(Lcom/anythink/core/common/f;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/common/f;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1, p0}, Lcom/anythink/core/common/d/q;->a(Ljava/lang/String;Lcom/anythink/core/common/f;)Lcom/anythink/core/common/h/n;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 2
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_4

    .line 4
    const-string v0, "second_price"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/anythink/core/common/h/n;->b(D)V

    .line 7
    :cond_1
    const-string v0, "bidding_name"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 9
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/h/n;->b(Ljava/lang/String;)V

    .line 10
    :cond_2
    const-string v0, "origin_irld"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 12
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/h/n;->c(Ljava/lang/String;)V

    .line 13
    :cond_3
    const-string v0, "waterfall_info"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 14
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 15
    invoke-static {}, Lcom/anythink/core/common/d;->a()Lcom/anythink/core/common/d;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_4
    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/d/s;->g()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/common/u/e;->a(Landroid/content/Context;)Lcom/anythink/core/common/u/e;

    const/16 p1, 0x16

    invoke-static {p1, p0}, Lcom/anythink/core/common/u/e;->a(ILcom/anythink/core/common/h/bx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    return-void
.end method

.method public static b(Lcom/anythink/core/common/f;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/common/f;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1, p0}, Lcom/anythink/core/common/d/q;->a(Ljava/lang/String;Lcom/anythink/core/common/f;)Lcom/anythink/core/common/h/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    if-eqz p2, :cond_4

    .line 8
    .line 9
    const-string v1, "loss_reason"

    .line 10
    .line 11
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/String;

    .line 16
    .line 17
    const-string v2, "winner_price"

    .line 18
    .line 19
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    check-cast v2, Ljava/lang/Double;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 33
    .line 34
    :goto_0
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {v0, v2, v3}, Lcom/anythink/core/common/h/n;->a(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    .line 45
    .line 46
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/anythink/core/common/h/n;->c(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    :catchall_0
    :try_start_2
    const-string v1, "bidding_name"

    .line 54
    .line 55
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    instance-of v2, v1, Ljava/lang/String;

    .line 60
    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    check-cast v1, Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/anythink/core/common/h/n;->a(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    const-string v1, "origin_irld"

    .line 69
    .line 70
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    instance-of v2, v1, Ljava/lang/String;

    .line 75
    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    check-cast v1, Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/anythink/core/common/h/n;->c(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    const-string v1, "waterfall_info"

    .line 84
    .line 85
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    instance-of v1, p2, Ljava/lang/String;

    .line 90
    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    invoke-static {}, Lcom/anythink/core/common/d;->a()Lcom/anythink/core/common/d;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast p2, Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v1, p1, p2}, Lcom/anythink/core/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_4
    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lcom/anythink/core/common/d/s;->g()Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p1}, Lcom/anythink/core/common/u/e;->a(Landroid/content/Context;)Lcom/anythink/core/common/u/e;

    .line 111
    .line 112
    .line 113
    const/16 p1, 0x17

    .line 114
    .line 115
    invoke-static {p1, v0}, Lcom/anythink/core/common/u/e;->a(ILcom/anythink/core/common/h/bx;)V

    .line 116
    .line 117
    .line 118
    :cond_5
    invoke-virtual {p0}, Lcom/anythink/core/common/f;->i()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    .line 120
    .line 121
    :catchall_1
    return-void
.end method
