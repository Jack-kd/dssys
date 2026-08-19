.class public Lcom/anythink/core/common/f/q;
.super Lcom/anythink/core/common/f/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/f/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/core/common/f/c<",
        "Lcom/anythink/core/common/h/bq;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile b:Lcom/anythink/core/common/f/q;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/anythink/core/common/f/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/anythink/core/common/f/c;-><init>(Lcom/anythink/core/common/f/d;)V

    .line 2
    .line 3
    .line 4
    const-class p1, Lcom/anythink/core/common/f/q;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/anythink/core/common/f/q;->a:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private declared-synchronized a(ILjava/lang/String;Lcom/anythink/core/common/h/bq$a;)J
    .locals 11

    monitor-enter p0

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/core/common/f/c;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_3

    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 66
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 67
    const-string v3, "format"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    const-string p1, "placement_id"

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string p1, "adsource_id"

    iget-object p2, p3, Lcom/anythink/core/common/h/bq$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string p1, "hour_time"

    iget-object p2, p3, Lcom/anythink/core/common/h/bq$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string p1, "hour_imp"

    iget p2, p3, Lcom/anythink/core/common/h/bq$a;->e:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    const-string p1, "date_time"

    iget-object p2, p3, Lcom/anythink/core/common/h/bq$a;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string p1, "date_imp"

    iget p2, p3, Lcom/anythink/core/common/h/bq$a;->d:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    const-string p1, "show_time"

    iget-wide v3, p3, Lcom/anythink/core/common/h/bq$a;->f:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 75
    iget-object p1, p3, Lcom/anythink/core/common/h/bq$a;->a:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/anythink/core/common/f/c;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "placement_ad_impression"

    const-string p2, "adsource_id"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "adsource_id=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "adsource_id"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 77
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_1

    .line 78
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 79
    const-string p1, "adsource_id = ? "

    .line 80
    invoke-virtual {p0}, Lcom/anythink/core/common/f/c;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v3, "placement_ad_impression"

    iget-object p3, p3, Lcom/anythink/core/common/h/bq$a;->a:Ljava/lang/String;

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v3, v0, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long p1, p1

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 81
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_2
    invoke-virtual {p0}, Lcom/anythink/core/common/f/c;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "placement_ad_impression"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-wide p1

    .line 83
    :catch_0
    monitor-exit p0

    return-wide v1

    .line 84
    :cond_3
    :goto_0
    monitor-exit p0

    return-wide v1

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private static a(Lcom/anythink/core/common/f/d;)Lcom/anythink/core/common/f/q;
    .locals 2

    .line 1
    sget-object v0, Lcom/anythink/core/common/f/q;->b:Lcom/anythink/core/common/f/q;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/anythink/core/common/f/q;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/anythink/core/common/f/q;->b:Lcom/anythink/core/common/f/q;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/anythink/core/common/f/q;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/f/q;-><init>(Lcom/anythink/core/common/f/d;)V

    sput-object v1, Lcom/anythink/core/common/f/q;->b:Lcom/anythink/core/common/f/q;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    .line 6
    :cond_1
    :goto_2
    sget-object p0, Lcom/anythink/core/common/f/q;->b:Lcom/anythink/core/common/f/q;

    return-object p0
.end method

