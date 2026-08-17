.class public abstract Lcom/smartdigimkt/c0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_2

    .line 1
    iget-object p0, p0, Lcom/smartdigimkt/g0/g;->a:Ljava/util/HashMap;

    if-eqz p0, :cond_2

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartdigimkt/g0/f;

    if-eqz p0, :cond_2

    .line 3
    iget p1, p0, Lcom/smartdigimkt/g0/f;->b:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 4
    iget-object p0, p0, Lcom/smartdigimkt/g0/f;->a:Ljava/lang/String;

    return-object p0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/smartdigimkt/g0/f;->c:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    const-string p0, ""

    return-object p0

    :cond_2
    return-object p2
.end method

.method public static a(Ljava/lang/String;Lcom/smartdigimkt/i0/l;JLcom/smartdigimkt/m3/c;ZLjava/util/LinkedHashMap;)Ljava/lang/String;
    .locals 6

    .line 11
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 12
    :cond_0
    iget-object v0, p1, Lcom/smartdigimkt/i0/l;->g:Lcom/smartdigimkt/i0/a;

    if-eqz v0, :cond_1

    .line 13
    invoke-static {p0, p1, p4, p5, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Lcom/smartdigimkt/i0/l;Lcom/smartdigimkt/m3/c;ZLjava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 14
    :cond_1
    iget-object p4, p1, Lcom/smartdigimkt/i0/l;->h:Lcom/smartdigimkt/i0/m;

    const-string p5, "{__PLAY_SEC__}"

    const-wide/16 v2, 0x3e8

    if-eqz p4, :cond_2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p4, Lcom/smartdigimkt/i0/m;->a:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "{__VIDEO_TIME__}"

    invoke-static {p0, v4, v0, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p4, Lcom/smartdigimkt/i0/m;->b:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "{__BEGIN_TIME__}"

    invoke-static {p0, v4, v0, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p4, Lcom/smartdigimkt/i0/m;->c:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "{__END_TIME__}"

    invoke-static {p0, v4, v0, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p4, Lcom/smartdigimkt/i0/m;->d:I

    .line 19
    invoke-static {v0, v4, v1}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    const-string v4, "{__PLAY_FIRST_FRAME__}"

    invoke-static {p0, v4, v0, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p4, Lcom/smartdigimkt/i0/m;->e:I

    .line 22
    invoke-static {v0, v4, v1}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    const-string v4, "{__PLAY_LAST_FRAME__}"

    invoke-static {p0, v4, v0, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p4, Lcom/smartdigimkt/i0/m;->h:I

    .line 25
    invoke-static {v0, v4, v1}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    const-string v4, "{__SCENE__}"

    invoke-static {p0, v4, v0, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p4, Lcom/smartdigimkt/i0/m;->i:I

    .line 28
    invoke-static {v0, v4, v1}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string v4, "{__TYPE__}"

    invoke-static {p0, v4, v0, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p4, Lcom/smartdigimkt/i0/m;->j:I

    .line 31
    invoke-static {v0, v4, v1}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    const-string v4, "{__BEHAVIOR__}"

    invoke-static {p0, v4, v0, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p4, Lcom/smartdigimkt/i0/m;->k:I

    .line 34
    invoke-static {v0, v4, v1}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string v4, "{__STATUS__}"

    invoke-static {p0, v4, v0, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p4, Lcom/smartdigimkt/i0/m;->f:J

    div-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p5, v0, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p4, Lcom/smartdigimkt/i0/m;->f:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "{__PLAY_MSEC__}"

    invoke-static {p0, v0, p4, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 38
    :cond_2
    iget-object p4, p1, Lcom/smartdigimkt/i0/l;->i:Lcom/smartdigimkt/i0/b;

    if-eqz p4, :cond_4

    .line 39
    iget-object v0, p4, Lcom/smartdigimkt/i0/b;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    move-object v0, v1

    .line 40
    :cond_3
    const-string v4, "{__CLICK_ID__}"

    invoke-static {p0, v4, v0, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 41
    iget p4, p4, Lcom/smartdigimkt/i0/b;->b:I

    if-lez p4, :cond_4

    .line 42
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    const-string v0, "__DP_APP_INSTALL__"

    invoke-static {p0, v0, p4, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 43
    :cond_4
    iget-object p4, p1, Lcom/smartdigimkt/i0/l;->o:Ljava/util/Map;

    if-eqz p4, :cond_6

    .line 44
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 45
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 46
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p6, :cond_5

    .line 47
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 48
    invoke-interface {p6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 49
    :cond_5
    :goto_1
    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 50
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 52
    :cond_6
    div-long v2, p2, v2

    .line 53
    const-string p4, "{__REQ_WIDTH__}"

    const-string v0, "__REQ_WIDTH__"

    invoke-static {p0, p4, v0, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 54
    const-string p4, "{__REQ_HEIGHT__}"

    const-string v0, "__REQ_HEIGHT__"

    invoke-static {p0, p4, v0, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 55
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p1, Lcom/smartdigimkt/i0/l;->e:I

    .line 56
    invoke-static {p4, v0, v1}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 57
    const-string v0, "__WIDTH__"

    invoke-static {p0, v0, p4, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 58
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p1, Lcom/smartdigimkt/i0/l;->f:I

    .line 59
    invoke-static {p4, v0, v1}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 60
    const-string v0, "__HEIGHT__"

    invoke-static {p0, v0, p4, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 61
    const-string p4, "0"

    invoke-static {p0, p5, p4, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 62
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget p5, p1, Lcom/smartdigimkt/i0/l;->l:I

    .line 63
    invoke-static {p4, p5, v1}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 64
    const-string p5, "__S_SCREEN_X__"

    invoke-static {p0, p5, p4, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 65
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget p5, p1, Lcom/smartdigimkt/i0/l;->m:I

    .line 66
    invoke-static {p4, p5, v1}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 67
    const-string p5, "__S_SCREEN_Y__"

    invoke-static {p0, p5, p4, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 68
    invoke-static {}, Lcom/smartdigimkt/sdk/core/SDKContext;->getInstance()Lcom/smartdigimkt/sdk/core/SDKContext;

    move-result-object p4

    invoke-virtual {p4}, Lcom/smartdigimkt/sdk/core/SDKContext;->d()Landroid/content/Context;

    move-result-object p4

    if-eqz p4, :cond_7

    .line 69
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p1, Lcom/smartdigimkt/i0/l;->e:I

    int-to-float v0, v0

    .line 70
    invoke-static {p4, v0, p5, v1}, Lcom/smartdigimkt/c0/f;->a(Landroid/content/Context;FLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 71
    const-string v0, "__WIDTH_DT__"

    invoke-static {p0, v0, p5, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 72
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p1, Lcom/smartdigimkt/i0/l;->f:I

    int-to-float v0, v0

    .line 73
    invoke-static {p4, v0, p5, v1}, Lcom/smartdigimkt/c0/f;->a(Landroid/content/Context;FLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 74
    const-string v0, "__HEIGHT_DT__"

    invoke-static {p0, v0, p5, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 75
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p1, Lcom/smartdigimkt/i0/l;->l:I

    int-to-float v0, v0

    .line 76
    invoke-static {p4, v0, p5, v1}, Lcom/smartdigimkt/c0/f;->a(Landroid/content/Context;FLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 77
    const-string v0, "__S_SCREEN_X_DT__"

    invoke-static {p0, v0, p5, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 78
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p1, Lcom/smartdigimkt/i0/l;->m:I

    int-to-float v0, v0

    .line 79
    invoke-static {p4, v0, p5, v1}, Lcom/smartdigimkt/c0/f;->a(Landroid/content/Context;FLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 80
    const-string p5, "__S_SCREEN_Y_DT__"

    invoke-static {p0, p5, p4, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 81
    :cond_7
    iget-object p4, p1, Lcom/smartdigimkt/i0/l;->g:Lcom/smartdigimkt/i0/a;

    if-nez p4, :cond_8

    .line 82
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "__TS__"

    invoke-static {p0, p5, p4, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 83
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "__TS_MSEC__"

    invoke-static {p0, p5, p4, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 84
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "__END_TS__"

    invoke-static {p0, p5, p4, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 85
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "__END_TS_MSEC__"

    invoke-static {p0, p3, p2, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 86
    :cond_8
    iget-wide p1, p1, Lcom/smartdigimkt/i0/l;->n:J

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-nez p3, :cond_9

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 88
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, p1

    const-wide/16 p1, 0x1f4

    cmp-long p1, p3, p1

    if-gez p1, :cond_a

    .line 89
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 p2, 0x1f4

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, p2

    int-to-long p3, p1

    .line 90
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "__SHOW_T__"

    invoke-static {p0, p2, p1, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 91
    const-string p1, "__M_SHOW_RATIO__"

    const-string p2, "100"

    invoke-static {p0, p1, p2, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 92
    invoke-static {}, Lcom/smartdigimkt/sdk/core/SDKContext;->getInstance()Lcom/smartdigimkt/sdk/core/SDKContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/core/SDKContext;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/smartdigimkt/c5/h;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "__DENSITY__"

    invoke-static {p0, p2, p1, p6}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    .line 93
    const-string p1, "\\{"

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\}"

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/smartdigimkt/i0/l;Lcom/smartdigimkt/m3/c;ZLjava/util/LinkedHashMap;)Ljava/lang/String;
    .locals 40

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    .line 94
    const-string v5, "utf-8"

    const-string v6, "{}"

    iget-object v7, v2, Lcom/smartdigimkt/i0/l;->g:Lcom/smartdigimkt/i0/a;

    .line 95
    iget v0, v2, Lcom/smartdigimkt/i0/l;->e:I

    .line 96
    iget v8, v2, Lcom/smartdigimkt/i0/l;->f:I

    .line 97
    invoke-static {}, Lcom/smartdigimkt/sdk/core/SDKContext;->getInstance()Lcom/smartdigimkt/sdk/core/SDKContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartdigimkt/sdk/core/SDKContext;->d()Landroid/content/Context;

    move-result-object v9

    .line 98
    instance-of v10, v3, Lcom/smartdigimkt/m3/b;

    const-string v11, ""

    if-eqz v10, :cond_0

    .line 99
    move-object v10, v3

    check-cast v10, Lcom/smartdigimkt/m3/b;

    .line 100
    iget-object v10, v10, Lcom/smartdigimkt/m3/k;->o0:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v10, v11

    .line 101
    :goto_0
    sget-object v12, Lcom/smartdigimkt/g0/e;->g:Ljava/lang/String;

    .line 102
    sget-object v12, Lcom/smartdigimkt/g0/d;->a:Lcom/smartdigimkt/g0/e;

    .line 103
    iget-object v12, v12, Lcom/smartdigimkt/g0/e;->e:Ljava/util/HashMap;

    if-eqz v12, :cond_1

    .line 104
    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartdigimkt/g0/g;

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 105
    :goto_1
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 106
    :try_start_0
    const-string v13, "down_x"

    iget v14, v7, Lcom/smartdigimkt/i0/a;->e:I

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 107
    const-string v13, "down_y"

    iget v14, v7, Lcom/smartdigimkt/i0/a;->f:I

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 108
    const-string v13, "up_x"

    iget v14, v7, Lcom/smartdigimkt/i0/a;->g:I

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 109
    const-string v13, "up_y"

    iget v14, v7, Lcom/smartdigimkt/i0/a;->h:I

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :catch_0
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 111
    :try_start_1
    const-string v14, "down_x"

    iget v15, v7, Lcom/smartdigimkt/i0/a;->e:I

    int-to-float v15, v15

    int-to-float v0, v0

    div-float/2addr v15, v0

    const/high16 v16, 0x447a0000    # 1000.0f

    mul-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 112
    const-string v14, "down_y"

    iget v15, v7, Lcom/smartdigimkt/i0/a;->f:I

    int-to-float v15, v15

    int-to-float v8, v8

    div-float/2addr v15, v8

    mul-float v15, v15, v16

    float-to-int v15, v15

    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    const-string v14, "up_x"

    iget v15, v7, Lcom/smartdigimkt/i0/a;->g:I

    int-to-float v15, v15

    div-float/2addr v15, v0

    mul-float v15, v15, v16

    float-to-int v0, v15

    invoke-virtual {v13, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 114
    const-string v0, "up_y"

    iget v14, v7, Lcom/smartdigimkt/i0/a;->h:I

    int-to-float v14, v14

    div-float/2addr v14, v8

    mul-float v14, v14, v16

    float-to-int v8, v14

    invoke-virtual {v13, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :catchall_0
    :try_start_2
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v8, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v8, v6

    .line 117
    :goto_2
    :try_start_3
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v6

    .line 119
    :goto_3
    invoke-static {v1}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;)Z

    .line 120
    invoke-static {v1}, Lcom/smartdigimkt/c0/h;->b(Ljava/lang/String;)Z

    .line 121
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, v7, Lcom/smartdigimkt/i0/a;->s:I

    .line 122
    invoke-static {v12, v13, v11}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 123
    const-string v13, "__SLD__"

    invoke-static {v1, v13, v12, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v13

    .line 124
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget v15, v7, Lcom/smartdigimkt/i0/a;->s:I

    .line 125
    invoke-static {v14, v15, v11}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 126
    const-string v15, "__C_SLD__"

    invoke-static {v13, v15, v14, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v13

    .line 127
    iget v15, v7, Lcom/smartdigimkt/i0/a;->s:I

    const-string v16, "2"

    move-object/from16 v17, v12

    const-string v18, "1"

    const/4 v12, 0x2

    if-nez v15, :cond_2

    move-object/from16 v12, v18

    goto :goto_4

    :cond_2
    if-ne v15, v12, :cond_3

    move-object/from16 v12, v16

    goto :goto_4

    :cond_3
    const/4 v12, 0x1

    if-ne v15, v12, :cond_4

    .line 128
    const-string v12, "3"

    goto :goto_4

    :cond_4
    const/4 v12, 0x5

    if-ne v15, v12, :cond_5

    .line 129
    const-string v12, "5"

    goto :goto_4

    .line 130
    :cond_5
    const-string v12, "0"

    .line 131
    :goto_4
    const-string v15, "__SLD_OPPO__"

    invoke-static {v13, v15, v12, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v12

    .line 132
    iget v13, v7, Lcom/smartdigimkt/i0/a;->t:I

    iget v15, v7, Lcom/smartdigimkt/i0/a;->s:I

    if-eqz v15, :cond_6

    move-object v13, v11

    goto :goto_7

    :cond_6
    const/4 v15, 0x1

    if-eq v13, v15, :cond_b

    const/16 v15, 0x34

    if-eq v13, v15, :cond_b

    const/16 v15, 0x3b

    if-eq v13, v15, :cond_b

    const/16 v15, 0x35

    if-eq v13, v15, :cond_b

    const/4 v15, 0x6

    if-eq v13, v15, :cond_b

    const/16 v15, 0x18

    if-eq v13, v15, :cond_b

    const/16 v15, 0x19

    if-eq v13, v15, :cond_b

    const/16 v15, 0x24

    if-eq v13, v15, :cond_b

    const/16 v15, 0x28

    if-eq v13, v15, :cond_b

    const/16 v15, 0x29

    if-ne v13, v15, :cond_7

    goto :goto_6

    :cond_7
    const/4 v15, 0x2

    if-eq v13, v15, :cond_9

    const/4 v15, 0x3

    if-eq v13, v15, :cond_9

    const/4 v15, 0x4

    if-eq v13, v15, :cond_9

    const/16 v15, 0xb

    if-eq v13, v15, :cond_9

    const/16 v15, 0xd

    if-eq v13, v15, :cond_9

    const/16 v15, 0xe

    if-eq v13, v15, :cond_9

    const/16 v15, 0x15

    if-eq v13, v15, :cond_9

    const/16 v15, 0x17

    if-ne v13, v15, :cond_8

    goto :goto_5

    .line 133
    :cond_8
    const-string v13, "OTHER"

    goto :goto_7

    :cond_9
    :goto_5
    if-eqz v3, :cond_a

    .line 134
    iget-object v13, v3, Lcom/smartdigimkt/m3/c;->i:Ljava/lang/String;

    .line 135
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 136
    const-string v13, "VIDEO"

    goto :goto_7

    .line 137
    :cond_a
    const-string v13, "PICTURE"

    goto :goto_7

    .line 138
    :cond_b
    :goto_6
    const-string v13, "BUTTON"

    .line 139
    :goto_7
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_c

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_c

    .line 140
    const-string v15, "__C_AREA__"

    invoke-static {v12, v15, v13, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v12

    .line 141
    :cond_c
    iget-boolean v13, v7, Lcom/smartdigimkt/i0/a;->i:Z

    if-eqz v13, :cond_d

    const/4 v13, 0x1

    goto :goto_8

    :cond_d
    const/4 v13, 0x2

    .line 142
    :goto_8
    iget v15, v7, Lcom/smartdigimkt/i0/a;->a:I

    const/16 v21, 0x0

    if-gtz v15, :cond_f

    iget v15, v7, Lcom/smartdigimkt/i0/a;->b:I

    if-gtz v15, :cond_f

    iget v15, v7, Lcom/smartdigimkt/i0/a;->c:I

    if-gtz v15, :cond_f

    iget v15, v7, Lcom/smartdigimkt/i0/a;->d:I

    if-lez v15, :cond_e

    goto :goto_a

    :cond_e
    move/from16 v15, v21

    :goto_9
    move/from16 v22, v13

    goto :goto_b

    :cond_f
    :goto_a
    const/4 v15, 0x1

    goto :goto_9

    .line 143
    :goto_b
    iget v13, v7, Lcom/smartdigimkt/i0/a;->s:I

    move/from16 v23, v15

    const-string v15, "__RE_DOWN_Y__"

    const-string v1, "__RE_DOWN_X__"

    move-object/from16 v24, v14

    const-string v14, "__UP_Y__"

    const-string v2, "__UP_X__"

    const-string v3, "__DOWN_Y__"

    move-object/from16 v25, v9

    const-string v9, "__DOWN_X__"

    move-object/from16 v26, v0

    const-string v0, "-999"

    move-object/from16 v27, v8

    if-eqz v13, :cond_10

    const/4 v8, 0x1

    if-ne v13, v8, :cond_11

    :cond_10
    if-nez v23, :cond_12

    .line 144
    :cond_11
    invoke-static {v10, v9, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 145
    invoke-static {v10, v3, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v28, v11

    .line 146
    invoke-static {v10, v2, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v29, v7

    .line 147
    invoke-static {v10, v14, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 148
    invoke-static {v12, v9, v8, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v9

    .line 149
    invoke-static {v9, v3, v13, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-static {v3, v2, v11, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-static {v2, v14, v7, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-static {v10, v1, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {v10, v15, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v15, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 154
    const-string v2, "__RE_UP_X__"

    invoke-static {v10, v2, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "__RE_UP_X__"

    invoke-static {v1, v3, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 155
    const-string v2, "__RE_UP_Y__"

    invoke-static {v10, v2, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "__RE_UP_Y__"

    invoke-static {v1, v3, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 156
    :try_start_4
    invoke-static {v6, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    const-string v3, "{ABSOLUTE_COORD}"

    invoke-static {v1, v3, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 158
    const-string v3, "{RELATIVE_COORD}"

    invoke-static {v1, v3, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 159
    :catchall_3
    const-string v2, "__DOWN_X_DT__"

    invoke-static {v10, v2, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "__DOWN_X_DT__"

    invoke-static {v1, v3, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 160
    const-string v2, "__DOWN_Y_DT__"

    invoke-static {v10, v2, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "__DOWN_Y_DT__"

    invoke-static {v1, v3, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 161
    const-string v2, "__UP_X_DT__"

    invoke-static {v10, v2, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "__UP_X_DT__"

    invoke-static {v1, v3, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 162
    const-string v2, "__UP_Y_DT__"

    invoke-static {v10, v2, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "__UP_Y_DT__"

    invoke-static {v1, v3, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 163
    const-string v2, "__RE_DOWN_X_DT__"

    invoke-static {v10, v2, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "__RE_DOWN_X_DT__"

    invoke-static {v1, v3, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 164
    const-string v2, "__RE_DOWN_Y_DT__"

    invoke-static {v10, v2, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "__RE_DOWN_Y_DT__"

    invoke-static {v1, v3, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 165
    const-string v2, "__RE_UP_X_DT__"

    invoke-static {v10, v2, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "__RE_UP_X_DT__"

    invoke-static {v1, v3, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 166
    const-string v2, "__RE_UP_Y_DT__"

    invoke-static {v10, v2, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "__RE_UP_Y_DT__"

    invoke-static {v1, v3, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v8

    move-object/from16 v3, v25

    move-object/from16 v8, v28

    move-object/from16 v6, v29

    move-object/from16 v28, v0

    goto/16 :goto_c

    :cond_12
    move-object/from16 v29, v7

    move-object/from16 v28, v11

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v29

    iget v7, v6, Lcom/smartdigimkt/i0/a;->a:I

    move-object/from16 v8, v28

    .line 168
    invoke-static {v5, v7, v8}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 169
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v6, Lcom/smartdigimkt/i0/a;->b:I

    .line 170
    invoke-static {v7, v11, v8}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v6, Lcom/smartdigimkt/i0/a;->c:I

    .line 172
    invoke-static {v7, v11, v8}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 173
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v0

    iget v0, v6, Lcom/smartdigimkt/i0/a;->d:I

    .line 174
    invoke-static {v7, v0, v8}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 175
    invoke-static {v12, v9, v5, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0, v3, v13, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v0, v2, v11, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0, v14, v7, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v0

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v6, Lcom/smartdigimkt/i0/a;->e:I

    .line 180
    invoke-static {v2, v3, v8}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-static {v0, v1, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v6, Lcom/smartdigimkt/i0/a;->f:I

    .line 183
    invoke-static {v1, v2, v8}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-static {v0, v15, v1, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v6, Lcom/smartdigimkt/i0/a;->g:I

    .line 186
    invoke-static {v1, v2, v8}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    const-string v2, "__RE_UP_X__"

    invoke-static {v0, v2, v1, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v0

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v6, Lcom/smartdigimkt/i0/a;->h:I

    .line 189
    invoke-static {v1, v2, v8}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    const-string v2, "__RE_UP_Y__"

    invoke-static {v0, v2, v1, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v0

    .line 191
    const-string v1, "{ABSOLUTE_COORD}"

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v0

    .line 192
    const-string v1, "{RELATIVE_COORD}"

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    if-eqz v25, :cond_13

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v6, Lcom/smartdigimkt/i0/a;->a:I

    int-to-float v2, v2

    move-object/from16 v3, v25

    .line 194
    invoke-static {v3, v2, v0, v8}, Lcom/smartdigimkt/c0/f;->a(Landroid/content/Context;FLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    const-string v2, "__DOWN_X_DT__"

    invoke-static {v1, v2, v0, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v6, Lcom/smartdigimkt/i0/a;->b:I

    int-to-float v2, v2

    .line 197
    invoke-static {v3, v2, v1, v8}, Lcom/smartdigimkt/c0/f;->a(Landroid/content/Context;FLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    const-string v2, "__DOWN_Y_DT__"

    invoke-static {v0, v2, v1, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v6, Lcom/smartdigimkt/i0/a;->c:I

    int-to-float v2, v2

    .line 200
    invoke-static {v3, v2, v1, v8}, Lcom/smartdigimkt/c0/f;->a(Landroid/content/Context;FLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    const-string v2, "__UP_X_DT__"

    invoke-static {v0, v2, v1, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v6, Lcom/smartdigimkt/i0/a;->d:I

    int-to-float v2, v2

    .line 203
    invoke-static {v3, v2, v1, v8}, Lcom/smartdigimkt/c0/f;->a(Landroid/content/Context;FLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    const-string v2, "__UP_Y_DT__"

    invoke-static {v0, v2, v1, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v6, Lcom/smartdigimkt/i0/a;->e:I

    int-to-float v2, v2

    .line 206
    invoke-static {v3, v2, v1, v8}, Lcom/smartdigimkt/c0/f;->a(Landroid/content/Context;FLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    const-string v2, "__RE_DOWN_X_DT__"

    invoke-static {v0, v2, v1, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v6, Lcom/smartdigimkt/i0/a;->f:I

    int-to-float v2, v2

    .line 209
    invoke-static {v3, v2, v1, v8}, Lcom/smartdigimkt/c0/f;->a(Landroid/content/Context;FLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    const-string v2, "__RE_DOWN_Y_DT__"

    invoke-static {v0, v2, v1, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v6, Lcom/smartdigimkt/i0/a;->g:I

    int-to-float v2, v2

    .line 212
    invoke-static {v3, v2, v1, v8}, Lcom/smartdigimkt/c0/f;->a(Landroid/content/Context;FLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    const-string v2, "__RE_UP_X_DT__"

    invoke-static {v0, v2, v1, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v6, Lcom/smartdigimkt/i0/a;->h:I

    int-to-float v2, v2

    .line 215
    invoke-static {v3, v2, v1, v8}, Lcom/smartdigimkt/c0/f;->a(Landroid/content/Context;FLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    const-string v2, "__RE_UP_Y_DT__"

    invoke-static {v0, v2, v1, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_13
    move-object/from16 v3, v25

    .line 217
    :goto_c
    iget v0, v6, Lcom/smartdigimkt/i0/a;->s:I

    const-string v2, "__RE_C_UP_Y_DT__"

    const-string v9, "__RE_C_UP_X_DT__"

    const-string v12, "__RE_C_DOWN_Y_DT__"

    const-string v14, "__RE_C_DOWN_X_DT__"

    const-string v15, "__C_UP_Y_DT__"

    move-object/from16 v25, v7

    const-string v7, "__C_UP_X_DT__"

    move-object/from16 v26, v11

    const-string v11, "__C_DOWN_Y_DT__"

    move-object/from16 v27, v13

    const-string v13, "__C_DOWN_X_DT__"

    move-object/from16 v29, v5

    const-string v5, "__RE_C_UP_Y__"

    move-object/from16 v30, v3

    const-string v3, "__RE_C_UP_X__"

    move-object/from16 v31, v8

    const-string v8, "__RE_C_DOWN_Y__"

    move-object/from16 v32, v6

    const-string v6, "__RE_C_DOWN_X__"

    move-object/from16 v33, v2

    const-string v2, "__C_UP_Y__"

    move-object/from16 v34, v9

    const-string v9, "__C_UP_X__"

    move-object/from16 v35, v12

    const-string v12, "__C_DOWN_Y__"

    move-object/from16 v36, v14

    const-string v14, "__C_DOWN_X__"

    move-object/from16 v37, v15

    const/4 v15, 0x2

    if-eq v0, v15, :cond_17

    const/4 v15, 0x5

    if-ne v0, v15, :cond_14

    move-object v0, v11

    move-object v11, v10

    :goto_d
    move-object v15, v7

    move-object v7, v13

    move-object/from16 v10, v37

    goto/16 :goto_e

    :cond_14
    if-nez v23, :cond_15

    move-object/from16 v0, v28

    .line 218
    invoke-static {v10, v14, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v23, v7

    .line 219
    invoke-static {v10, v12, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v28, v11

    .line 220
    invoke-static {v10, v9, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v38, v13

    .line 221
    invoke-static {v10, v2, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 222
    invoke-static {v1, v14, v15, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {v1, v12, v7, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-static {v1, v9, v11, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {v1, v2, v13, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-static {v10, v6, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v6, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-static {v10, v8, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v8, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-static {v10, v3, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {v10, v5, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v5, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v38

    .line 230
    invoke-static {v10, v2, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v28

    .line 231
    invoke-static {v10, v2, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v23

    .line 232
    invoke-static {v10, v2, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v37

    .line 233
    invoke-static {v10, v2, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v36

    .line 234
    invoke-static {v10, v2, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v35

    .line 235
    invoke-static {v10, v2, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v34

    .line 236
    invoke-static {v10, v2, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v33

    .line 237
    invoke-static {v10, v2, v0}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v28, v0

    move-object v0, v15

    move-object v15, v11

    move-object v11, v10

    goto/16 :goto_f

    :cond_15
    move-object/from16 v23, v10

    move-object/from16 v15, v36

    move-object/from16 v0, v37

    move-object v10, v7

    move-object v7, v11

    move-object v11, v13

    .line 238
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, v32

    iget v0, v15, Lcom/smartdigimkt/i0/a;->a:I

    move-object/from16 v32, v10

    move-object/from16 v10, v31

    .line 239
    invoke-static {v13, v0, v10}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v7

    iget v7, v15, Lcom/smartdigimkt/i0/a;->b:I

    .line 241
    invoke-static {v13, v7, v10}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 242
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v38, v11

    iget v11, v15, Lcom/smartdigimkt/i0/a;->c:I

    .line 243
    invoke-static {v13, v11, v10}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 244
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v39, v5

    iget v5, v15, Lcom/smartdigimkt/i0/a;->d:I

    .line 245
    invoke-static {v13, v5, v10}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 246
    invoke-static {v1, v14, v0, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-static {v1, v12, v7, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-static {v1, v9, v11, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-static {v1, v2, v13, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v15, Lcom/smartdigimkt/i0/a;->e:I

    .line 251
    invoke-static {v2, v5, v10}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-static {v1, v6, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v15, Lcom/smartdigimkt/i0/a;->f:I

    .line 254
    invoke-static {v2, v5, v10}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 255
    invoke-static {v1, v8, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v15, Lcom/smartdigimkt/i0/a;->g:I

    .line 257
    invoke-static {v2, v5, v10}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-static {v1, v3, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v15, Lcom/smartdigimkt/i0/a;->h:I

    .line 260
    invoke-static {v2, v3, v10}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, v39

    .line 261
    invoke-static {v1, v5, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    if-eqz v30, :cond_16

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v15, Lcom/smartdigimkt/i0/a;->a:I

    int-to-float v3, v3

    move-object/from16 v5, v30

    .line 263
    invoke-static {v5, v3, v2, v10}, Lcom/smartdigimkt/c0/f;->a(Landroid/content/Context;FLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v38

    .line 264
    invoke-static {v1, v3, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v15, Lcom/smartdigimkt/i0/a;->b:I

    int-to-float v3, v3

    .line 266
    invoke-static {v5, v3, v2, v10}, Lcom/smartdigimkt/c0/f;->a(Landroid/content/Context;FLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v31

    .line 267
    invoke-static {v1, v3, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v15, Lcom/smartdigimkt/i0/a;->c:I

    int-to-float v3, v3

    .line 269
    invoke-static {v5, v3, v2, v10}, Lcom/smartdigimkt/c0/f;->a(Landroid/content/Context;FLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v32

    .line 270
    invoke-static {v1, v3, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v15, Lcom/smartdigimkt/i0/a;->d:I

    int-to-float v3, v3

    .line 272
    invoke-static {v5, v3, v2, v10}, Lcom/smartdigimkt/c0/f;->a(Landroid/content/Context;FLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v37

    .line 273
    invoke-static {v1, v3, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v15, Lcom/smartdigimkt/i0/a;->e:I

    int-to-float v3, v3

    .line 275
    invoke-static {v5, v3, v2, v10}, Lcom/smartdigimkt/c0/f;->a(Landroid/content/Context;FLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v36

    .line 276
    invoke-static {v1, v3, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v15, Lcom/smartdigimkt/i0/a;->f:I

    int-to-float v3, v3

    .line 278
    invoke-static {v5, v3, v2, v10}, Lcom/smartdigimkt/c0/f;->a(Landroid/content/Context;FLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v35

    .line 279
    invoke-static {v1, v3, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v15, Lcom/smartdigimkt/i0/a;->g:I

    int-to-float v3, v3

    .line 281
    invoke-static {v5, v3, v2, v10}, Lcom/smartdigimkt/c0/f;->a(Landroid/content/Context;FLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v34

    .line 282
    invoke-static {v1, v3, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v15, Lcom/smartdigimkt/i0/a;->h:I

    int-to-float v3, v3

    .line 284
    invoke-static {v5, v3, v2, v10}, Lcom/smartdigimkt/c0/f;->a(Landroid/content/Context;FLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v33

    .line 285
    invoke-static {v1, v3, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    :cond_16
    move-object/from16 v31, v10

    move-object/from16 v32, v15

    move-object v15, v11

    move-object/from16 v11, v23

    goto/16 :goto_f

    :cond_17
    move-object/from16 v23, v10

    move-object v0, v11

    move-object/from16 v11, v23

    goto/16 :goto_d

    .line 286
    :goto_e
    invoke-static {v11, v14, v14}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v37, v10

    .line 287
    invoke-static {v11, v12, v12}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v23, v15

    .line 288
    invoke-static {v11, v9, v9}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v30, v0

    .line 289
    invoke-static {v11, v2, v2}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {v1, v14, v13, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-static {v1, v12, v10, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-static {v1, v9, v15, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-static {v1, v2, v0, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-static {v11, v6, v6}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v6, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-static {v11, v8, v8}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v8, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-static {v11, v3, v3}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-static {v11, v5, v5}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v5, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-static {v11, v7, v7}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v7, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v30

    .line 299
    invoke-static {v11, v2, v2}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v23

    .line 300
    invoke-static {v11, v2, v2}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v37

    .line 301
    invoke-static {v11, v2, v2}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v36

    .line 302
    invoke-static {v11, v2, v2}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v35

    .line 303
    invoke-static {v11, v2, v2}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v34

    .line 304
    invoke-static {v11, v2, v2}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v33

    .line 305
    invoke-static {v11, v2, v2}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v13

    move-object v13, v0

    move-object v0, v7

    move-object v7, v10

    .line 306
    :goto_f
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{__DPLINK_TYPE__}"

    invoke-static {v1, v3, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/smartdigimkt/c5/o;->g:Ljava/lang/String;

    .line 308
    const-string v5, "_ptype"

    invoke-static {v2, v3, v5}, Lcom/smartdigimkt/f/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v6, v32

    .line 309
    iget-boolean v3, v6, Lcom/smartdigimkt/i0/a;->i:Z

    if-eqz v3, :cond_18

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "&"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=\\{"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\\}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v8, v31

    invoke-virtual {v1, v3, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_18
    move-object/from16 v8, v31

    .line 311
    :goto_10
    iget v3, v6, Lcom/smartdigimkt/i0/a;->j:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_19

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "&"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=\\{"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\}"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 313
    :cond_19
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\\{"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\}"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v6, Lcom/smartdigimkt/i0/a;->j:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 314
    :goto_11
    iget-boolean v2, v6, Lcom/smartdigimkt/i0/a;->i:Z

    if-eqz v2, :cond_1a

    move-object/from16 v2, v18

    goto :goto_12

    :cond_1a
    const-string v2, "0"

    :goto_12
    const-string v3, "\\{opdptype\\}"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 315
    iget-wide v2, v6, Lcom/smartdigimkt/i0/a;->k:J

    .line 316
    iget-wide v9, v6, Lcom/smartdigimkt/i0/a;->l:J

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const-wide/16 v30, 0x0

    cmp-long v5, v2, v30

    if-gtz v5, :cond_1b

    move-wide/from16 v2, v22

    :cond_1b
    cmp-long v5, v9, v30

    if-gtz v5, :cond_1c

    move-wide/from16 v9, v22

    .line 318
    :cond_1c
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 319
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 320
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v22, 0x3e8

    move-object/from16 v33, v12

    move-object/from16 v32, v13

    div-long v12, v2, v22

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "__TS__"

    invoke-static {v1, v13, v12, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 321
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "__TS_MSEC__"

    invoke-static {v1, v3, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 322
    iget v2, v6, Lcom/smartdigimkt/i0/a;->s:I

    const-string v3, "__END_TS_MSEC__"

    const-string v12, "__END_TS__"

    const/4 v13, 0x2

    if-eq v2, v13, :cond_1e

    const/4 v13, 0x5

    if-ne v2, v13, :cond_1d

    goto :goto_13

    .line 323
    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v13, 0x3e8

    div-long v13, v9, v13

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v12, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    .line 325
    :cond_1e
    :goto_13
    invoke-static {v11, v12, v12}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v12, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 326
    invoke-static {v11, v3, v3}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 327
    :goto_14
    iget v2, v6, Lcom/smartdigimkt/i0/a;->s:I

    const-string v3, "__M_Z_ACC__"

    const-string v9, "__M_Y_ACC__"

    const-string v10, "__M_X_ACC__"

    const/4 v13, 0x2

    if-ne v2, v13, :cond_22

    .line 328
    iget-object v2, v6, Lcom/smartdigimkt/i0/a;->m:[F

    if-eqz v2, :cond_21

    .line 329
    array-length v12, v2

    const/4 v13, 0x3

    if-ne v12, v13, :cond_21

    aget v12, v2, v21

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-gtz v12, :cond_20

    const/16 v19, 0x1

    aget v12, v2, v19

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-gtz v12, :cond_20

    const/16 v20, 0x2

    aget v12, v2, v20

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1f

    goto :goto_15

    :cond_1f
    move-object/from16 v2, v28

    const/16 v19, 0x1

    goto :goto_16

    .line 330
    :cond_20
    :goto_15
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    aget v13, v2, v21

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    .line 331
    invoke-static {v12, v13, v8}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 332
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x1

    aget v14, v2, v19

    const/high16 v22, 0x42c80000    # 100.0f

    mul-float v14, v14, v22

    float-to-int v14, v14

    .line 333
    invoke-static {v13, v14, v8}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 334
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x2

    aget v2, v2, v20

    mul-float v2, v2, v22

    float-to-int v2, v2

    .line 335
    invoke-static {v14, v2, v8}, Lcom/smartdigimkt/c0/g;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-static {v1, v10, v12, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-static {v1, v9, v13, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 338
    invoke-static {v1, v3, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    move-object v14, v2

    move-object/from16 v2, v28

    goto :goto_17

    :cond_21
    const/16 v19, 0x1

    move-object/from16 v2, v28

    .line 339
    :goto_16
    invoke-static {v11, v10, v2}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 340
    invoke-static {v11, v9, v2}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 341
    invoke-static {v11, v3, v2}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 342
    invoke-static {v1, v10, v12, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-static {v1, v9, v13, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-static {v1, v3, v14, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :cond_22
    move-object/from16 v2, v28

    const/16 v19, 0x1

    .line 345
    invoke-static {v11, v10, v10}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 346
    invoke-static {v11, v9, v9}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 347
    invoke-static {v11, v3, v3}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 348
    invoke-static {v1, v10, v12, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-static {v1, v9, v13, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-static {v1, v3, v14, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 351
    :goto_17
    iget v3, v6, Lcom/smartdigimkt/i0/a;->s:I

    const-string v9, "__TURN_T__"

    const-string v10, "__TURN_Z__"

    move-object/from16 v28, v8

    const-string v8, "__TURN_Y__"

    move-object/from16 v22, v14

    const-string v14, "__TURN_X__"

    move-object/from16 v23, v13

    const-string v13, "__TURN_T_5__"

    move-object/from16 v34, v12

    const/4 v12, 0x5

    if-ne v3, v12, :cond_25

    move-object v12, v2

    .line 352
    iget-wide v2, v6, Lcom/smartdigimkt/i0/a;->q:J

    cmp-long v2, v2, v30

    if-lez v2, :cond_24

    .line 353
    iget v2, v6, Lcom/smartdigimkt/i0/a;->n:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v14, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 354
    iget v2, v6, Lcom/smartdigimkt/i0/a;->o:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v8, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 355
    iget v2, v6, Lcom/smartdigimkt/i0/a;->p:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v10, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 356
    iget-wide v2, v6, Lcom/smartdigimkt/i0/a;->q:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v9, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 357
    iget-wide v2, v6, Lcom/smartdigimkt/i0/a;->r:J

    cmp-long v6, v2, v30

    if-ltz v6, :cond_23

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_18

    :cond_23
    invoke-static {v11, v13, v12}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_18
    invoke-static {v1, v13, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    .line 358
    :cond_24
    invoke-static {v11, v14, v12}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v14, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-static {v11, v8, v12}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v8, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-static {v11, v10, v12}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v10, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-static {v11, v9, v12}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v9, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-static {v11, v13, v12}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v13, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    .line 363
    :cond_25
    invoke-static {v11, v14, v14}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v14, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-static {v11, v8, v8}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v8, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 365
    invoke-static {v11, v10, v10}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v10, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 366
    invoke-static {v11, v9, v9}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v9, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    .line 367
    invoke-static {v11, v13, v13}, Lcom/smartdigimkt/c0/h;->a(Lcom/smartdigimkt/g0/g;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v13, v2, v4}, Lcom/smartdigimkt/c0/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v1

    :goto_19
    if-eqz p2, :cond_27

    move-object/from16 v3, p2

    .line 368
    iget-object v2, v3, Lcom/smartdigimkt/m3/c;->a:Ljava/lang/String;

    .line 369
    instance-of v4, v3, Lcom/smartdigimkt/m3/k;

    if-eqz v4, :cond_26

    .line 370
    check-cast v3, Lcom/smartdigimkt/m3/k;

    .line 371
    iget-object v3, v3, Lcom/smartdigimkt/m3/k;->o0:Ljava/lang/String;

    move-object/from16 v4, p1

    goto :goto_1a

    :cond_26
    move-object/from16 v4, p1

    move-object/from16 v3, v28

    goto :goto_1a

    :cond_27
    move-object/from16 v4, p1

    move-object/from16 v2, v28

    move-object v3, v2

    .line 372
    :goto_1a
    iget-object v6, v4, Lcom/smartdigimkt/i0/l;->b:Ljava/lang/String;

    iget-object v8, v4, Lcom/smartdigimkt/i0/l;->c:Ljava/lang/String;

    iget-object v4, v4, Lcom/smartdigimkt/i0/l;->a:Lcom/smartdigimkt/l3/a;

    if-eqz v11, :cond_28

    move/from16 v12, v19

    goto :goto_1b

    :cond_28
    move/from16 v12, v21

    .line 373
    :goto_1b
    new-instance v9, Lcom/smartdigimkt/q3/c;

    const/16 v10, 0x42

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v9, v11, v10}, Lcom/smartdigimkt/q3/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v10, "1004731"

    iput-object v10, v9, Lcom/smartdigimkt/q3/c;->a:Ljava/lang/String;

    .line 375
    iput-object v6, v9, Lcom/smartdigimkt/q3/c;->b:Ljava/lang/String;

    .line 376
    iput-object v8, v9, Lcom/smartdigimkt/q3/c;->c:Ljava/lang/String;

    .line 377
    invoke-virtual {v9, v4}, Lcom/smartdigimkt/q3/c;->a(Lcom/smartdigimkt/l3/a;)V

    .line 378
    iput-object v3, v9, Lcom/smartdigimkt/q3/c;->l:Ljava/lang/String;

    .line 379
    iput-object v2, v9, Lcom/smartdigimkt/q3/c;->m:Ljava/lang/String;

    move-object/from16 v2, v24

    .line 380
    iput-object v2, v9, Lcom/smartdigimkt/q3/c;->n:Ljava/lang/String;

    .line 381
    iput-object v0, v9, Lcom/smartdigimkt/q3/c;->o:Ljava/lang/String;

    .line 382
    iput-object v7, v9, Lcom/smartdigimkt/q3/c;->p:Ljava/lang/String;

    .line 383
    iput-object v15, v9, Lcom/smartdigimkt/q3/c;->q:Ljava/lang/String;

    move-object/from16 v13, v32

    .line 384
    iput-object v13, v9, Lcom/smartdigimkt/q3/c;->r:Ljava/lang/String;

    .line 385
    iput-object v5, v9, Lcom/smartdigimkt/q3/c;->s:Ljava/lang/String;

    move-object/from16 v0, v33

    .line 386
    iput-object v0, v9, Lcom/smartdigimkt/q3/c;->t:Ljava/lang/String;

    move-object/from16 v2, p0

    .line 387
    iput-object v2, v9, Lcom/smartdigimkt/q3/c;->u:Ljava/lang/String;

    const/16 v20, 0x2

    .line 388
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/smartdigimkt/q3/c;->v:Ljava/lang/String;

    move-object/from16 v0, v17

    .line 389
    iput-object v0, v9, Lcom/smartdigimkt/q3/c;->w:Ljava/lang/String;

    move-object/from16 v5, v29

    .line 390
    iput-object v5, v9, Lcom/smartdigimkt/q3/c;->x:Ljava/lang/String;

    move-object/from16 v13, v27

    .line 391
    iput-object v13, v9, Lcom/smartdigimkt/q3/c;->y:Ljava/lang/String;

    move-object/from16 v11, v26

    .line 392
    iput-object v11, v9, Lcom/smartdigimkt/q3/c;->z:Ljava/lang/String;

    move-object/from16 v7, v25

    .line 393
    iput-object v7, v9, Lcom/smartdigimkt/q3/c;->A:Ljava/lang/String;

    if-eqz v12, :cond_29

    move-object/from16 v0, v16

    goto :goto_1c

    :cond_29
    move-object/from16 v0, v18

    .line 394
    :goto_1c
    iput-object v0, v9, Lcom/smartdigimkt/q3/c;->B:Ljava/lang/String;

    if-eqz p3, :cond_2a

    move-object/from16 v0, v18

    goto :goto_1d

    :cond_2a
    move-object/from16 v0, v16

    .line 395
    :goto_1d
    iput-object v0, v9, Lcom/smartdigimkt/q3/c;->C:Ljava/lang/String;

    move-object/from16 v12, v34

    .line 396
    iput-object v12, v9, Lcom/smartdigimkt/q3/c;->D:Ljava/lang/String;

    move-object/from16 v13, v23

    .line 397
    iput-object v13, v9, Lcom/smartdigimkt/q3/c;->E:Ljava/lang/String;

    move-object/from16 v14, v22

    .line 398
    iput-object v14, v9, Lcom/smartdigimkt/q3/c;->F:Ljava/lang/String;

    .line 399
    invoke-static {v9}, Lcom/smartdigimkt/y3/h;->a(Lcom/smartdigimkt/q3/c;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    const-string p2, ""

    :goto_0
    if-eqz p3, :cond_1

    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_1
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .line 400
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 401
    :cond_0
    const-string v0, "__SLD__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 402
    const-string v0, "__DOWN_X__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 403
    const-string v0, "__RE_DOWN_X__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 404
    const-string v0, "__DOWN_Y__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 405
    const-string v0, "__RE_DOWN_Y__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 406
    const-string v0, "__UP_X__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 407
    const-string v0, "__RE_UP_X__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 408
    const-string v0, "__UP_Y__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 409
    const-string v0, "__RE_UP_Y__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 410
    const-string v0, "__DOWN_X_DT__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 411
    const-string v0, "__RE_DOWN_X_DT__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 412
    const-string v0, "__DOWN_Y_DT__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 413
    const-string v0, "__RE_DOWN_Y_DT__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 414
    const-string v0, "__UP_X_DT__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 415
    const-string v0, "__RE_UP_X_DT__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 416
    const-string v0, "__UP_Y_DT__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 417
    const-string v0, "__RE_UP_Y_DT__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const-string v0, "__C_SLD__"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    const-string v0, "__C_DOWN_X__"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    const-string v0, "__RE_C_DOWN_X__"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    const-string v0, "__C_DOWN_Y__"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    const-string v0, "__RE_C_DOWN_Y__"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    const-string v0, "__C_UP_X__"

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    const-string v0, "__RE_C_UP_X__"

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    const-string v0, "__C_UP_Y__"

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_2

    .line 72
    .line 73
    const-string v0, "__RE_C_UP_Y__"

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_2

    .line 80
    .line 81
    const-string v0, "__C_DOWN_X_DT__"

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_2

    .line 88
    .line 89
    const-string v0, "__RE_C_DOWN_X_DT__"

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_2

    .line 96
    .line 97
    const-string v0, "__C_DOWN_Y_DT__"

    .line 98
    .line 99
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_2

    .line 104
    .line 105
    const-string v0, "__RE_C_DOWN_Y_DT__"

    .line 106
    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_2

    .line 112
    .line 113
    const-string v0, "__C_UP_X_DT__"

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-nez v0, :cond_2

    .line 120
    .line 121
    const-string v0, "__RE_C_UP_X_DT__"

    .line 122
    .line 123
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_2

    .line 128
    .line 129
    const-string v0, "__C_UP_Y_DT__"

    .line 130
    .line 131
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_2

    .line 136
    .line 137
    const-string v0, "__RE_C_UP_Y_DT__"

    .line 138
    .line 139
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    if-eqz p0, :cond_1

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_1
    return v1

    .line 147
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 148
    return p0
.end method
