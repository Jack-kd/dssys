.class public Lcom/czhj/sdk/common/track/AdTracker;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/czhj/sdk/common/track/AdTracker$MessageType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private extInfo:Ljava/lang/String;

.field private mCalled:Z

.field private final mEvent:Ljava/lang/String;

.field private mId:Ljava/lang/Long;

.field private final mMessageType:Lcom/czhj/sdk/common/track/AdTracker$MessageType;

.field private final mRequest_id:Ljava/lang/String;

.field private mSource:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private retryCount:Ljava/lang/Integer;

.field private retryNum:Ljava/lang/Integer;

.field private timestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/czhj/sdk/common/track/AdTracker$MessageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/czhj/sdk/common/track/AdTracker;->mRequest_id:Ljava/lang/String;

    iput-object p1, p0, Lcom/czhj/sdk/common/track/AdTracker;->mMessageType:Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    iput-object p2, p0, Lcom/czhj/sdk/common/track/AdTracker;->mUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/czhj/sdk/common/track/AdTracker;->mEvent:Ljava/lang/String;

    const-string p1, "native"

    iput-object p1, p0, Lcom/czhj/sdk/common/track/AdTracker;->mSource:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/czhj/sdk/common/track/AdTracker;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/czhj/sdk/common/track/AdTracker;->mEvent:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/czhj/sdk/common/track/AdTracker;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/czhj/sdk/common/track/AdTracker;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/czhj/sdk/common/track/AdTracker;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/czhj/sdk/common/track/AdTracker;->mRequest_id:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/czhj/sdk/common/track/AdTracker;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/czhj/sdk/common/track/AdTracker;->mId:Ljava/lang/Long;

    return-object p0
.end method