.method private static a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/h/bq;
    .locals 6

    if-eqz p0, :cond_4

    .line 89
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 90
    new-instance v0, Lcom/anythink/core/common/h/bq;

    invoke-direct {v0}, Lcom/anythink/core/common/h/bq;-><init>()V

    .line 91
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lcom/anythink/core/common/h/bq;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    const-string v1, "format"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/anythink/core/common/h/bq;->a:I

    .line 94
    const-string v1, "placement_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/h/bq;->b:Ljava/lang/String;

    .line 95
    new-instance v1, Lcom/anythink/core/common/h/bq$a;

    invoke-direct {v1}, Lcom/anythink/core/common/h/bq$a;-><init>()V

    .line 96
    const-string v2, "adsource_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/common/h/bq$a;->a:Ljava/lang/String;

    .line 97
    const-string v2, "hour_time"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/common/h/bq$a;->b:Ljava/lang/String;

    .line 98
    const-string v2, "date_time"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/common/h/bq$a;->c:Ljava/lang/String;

    .line 99
    iget-object v2, v1, Lcom/anythink/core/common/h/bq$a;->b:Ljava/lang/String;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 100
    iput v3, v1, Lcom/anythink/core/common/h/bq$a;->e:I

    goto :goto_1

    .line 101
    :cond_0
    const-string v2, "hour_imp"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/anythink/core/common/h/bq$a;->e:I

    .line 102
    :goto_1
    iget v2, v0, Lcom/anythink/core/common/h/bq;->d:I

    iget v4, v1, Lcom/anythink/core/common/h/bq$a;->e:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/anythink/core/common/h/bq;->d:I

    .line 103
    iget-object v2, v1, Lcom/anythink/core/common/h/bq$a;->c:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 104
    iput v3, v1, Lcom/anythink/core/common/h/bq$a;->d:I

    goto :goto_2

    .line 105
    :cond_1
    const-string v2, "date_imp"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/anythink/core/common/h/bq$a;->d:I

    .line 106
    :goto_2
    iget v2, v0, Lcom/anythink/core/common/h/bq;->c:I

    iget v3, v1, Lcom/anythink/core/common/h/bq$a;->d:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/anythink/core/common/h/bq;->c:I

    .line 107
    const-string v2, "show_time"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/anythink/core/common/h/bq$a;->f:J

    .line 108
    iget-wide v4, v0, Lcom/anythink/core/common/h/bq;->e:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    .line 109
    iput-wide v2, v0, Lcom/anythink/core/common/h/bq;->e:J

    .line 110
    :cond_2
    iget-object v2, v0, Lcom/anythink/core/common/h/bq;->h:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v1, Lcom/anythink/core/common/h/bq$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    return-object v0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/h/bq;
    .locals 9

    monitor-enter p0

    const/4 v0, 0x0

    .line 33
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/core/common/f/c;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "placement_ad_impression"

    const-string v4, "placement_id=? AND date_time=?"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_3

    .line 34
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 35
    new-instance v1, Lcom/anythink/core/common/h/bq;

    invoke-direct {v1}, Lcom/anythink/core/common/h/bq;-><init>()V

    .line 36
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v1, Lcom/anythink/core/common/h/bq;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 38
    const-string v2, "format"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/anythink/core/common/h/bq;->a:I

    .line 39
    const-string v2, "placement_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/common/h/bq;->b:Ljava/lang/String;

    .line 40
    new-instance v2, Lcom/anythink/core/common/h/bq$a;

    invoke-direct {v2}, Lcom/anythink/core/common/h/bq$a;-><init>()V

    .line 41
    const-string v3, "adsource_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/anythink/core/common/h/bq$a;->a:Ljava/lang/String;

    .line 42
    const-string v3, "hour_time"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/anythink/core/common/h/bq$a;->b:Ljava/lang/String;

    .line 43
    const-string v3, "date_time"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/anythink/core/common/h/bq$a;->c:Ljava/lang/String;

    .line 44
    iget-object v3, v2, Lcom/anythink/core/common/h/bq$a;->b:Ljava/lang/String;

    invoke-static {v3, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 45
    iput v4, v2, Lcom/anythink/core/common/h/bq$a;->e:I

    goto :goto_1

    .line 46
    :cond_0
    const-string v3, "hour_imp"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/anythink/core/common/h/bq$a;->e:I

    .line 47
    :goto_1
    iget v3, v1, Lcom/anythink/core/common/h/bq;->d:I

    iget v5, v2, Lcom/anythink/core/common/h/bq$a;->e:I

    add-int/2addr v3, v5

    iput v3, v1, Lcom/anythink/core/common/h/bq;->d:I

    .line 48
    iget-object v3, v2, Lcom/anythink/core/common/h/bq$a;->c:Ljava/lang/String;

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 49
    iput v4, v2, Lcom/anythink/core/common/h/bq$a;->d:I

    goto :goto_2

    .line 50
    :cond_1
    const-string v3, "date_imp"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/anythink/core/common/h/bq$a;->d:I

    .line 51
    :goto_2
    iget v3, v1, Lcom/anythink/core/common/h/bq;->c:I

    iget v4, v2, Lcom/anythink/core/common/h/bq$a;->d:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/anythink/core/common/h/bq;->c:I

    .line 52
    const-string v3, "show_time"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/anythink/core/common/h/bq$a;->f:J

    .line 53
    iget-wide v5, v1, Lcom/anythink/core/common/h/bq;->e:J

    cmp-long v5, v3, v5

    if-ltz v5, :cond_2

    .line 54
    iput-wide v3, v1, Lcom/anythink/core/common/h/bq;->e:J

    .line 55
    :cond_2
    iget-object v3, v1, Lcom/anythink/core/common/h/bq;->h:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v2, Lcom/anythink/core/common/h/bq$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    move-object v1, v0

    .line 56
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 57
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :catchall_1
    move-object p1, v0

    :catchall_2
    if-eqz p1, :cond_6

    .line 59
    :goto_3
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catch_0
    move-object p1, v0

    .line 60
    :catch_1
    :try_start_4
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz p1, :cond_6

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object p2, v0

    if-eqz p1, :cond_5

    .line 61
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 62
    :cond_5
    throw p2

    :catch_2
    move-object p1, v0

    :catch_3
    if-eqz p1, :cond_6

    goto :goto_3

    .line 63
    :goto_4
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1

    .line 64
    :cond_6
    :goto_5
    monitor-exit p0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 8

    .line 85
    invoke-virtual {p0}, Lcom/anythink/core/common/f/c;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "adsource_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v1, "placement_ad_impression"

    const-string v3, "adsource_id=?"

    const-string v5, "adsource_id"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 86
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 87
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 88
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private declared-synchronized a(ILjava/lang/String;Ljava/lang/String;)[I
    .locals 11

    monitor-enter p0

    const/4 v0, 0x2

    .line 7
    :try_start_0
    new-array v0, v0, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 8
    :try_start_1
    invoke-virtual {p0}, Lcom/anythink/core/common/f/c;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "placement_ad_impression"

    const-string v5, "sum(date_imp)"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "format=? AND date_time=?"

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7, p2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 10
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_0

    .line 12
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 13
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    aput p2, v0, v1

    :cond_0
    if-eqz v2, :cond_1

    .line 14
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_1

    .line 15
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    if-eqz v2, :cond_3

    .line 16
    :goto_0
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_5

    :catchall_1
    if-eqz v2, :cond_3

    goto :goto_0

    .line 17
    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_3

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p1, v0

    if-eqz v2, :cond_2

    .line 18
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 19
    :cond_2
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    if-eqz v2, :cond_3

    goto :goto_0

    .line 20
    :cond_3
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Lcom/anythink/core/common/f/c;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "placement_ad_impression"

    const-string p2, "sum(hour_imp)"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "format=? AND hour_time=?"

    .line 21
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 22
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 23
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_4

    .line 24
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 25
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 p2, 0x1

    aput p1, v0, p2

    :cond_4
    if-eqz v2, :cond_5

    .line 26
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_5

    .line 27
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_5
    if-eqz v2, :cond_7

    .line 28
    :goto_2
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catchall_3
    if-eqz v2, :cond_7

    :goto_3
    goto :goto_2

    .line 29
    :catch_2
    :try_start_7
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v2, :cond_7

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object p1, v0

    if-eqz v2, :cond_6

    .line 30
    :try_start_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 31
    :cond_6
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_3
    if-eqz v2, :cond_7

    goto :goto_3

    .line 32
    :cond_7
    :goto_4
    monitor-exit p0

    return-object v0

    :goto_5
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const-string v1, "date_time!=\'"

    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string p1, "\'"

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0}, Lcom/anythink/core/common/f/c;->d()Landroid/database/sqlite/SQLiteDatabase;

    .line 22
    .line 23
    .line 24
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/anythink/core/common/f/c;->d()Landroid/database/sqlite/SQLiteDatabase;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "placement_ad_impression"

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v0, v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    .line 40
    .line 41
    :catch_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 42
    return-void

    .line 43
    :goto_0
    monitor-exit p0

    .line 44
    throw p1
.end method
