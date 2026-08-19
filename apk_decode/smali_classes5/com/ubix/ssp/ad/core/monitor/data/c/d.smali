.class public Lcom/ubix/ssp/ad/core/monitor/data/c/d;
.super Lcom/ubix/ssp/ad/core/monitor/data/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/core/monitor/data/c/a;-><init>(Landroid/content/Context;)V

    const-string p1, "EventDataOperation"

    iput-object p1, p0, Lcom/ubix/ssp/ad/core/monitor/data/c/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Lorg/json/JSONObject;)I
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/core/monitor/data/c/a;->a(Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "data"

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p2, "created_at"

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/core/monitor/data/c/a;->b:Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;

    invoke-virtual {p2, p1, v0}, Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/core/monitor/data/c/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/util/List;)Lcom/ubix/ssp/ad/e/y/b/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ubix/ssp/ad/e/y/b/a;",
            ">;)",
            "Lcom/ubix/ssp/ad/e/y/b/b;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/ubix/ssp/ad/e/y/b/b;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/y/b/b;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/w/s/a;->f()Lcom/ubix/ssp/ad/e/w/s/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/w/s/a;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ubix/ssp/ad/e/y/b/b;->b:Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/w/s/a;->f()Lcom/ubix/ssp/ad/e/w/s/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/w/s/a;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ubix/ssp/ad/e/y/b/b;->p:Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/w/s/a;->f()Lcom/ubix/ssp/ad/e/w/s/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/w/s/a;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ubix/ssp/ad/e/y/b/b;->q:Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/w/s/a;->f()Lcom/ubix/ssp/ad/e/w/s/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/w/s/a;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ubix/ssp/ad/e/y/b/b;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, v0, Lcom/ubix/ssp/ad/e/y/b/b;->e:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ubix/ssp/ad/e/y/b/b;->d:J

    invoke-static {}, Lcom/ubix/ssp/ad/e/w/s/a;->f()Lcom/ubix/ssp/ad/e/w/s/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/w/s/a;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ubix/ssp/ad/e/y/b/b;->f:Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/w/s/a;->f()Lcom/ubix/ssp/ad/e/w/s/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/w/s/a;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ubix/ssp/ad/e/y/b/b;->g:Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/w/s/a;->f()Lcom/ubix/ssp/ad/e/w/s/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/w/s/a;->l()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ubix/ssp/ad/e/y/b/b;->h:Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/w/s/a;->f()Lcom/ubix/ssp/ad/e/w/s/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/w/s/a;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ubix/ssp/ad/e/y/b/b;->i:Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/w/s/a;->f()Lcom/ubix/ssp/ad/e/w/s/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/w/s/a;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ubix/ssp/ad/e/y/b/b;->l:Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/w/s/a;->f()Lcom/ubix/ssp/ad/e/w/s/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/w/s/a;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ubix/ssp/ad/e/y/b/b;->j:Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/w/s/a;->f()Lcom/ubix/ssp/ad/e/w/s/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/w/s/a;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ubix/ssp/ad/e/y/b/b;->k:Ljava/lang/String;

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/y/b/b;->m:[Lcom/ubix/ssp/ad/e/y/b/a;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/ubix/ssp/ad/e/y/b/a;

    iput-object p1, v0, Lcom/ubix/ssp/ad/e/y/b/b;->m:[Lcom/ubix/ssp/ad/e/y/b/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/y/c/f;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/core/monitor/data/c/a;->a(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/net/Uri;I)[Ljava/lang/String;
    .locals 8

    .line 4
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/ubix/ssp/ad/core/monitor/data/c/a;->b:Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "created_at ASC LIMIT "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_3

    :try_start_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    move-object v2, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p2, v0

    move-object v1, p1

    goto :goto_6

    :catch_0
    move-exception v0

    move-object p2, v0

    goto :goto_4

    :goto_1
    :try_start_2
    const-string v0, "data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/core/monitor/data/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/core/monitor/data/c/d;->b(Ljava/lang/String;)Lcom/ubix/ssp/ad/e/y/b/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V

    :cond_1
    :goto_2
    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/n;->b()Lcom/ubix/ssp/ad/e/a0/n$c;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/ubix/ssp/ad/core/monitor/data/c/d;->a(Ljava/util/List;)Lcom/ubix/ssp/ad/e/y/b/b;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/y/c/f;->a(Lcom/ubix/ssp/ad/e/y/c/f;)[B

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/ubix/ssp/ad/e/a0/n$c;->b([B)Ljava/lang/String;

    move-result-object p2
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :cond_3
    move-object p2, v1

    move-object v0, p2

    :goto_3
    if-eqz p1, :cond_4

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p2, v0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object p2, v0

    move-object p1, v1

    :goto_4
    :try_start_4
    iget-object v0, p0, Lcom/ubix/ssp/ad/core/monitor/data/c/a;->a:Ljava/lang/String;

    const-string v2, "Could not pull records for SensorsData out of database events. Waiting to send."

    invoke-static {v0, v2, p2}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object p2, v1

    move-object v0, p2

    if-eqz p1, :cond_4

    :goto_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v0, :cond_5

    const-string p1, "1"

    filled-new-array {v0, p2, p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v1

    :goto_6
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p2
.end method

.method public b(Ljava/lang/String;)Lcom/ubix/ssp/ad/e/y/b/a;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "SDKEvent"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "md_event"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/n;->a()Lcom/ubix/ssp/ad/e/a0/n$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/n$b;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/y/b/a;->a([B)Lcom/ubix/ssp/ad/e/y/b/a;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const-string p1, "AppCrashed"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "app_crashed_reason"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/ubix/ssp/ad/e/y/b/a;

    invoke-direct {p1}, Lcom/ubix/ssp/ad/e/y/b/a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