.method public static cleanExpiredAdTracker(J)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    :try_start_0
    const-string v5, "timestamp < ?"

    invoke-static {}, Lcom/czhj/sdk/common/Database/DBOperator;->getInstance()Lcom/czhj/sdk/common/Database/DBOperator;

    move-result-object v2

    invoke-static {}, Lcom/czhj/sdk/common/Database/SQLiteTrackHelper;->getInstance()Lcom/czhj/sdk/common/Database/SQLiteTrackHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "tracks"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/czhj/sdk/common/track/AdTracker$1;

    invoke-direct {v7}, Lcom/czhj/sdk/common/track/AdTracker$1;-><init>()V

    invoke-virtual/range {v2 .. v7}, Lcom/czhj/sdk/common/Database/DBOperator;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/czhj/sdk/common/Database/SQLiteLisenter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    const-string p1, "cleanExpiredAdTracker error"

    invoke-static {p1, p0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static cleanLimitAdTracker(J)V
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/czhj/sdk/common/Database/SQLiteTrackHelper;->getInstance()Lcom/czhj/sdk/common/Database/SQLiteTrackHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "select * from tracks"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v2, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v1, v2

    goto :goto_2

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    cmp-long v3, v3, p0

    if-lez v3, :cond_1

    const-string v3, "select * from tracks order by id desc limit ?"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p1, "id"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object p0, v1

    move-object v1, p1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    move-object p0, p1

    goto :goto_2

    :cond_1
    move-object p0, v2

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void

    :cond_3
    :try_start_3
    const-string v5, "id < ?"

    invoke-static {}, Lcom/czhj/sdk/common/Database/DBOperator;->getInstance()Lcom/czhj/sdk/common/Database/DBOperator;

    move-result-object v2

    invoke-static {}, Lcom/czhj/sdk/common/Database/SQLiteTrackHelper;->getInstance()Lcom/czhj/sdk/common/Database/SQLiteTrackHelper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "tracks"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/czhj/sdk/common/track/AdTracker$2;

    invoke-direct {v7}, Lcom/czhj/sdk/common/track/AdTracker$2;-><init>()V

    invoke-virtual/range {v2 .. v7}, Lcom/czhj/sdk/common/Database/DBOperator;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/czhj/sdk/common/Database/SQLiteLisenter;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_2
    move-exception v0

    move-object p0, v0

    :goto_2
    :try_start_4
    const-string p1, "cleanLimitAdTracker "

    invoke-static {p1, p0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :catchall_3
    move-exception v0

    move-object p0, v0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p0
.end method

.method public static createTable()Lcom/czhj/sdk/common/Database/SQLiteBuider$CreateTable;
    .locals 5

    new-instance v0, Lcom/czhj/sdk/common/Database/SQLiteBuider$CreateTable$Builder;

    invoke-direct {v0}, Lcom/czhj/sdk/common/Database/SQLiteBuider$CreateTable$Builder;-><init>()V

    const-string v1, "tracks"

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/Database/SQLiteBuider$CreateTable$Builder;->setTableName(Ljava/lang/String;)Lcom/czhj/sdk/common/Database/SQLiteBuider$CreateTable$Builder;

    const-string v1, "id"

    const-string v2, "long"

    invoke-virtual {v0, v1, v2}, Lcom/czhj/sdk/common/Database/SQLiteBuider$CreateTable$Builder;->setPrimaryKey(Ljava/lang/String;Ljava/lang/String;)Lcom/czhj/sdk/common/Database/SQLiteBuider$CreateTable$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/Database/SQLiteBuider$CreateTable$Builder;->autoincrement(Z)Lcom/czhj/sdk/common/Database/SQLiteBuider$CreateTable$Builder;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "url"

    const-string v4, "text"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "event"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "request_id"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "timestamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "source"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "retryNum"

    const-string v3, "int"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "extInfo"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "messageType"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/Database/SQLiteBuider$CreateTable$Builder;->setColumns(Ljava/util/Map;)Lcom/czhj/sdk/common/Database/SQLiteBuider$CreateTable$Builder;

    invoke-virtual {v0}, Lcom/czhj/sdk/common/Database/SQLiteBuider$CreateTable$Builder;->build()Lcom/czhj/sdk/common/Database/SQLiteBuider$CreateTable;

    move-result-object v0

    return-object v0
.end method

.method public static getAdTrackerFromDB(IJ)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/List<",
            "Lcom/czhj/sdk/common/track/AdTracker;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/czhj/sdk/common/Database/SQLiteTrackHelper;->getInstance()Lcom/czhj/sdk/common/Database/SQLiteTrackHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, p1

    const-string v5, "select * from tracks where timestamp > ? order by id desc limit ?"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    if-eqz v2, :cond_6

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "url"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v0, "id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v0, "event"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v0, "request_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v0, "timestamp"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v0, "source"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v0, "retryNum"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v0, "extInfo"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v0, "messageType"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    const/4 v0, 0x0

    move/from16 v13, p0

    move v12, v0

    :goto_0
    if-ge v12, v13, :cond_6

    :try_start_2
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    move/from16 p1, v3

    :try_start_3
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move/from16 p2, v4

    :try_start_4
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move/from16 v18, v5

    :try_start_5
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move/from16 v16, v6

    :try_start_6
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move/from16 v17, v7

    :try_start_7
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move/from16 v19, v8

    :try_start_8
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move/from16 v20, v9

    :try_start_9
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_0

    const-wide/16 v21, 0x0

    cmp-long v21, v14, v21

    if-ltz v21, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v21, :cond_1

    :cond_0
    move-object/from16 v21, v2

    goto :goto_2

    :cond_1
    move-object/from16 v21, v2

    const/4 v2, 0x1

    if-eq v9, v2, :cond_3

    const/4 v2, 0x2

    if-eq v9, v2, :cond_2

    :try_start_a
    sget-object v2, Lcom/czhj/sdk/common/track/AdTracker$MessageType;->TRACKING_URL:Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_2
    sget-object v2, Lcom/czhj/sdk/common/track/AdTracker$MessageType;->TOBID_TRACKING_URL:Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/czhj/sdk/common/track/AdTracker$MessageType;->QUARTILE_EVENT:Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    :goto_1
    new-instance v9, Lcom/czhj/sdk/common/track/AdTracker;

    invoke-direct {v9, v2, v0, v3, v4}, Lcom/czhj/sdk/common/track/AdTracker;-><init>(Lcom/czhj/sdk/common/track/AdTracker$MessageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/czhj/sdk/common/track/AdTracker;->setId(Ljava/lang/Long;)V

    invoke-direct {v9, v7}, Lcom/czhj/sdk/common/track/AdTracker;->setRetryCount(I)V

    invoke-virtual {v9, v5}, Lcom/czhj/sdk/common/track/AdTracker;->setTimestamp(Ljava/lang/Long;)V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v9, v6}, Lcom/czhj/sdk/common/track/AdTracker;->setSource(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v9, v8}, Lcom/czhj/sdk/common/track/AdTracker;->setExtInfo(Ljava/lang/String;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object/from16 v21, v2

    goto :goto_9

    :goto_2
    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v5, v18

    move/from16 v8, v19

    move/from16 v9, v20

    move-object/from16 v2, v21

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v21, v2

    :goto_3
    move/from16 v20, v9

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object/from16 v21, v2

    :goto_4
    move/from16 v19, v8

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object/from16 v21, v2

    :goto_5
    move/from16 v17, v7

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object/from16 v21, v2

    :goto_6
    move/from16 v16, v6

    goto :goto_5

    :catchall_6
    move-exception v0

    move-object/from16 v21, v2

    :goto_7
    move/from16 v18, v5

    goto :goto_6

    :catchall_7
    move-exception v0

    move-object/from16 v21, v2

    :goto_8
    move/from16 p2, v4

    goto :goto_7

    :catchall_8
    move-exception v0

    move-object/from16 v21, v2

    move/from16 p1, v3

    goto :goto_8

    :goto_9
    :try_start_b
    const-string v2, "getAdTrackList error"

    invoke-static {v2, v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    if-nez v0, :cond_5

    goto :goto_b

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :catchall_9
    move-exception v0

    move-object/from16 v2, v21

    goto :goto_c

    :cond_6
    move-object/from16 v21, v2

    goto :goto_b

    :catchall_a
    move-exception v0

    move-object/from16 v21, v2

    goto :goto_c

    :goto_b
    if-eqz v21, :cond_7

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto :goto_d

    :catchall_b
    move-exception v0

    :goto_c
    :try_start_c
    const-string v3, "getlogs fail"

    invoke-static {v3, v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_d
    return-object v1

    :catchall_c
    move-exception v0

    if-eqz v2, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method private setId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/track/AdTracker;->mId:Ljava/lang/Long;

    return-void
.end method

.method private setRetryCount(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/czhj/sdk/common/track/AdTracker;->retryCount:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public deleteDB()V
    .locals 7

    iget-object v0, p0, Lcom/czhj/sdk/common/track/AdTracker;->mId:Ljava/lang/Long;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v4, "id = ?"

    invoke-static {}, Lcom/czhj/sdk/common/Database/DBOperator;->getInstance()Lcom/czhj/sdk/common/Database/DBOperator;

    move-result-object v1

    invoke-static {}, Lcom/czhj/sdk/common/Database/SQLiteTrackHelper;->getInstance()Lcom/czhj/sdk/common/Database/SQLiteTrackHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "tracks"

    iget-object v0, p0, Lcom/czhj/sdk/common/track/AdTracker;->mId:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/czhj/sdk/common/track/AdTracker$4;

    invoke-direct {v6, p0}, Lcom/czhj/sdk/common/track/AdTracker$4;-><init>(Lcom/czhj/sdk/common/track/AdTracker;)V

    invoke-virtual/range {v1 .. v6}, Lcom/czhj/sdk/common/Database/DBOperator;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/czhj/sdk/common/Database/SQLiteLisenter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/track/AdTracker;->mEvent:Ljava/lang/String;

    return-object v0
.end method

.method public getExtInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/track/AdTracker;->extInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/track/AdTracker;->mId:Ljava/lang/Long;

    return-object v0
.end method

.method public getMessageType()Lcom/czhj/sdk/common/track/AdTracker$MessageType;
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/track/AdTracker;->mMessageType:Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    return-object v0
.end method

.method public getRequest_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/track/AdTracker;->mRequest_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/track/AdTracker;->retryCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRetryNum()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/track/AdTracker;->retryNum:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/track/AdTracker;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/czhj/sdk/common/track/AdTracker;->timestamp:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/track/AdTracker;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public insertToDB(Lcom/czhj/sdk/common/Database/SQLiteTrackHelper$ExecCallBack;)V
    .locals 6

    :try_start_0
    new-instance v0, Lcom/czhj/sdk/common/Database/SQLiteBuider$Insert$Builder;

    invoke-direct {v0}, Lcom/czhj/sdk/common/Database/SQLiteBuider$Insert$Builder;-><init>()V

    const-string v1, "tracks"

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/Database/SQLiteBuider$Insert$Builder;->setTableName(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/czhj/sdk/common/track/AdTracker$5;->$SwitchMap$com$czhj$sdk$common$track$AdTracker$MessageType:[I

    iget-object v3, p0, Lcom/czhj/sdk/common/track/AdTracker;->mMessageType:Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    :cond_0
    const-string v2, "url"

    iget-object v4, p0, Lcom/czhj/sdk/common/track/AdTracker;->mUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "request_id"

    iget-object v4, p0, Lcom/czhj/sdk/common/track/AdTracker;->mRequest_id:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "event"

    iget-object v4, p0, Lcom/czhj/sdk/common/track/AdTracker;->mEvent:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "source"

    iget-object v4, p0, Lcom/czhj/sdk/common/track/AdTracker;->mSource:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "retryNum"

    iget-object v4, p0, Lcom/czhj/sdk/common/track/AdTracker;->retryCount:Ljava/lang/Integer;

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "extInfo"

    iget-object v4, p0, Lcom/czhj/sdk/common/track/AdTracker;->extInfo:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "messageType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/Database/SQLiteBuider$Insert$Builder;->setColumnValues(Ljava/util/Map;)V

    invoke-static {}, Lcom/czhj/sdk/common/Database/SQLiteTrackHelper;->getInstance()Lcom/czhj/sdk/common/Database/SQLiteTrackHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0}, Lcom/czhj/sdk/common/Database/SQLiteBuider$Insert$Builder;->build()Lcom/czhj/sdk/common/Database/SQLiteBuider$Insert;

    move-result-object v0

    new-instance v2, Lcom/czhj/sdk/common/track/AdTracker$3;

    invoke-direct {v2, p0, p1}, Lcom/czhj/sdk/common/track/AdTracker$3;-><init>(Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/sdk/common/Database/SQLiteTrackHelper$ExecCallBack;)V

    invoke-static {v1, v0, v2}, Lcom/czhj/sdk/common/Database/SQLiteTrackHelper;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/czhj/sdk/common/Database/SQLiteBuider$Insert;Lcom/czhj/sdk/common/Database/SQLiteTrackHelper$ExecCallBack;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public isTracked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/czhj/sdk/common/track/AdTracker;->mCalled:Z

    return v0
.end method

.method public setExtInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/track/AdTracker;->extInfo:Ljava/lang/String;

    return-void
.end method

.method public setRetryCountInc()V
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/track/AdTracker;->retryCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/czhj/sdk/common/track/AdTracker;->retryCount:Ljava/lang/Integer;

    return-void
.end method

.method public setRetryNum(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/track/AdTracker;->retryNum:Ljava/lang/Integer;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/track/AdTracker;->mSource:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/track/AdTracker;->timestamp:Ljava/lang/Long;

    return-void
.end method

.method public setTracked()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/czhj/sdk/common/track/AdTracker;->mCalled:Z

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/track/AdTracker;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public updateToDB()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/czhj/sdk/common/Database/SQLiteBuider$Update$Builder;

    invoke-direct {v0}, Lcom/czhj/sdk/common/Database/SQLiteBuider$Update$Builder;-><init>()V

    const-string v1, "tracks"

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/Database/SQLiteBuider$Update$Builder;->setTableName(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " where id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/czhj/sdk/common/track/AdTracker;->mId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/Database/SQLiteBuider$Update$Builder;->setWhere(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "retryNum"

    iget-object v3, p0, Lcom/czhj/sdk/common/track/AdTracker;->retryCount:Ljava/lang/Integer;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/Database/SQLiteBuider$Update$Builder;->setColumnValues(Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/czhj/sdk/common/Database/SQLiteBuider$Update$Builder;->build()Lcom/czhj/sdk/common/Database/SQLiteBuider$Update;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/Database/SQLiteBuider$Update;->getSql()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/czhj/sdk/common/Database/SQLiteTrackHelper;->getInstance()Lcom/czhj/sdk/common/Database/SQLiteTrackHelper;

    move-result-object v1

    invoke-static {}, Lcom/czhj/sdk/common/Database/SQLiteTrackHelper;->getInstance()Lcom/czhj/sdk/common/Database/SQLiteTrackHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/czhj/sdk/common/Database/SQLiteTrackHelper;->transactionWriteExecSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/czhj/sdk/common/Database/SQLiteTrackHelper$ExecCallBack;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method
