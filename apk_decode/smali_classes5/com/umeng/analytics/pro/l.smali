.class public Lcom/umeng/analytics/pro/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/l$a;,
        Lcom/umeng/analytics/pro/l$b;
    }
.end annotation


# static fields
.field public static final a:I = 0x801

.field public static final b:I = 0x802

.field private static final c:I = 0x3e8

.field private static d:Landroid/content/Context; = null

.field private static e:Ljava/lang/String; = null

.field private static final f:Ljava/lang/String; = "umeng+"

.field private static final g:Ljava/lang/String; = "ek__id"

.field private static final h:Ljava/lang/String; = "ek_key"


# instance fields
.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/l;->i:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/l;->j:Ljava/util/List;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/umeng/analytics/pro/l;->k:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/l;->l:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/umeng/analytics/pro/l$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/umeng/analytics/pro/l;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    if-eqz p2, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p2

    move-object p2, p1

    move-object p1, v1

    .line 6
    invoke-virtual/range {p1 .. p9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/l;
    .locals 2

    .line 1
    invoke-static {}, Lcom/umeng/analytics/pro/l$b;->a()Lcom/umeng/analytics/pro/l;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    .line 4
    invoke-direct {v0}, Lcom/umeng/analytics/pro/l;->k()V

    :cond_0
    return-object v0
.end method

.method private a(Lorg/json/JSONObject;Z)Ljava/lang/String;
    .locals 21

    const/4 v0, 0x0

    .line 210
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/j;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 211
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 212
    const-string v2, "__sd"
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    :try_start_2
    invoke-direct/range {v1 .. v10}, Lcom/umeng/analytics/pro/l;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-eqz v2, :cond_10

    .line 213
    :try_start_3
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 214
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 215
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 216
    const-string v7, "__f"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 217
    const-string v8, "__e"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 218
    const-string v9, "__g"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 219
    const-string v10, "__ii"

    .line 220
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 221
    :try_start_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 222
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_a

    .line 223
    const-string v10, "__a"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 224
    const-string v11, "__b"

    .line 225
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 226
    const-string v14, "__c"

    .line 227
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 228
    const-string v15, "__d"

    .line 229
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v16, v12

    .line 230
    iget-object v12, v1, Lcom/umeng/analytics/pro/l;->i:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    const-string v12, "__sp"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 232
    const-string v13, "__pp"

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 233
    const-string v6, "id"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string v6, "start_time"

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    const-string v6, "end_time"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    const-string v6, "header_foreground_count"

    invoke-static {v6}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v6
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v18, v0

    const-string v0, "duration"

    if-eqz v6, :cond_1

    .line 237
    :try_start_5
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    cmp-long v6, v19, v16

    if-gtz v6, :cond_0

    .line 238
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 239
    invoke-virtual {v5, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v6, v2

    move-object/from16 v16, v3

    goto :goto_1

    :catchall_0
    move-object v6, v2

    move-object/from16 v16, v3

    :catchall_1
    move-object/from16 v0, v18

    goto/16 :goto_9

    :catch_0
    move-object v6, v2

    move-object/from16 v16, v3

    :catch_1
    move-object/from16 v0, v18

    goto/16 :goto_a

    :cond_0
    move-object v6, v2

    move-object/from16 v16, v3

    .line 240
    :try_start_6
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v5, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 241
    const-string v0, "duration_old"

    .line 242
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    sub-long/2addr v2, v7

    .line 243
    invoke-virtual {v5, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    move-object v6, v2

    move-object/from16 v16, v3

    .line 244
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    sub-long/2addr v2, v7

    .line 245
    invoke-virtual {v5, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 246
    :goto_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 247
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {v1, v10}, Lcom/umeng/analytics/pro/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 248
    const-string v2, "pages"

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    :cond_2
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v2, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 250
    :goto_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    .line 251
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {v1, v11}, Lcom/umeng/analytics/pro/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 252
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 253
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 254
    invoke-direct {v1, v0}, Lcom/umeng/analytics/pro/l;->b(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v2

    .line 255
    :cond_4
    const-string v0, "autopages"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    :cond_5
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 257
    const-string v0, "traffic"

    new-instance v2, Lorg/json/JSONObject;

    .line 258
    invoke-virtual {v1, v14}, Lcom/umeng/analytics/pro/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    :cond_6
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 261
    const-string v0, "locations"

    new-instance v2, Lorg/json/JSONArray;

    .line 262
    invoke-virtual {v1, v15}, Lcom/umeng/analytics/pro/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    :cond_7
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 265
    const-string v0, "_$sp"

    new-instance v2, Lorg/json/JSONObject;

    .line 266
    invoke-virtual {v1, v12}, Lcom/umeng/analytics/pro/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    :cond_8
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 269
    const-string v0, "_$pp"

    new-instance v2, Lorg/json/JSONObject;

    .line 270
    invoke-virtual {v1, v13}, Lcom/umeng/analytics/pro/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    :cond_9
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 273
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catchall_2
    move-object/from16 v18, v0

    :catchall_3
    move-object v6, v2

    move-object/from16 v16, v3

    goto/16 :goto_9

    :catch_2
    move-object/from16 v18, v0

    :catch_3
    move-object v6, v2

    move-object/from16 v16, v3

    goto/16 :goto_a

    :cond_a
    move-object/from16 v18, v0

    move-object v6, v2

    move-object/from16 v16, v3

    :cond_b
    :goto_3
    if-eqz p2, :cond_d

    move-object/from16 v0, v18

    goto :goto_4

    :cond_c
    move-object/from16 v18, v0

    move-object v6, v2

    move-object/from16 v16, v3

    :cond_d
    move-object v2, v6

    move-object/from16 v3, v16

    move-object/from16 v0, v18

    goto/16 :goto_0

    :cond_e
    move-object v6, v2

    move-object/from16 v16, v3

    .line 274
    :goto_4
    :try_start_7
    iget-object v2, v1, Lcom/umeng/analytics/pro/l;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    const/4 v3, 0x1

    if-ge v2, v3, :cond_f

    .line 275
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 276
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 277
    :catchall_4
    sget-object v2, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/j;->b()V

    return-object v0

    .line 278
    :cond_f
    :try_start_9
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_11

    .line 279
    const-string v2, "sessions"

    move-object/from16 v3, p1

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :cond_10
    move-object v6, v2

    move-object/from16 v16, v3

    .line 280
    :cond_11
    :goto_5
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    if-eqz v6, :cond_12

    .line 281
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 282
    :cond_12
    :goto_6
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 283
    :catchall_5
    :cond_13
    sget-object v2, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/j;->b()V

    goto :goto_b

    :catchall_6
    :goto_7
    move-object/from16 v16, v3

    move-object v6, v0

    goto :goto_9

    :catch_4
    :goto_8
    move-object/from16 v16, v3

    move-object v6, v0

    goto :goto_a

    :catchall_7
    move-object/from16 v1, p0

    goto :goto_7

    :catch_5
    move-object/from16 v1, p0

    goto :goto_8

    :catchall_8
    move-object/from16 v1, p0

    move-object v6, v0

    move-object/from16 v16, v6

    goto :goto_9

    :catch_6
    move-object/from16 v1, p0

    move-object v6, v0

    move-object/from16 v16, v6

    goto :goto_a

    .line 284
    :catchall_9
    :goto_9
    :try_start_b
    sget-object v2, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    if-eqz v6, :cond_14

    .line 285
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_14
    if-eqz v16, :cond_13

    goto :goto_6

    :catchall_a
    move-exception v0

    goto :goto_c

    .line 286
    :catch_7
    :goto_a
    :try_start_c
    sget-object v2, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    if-eqz v6, :cond_15

    .line 287
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_15
    if-eqz v16, :cond_13

    goto :goto_6

    :goto_b
    return-object v0

    :goto_c
    if-eqz v6, :cond_16

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_16
    if-eqz v16, :cond_17

    .line 288
    :try_start_d
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    .line 289
    :catchall_b
    :cond_17
    sget-object v2, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/j;->b()V

    .line 290
    throw v0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12

    .line 83
    const-string v0, "__pp"

    const-string v1, "__sp"

    const-string v2, "__g"

    const-string v3, "\", "

    const-string v4, "=\""

    :try_start_0
    const-string v5, "__f"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 84
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 85
    instance-of v8, v7, Ljava/lang/Long;

    if-eqz v8, :cond_0

    .line 86
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_0

    :cond_0
    const-wide/16 v7, 0x0

    .line 87
    :goto_0
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 88
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    const-string v10, ""

    if-eqz v9, :cond_1

    :try_start_1
    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 90
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/umeng/analytics/pro/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_1
    move-object v9, v10

    :goto_1
    if-eqz p2, :cond_2

    .line 91
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 92
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/umeng/analytics/pro/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 93
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update __sd set __f=\""

    invoke-virtual {p2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" where "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "__ii"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-virtual {p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v10, p4

    .line 110
    const-string v11, "=\""

    const-string v1, "__b"

    const-string v2, "__a"

    const/4 v12, 0x0

    .line 111
    :try_start_0
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 113
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    move-object v13, v0

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 116
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_4

    :cond_2
    move-object v13, v12

    .line 117
    :goto_0
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v3

    .line 118
    const-string v1, "__sd"

    const-string v4, "__ii=? "

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v9}, Lcom/umeng/analytics/pro/l;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_3

    .line 119
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {p0, v2}, Lcom/umeng/analytics/pro/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :catchall_0
    move-object v12, v1

    goto/16 :goto_3

    .line 122
    :cond_3
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 123
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 124
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v12}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 125
    :cond_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_5

    if-eqz v1, :cond_9

    .line 126
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :cond_5
    const/4 v3, 0x0

    .line 127
    :goto_2
    :try_start_2
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ge v3, v4, :cond_7

    .line 128
    :try_start_3
    invoke-virtual {v13, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_6

    .line 129
    :try_start_4
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :catch_0
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 130
    :cond_7
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/umeng/analytics/pro/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update __sd set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" where "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "__ii"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p3

    .line 133
    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    if-eqz v1, :cond_9

    .line 134
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    :goto_3
    if-eqz v12, :cond_9

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_9
    :goto_4
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 12

    const/4 v0, 0x0

    .line 145
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/j;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 146
    :try_start_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 147
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    const-string v3, "__et"

    const-string v6, "__i=? "

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/umeng/analytics/pro/l;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    move-object v2, p0

    :goto_0
    move-object v0, p2

    goto :goto_1

    :catchall_0
    move-object v2, p0

    :catchall_1
    move-object p1, v0

    goto/16 :goto_8

    :catch_0
    move-object v2, p0

    :catch_1
    move-object p1, v0

    goto/16 :goto_9

    .line 149
    :cond_0
    const-string v3, "__et"
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    :try_start_2
    invoke-direct/range {v2 .. v11}, Lcom/umeng/analytics/pro/l;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_e

    .line 150
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 151
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 152
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/x;->b()Ljava/lang/String;

    move-result-object v3

    .line 153
    :cond_1
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 154
    const-string v5, "__t"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 155
    const-string v6, "__i"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 156
    const-string v7, "__s"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 157
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "-1"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 158
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v3

    :cond_3
    const/4 v8, 0x0

    .line 159
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 160
    iget-object v9, v2, Lcom/umeng/analytics/pro/l;->j:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v8, 0x801

    if-eq v5, v8, :cond_6

    const/16 v8, 0x802

    if-eq v5, v8, :cond_4

    goto :goto_2

    .line 161
    :cond_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 162
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {p0, v7}, Lcom/umeng/analytics/pro/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 164
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    goto :goto_3

    .line 165
    :cond_5
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 166
    :goto_3
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 167
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 168
    :cond_6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 169
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {p0, v7}, Lcom/umeng/analytics/pro/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 171
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    goto :goto_4

    .line 172
    :cond_7
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 173
    :goto_4
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 174
    invoke-virtual {p2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 175
    :cond_8
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_b

    .line 176
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 177
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 178
    :cond_9
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 179
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 180
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 181
    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 182
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_9

    .line 184
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_5

    .line 185
    :cond_a
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_b

    .line 186
    const-string p2, "ekv"

    invoke-virtual {p1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    :cond_b
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-lez p2, :cond_e

    .line 188
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 189
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 190
    :cond_c
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 191
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 192
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 193
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 194
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_c

    .line 196
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_6

    .line 197
    :cond_d
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_e

    .line 198
    const-string v1, "gkv"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    :cond_e
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_f

    .line 200
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 201
    :cond_f
    :goto_7
    :try_start_3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 202
    :catchall_2
    :cond_10
    sget-object p1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/j;->b()V

    goto :goto_a

    :catchall_3
    move-object v2, p0

    move-object p1, v0

    move-object v4, p1

    goto :goto_8

    :catch_2
    move-object v2, p0

    move-object p1, v0

    move-object v4, p1

    goto :goto_9

    .line 203
    :goto_8
    :try_start_4
    sget-object p2, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz p1, :cond_11

    .line 204
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_11
    if-eqz v4, :cond_10

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object p2, v0

    goto :goto_b

    .line 205
    :goto_9
    :try_start_5
    sget-object p2, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz p1, :cond_12

    .line 206
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_12
    if-eqz v4, :cond_10

    goto :goto_7

    :goto_a
    return-void

    :goto_b
    if-eqz p1, :cond_13

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_13
    if-eqz v4, :cond_14

    .line 207
    :try_start_6
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 208
    :catchall_5
    :cond_14
    sget-object p1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/j;->b()V

    .line 209
    throw p2
.end method

.method private b(Lorg/json/JSONObject;Z)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    .line 47
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/j;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 48
    :try_start_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 49
    const-string v3, "__is"
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    :try_start_2
    invoke-direct/range {v2 .. v11}, Lcom/umeng/analytics/pro/l;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_5

    .line 50
    :try_start_3
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 51
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 52
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 53
    const-string v6, "__e"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 54
    const-string v7, "__ii"

    .line 55
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v7, v2, Lcom/umeng/analytics/pro/l;->l:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    const-string v7, "__sp"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 58
    const-string v8, "__pp"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 59
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 60
    const-string v9, "_$sp"

    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {p0, v7}, Lcom/umeng/analytics/pro/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v10, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    :cond_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 62
    const-string v7, "_$pp"

    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {p0, v8}, Lcom/umeng/analytics/pro/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 64
    const-string v7, "id"

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v7, "start_time"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 67
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    if-eqz p2, :cond_0

    .line 68
    :cond_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_5

    .line 69
    const-string p2, "sessions"

    invoke-virtual {p1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    :cond_5
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v1, :cond_6

    .line 71
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 72
    :cond_6
    :goto_0
    :try_start_4
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 73
    :catchall_0
    :cond_7
    sget-object p1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/j;->b()V

    goto :goto_5

    :catchall_1
    :goto_1
    move-object v1, v0

    goto :goto_3

    :catch_0
    :goto_2
    move-object v1, v0

    goto :goto_4

    :catchall_2
    move-object v2, p0

    goto :goto_1

    :catch_1
    move-object v2, p0

    goto :goto_2

    :catchall_3
    move-object v2, p0

    move-object v1, v0

    move-object v4, v1

    goto :goto_3

    :catch_2
    move-object v2, p0

    move-object v1, v0

    move-object v4, v1

    goto :goto_4

    .line 74
    :catchall_4
    :goto_3
    :try_start_5
    sget-object p1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v1, :cond_8

    .line 75
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v4, :cond_7

    goto :goto_0

    :catchall_5
    move-exception v0

    move-object p1, v0

    goto :goto_6

    .line 76
    :catch_3
    :goto_4
    :try_start_6
    sget-object p1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-eqz v1, :cond_9

    .line 77
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v4, :cond_7

    goto :goto_0

    :goto_5
    return-object v0

    :goto_6
    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v4, :cond_b

    .line 78
    :try_start_7
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 79
    :catchall_6
    :cond_b
    sget-object p2, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/j;->b()V

    .line 80
    throw p1
.end method

.method private b(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 8

    .line 42
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 43
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 44
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 45
    const-string v4, "duration"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 46
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private b(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .line 2
    const-string v0, "__pp"

    const-string v1, "__sp"

    const-string v2, "__e"

    :try_start_0
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 3
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 4
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    const-string v6, ""

    if-eqz v5, :cond_0

    :try_start_1
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 6
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/umeng/analytics/pro/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 8
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/umeng/analytics/pro/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9
    :cond_1
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 10
    const-string v7, "__ii"

    invoke-virtual {p2, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string p1, "__av"

    sget-object v0, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string p1, "__vc"

    sget-object v0, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string p1, "__is"

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method

.method private b(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 12

    const/4 v0, 0x0

    .line 19
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/j;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 20
    :try_start_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 22
    const-string v3, "__er"

    const-string v6, "__i=? "

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/umeng/analytics/pro/l;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    move-object v2, p0

    :goto_0
    move-object v0, p2

    goto :goto_1

    :catchall_0
    move-object v2, p0

    :catchall_1
    move-object p1, v0

    goto/16 :goto_4

    :catch_0
    move-object v2, p0

    :catch_1
    move-object p1, v0

    goto/16 :goto_5

    .line 23
    :cond_0
    const-string v3, "__er"
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    :try_start_2
    invoke-direct/range {v2 .. v11}, Lcom/umeng/analytics/pro/l;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_3

    .line 24
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 25
    :cond_1
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 26
    const-string v1, "__a"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 28
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 29
    :cond_2
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 30
    const-string v1, "error"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    :cond_3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_4

    .line 32
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 33
    :cond_4
    :goto_3
    :try_start_3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 34
    :catchall_2
    :cond_5
    sget-object p1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/j;->b()V

    goto :goto_6

    :catchall_3
    move-object v2, p0

    move-object p1, v0

    move-object v4, p1

    goto :goto_4

    :catch_2
    move-object v2, p0

    move-object p1, v0

    move-object v4, p1

    goto :goto_5

    .line 35
    :goto_4
    :try_start_4
    sget-object p2, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz p1, :cond_6

    .line 36
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v4, :cond_5

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object p2, v0

    goto :goto_7

    .line 37
    :goto_5
    :try_start_5
    sget-object p2, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz p1, :cond_7

    .line 38
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v4, :cond_5

    goto :goto_3

    :goto_6
    return-void

    :goto_7
    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v4, :cond_9

    .line 39
    :try_start_6
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 40
    :catchall_5
    :cond_9
    sget-object p1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/j;->b()V

    .line 41
    throw p2
.end method

.method private c(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 2
    const-string v12, "__d"

    const/4 v13, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 4
    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v5

    .line 5
    const-string v3, "__sd"

    const-string v6, "__ii=? "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object/from16 v4, p3

    invoke-direct/range {v2 .. v11}, Lcom/umeng/analytics/pro/l;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_1

    .line 6
    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {p0, v5}, Lcom/umeng/analytics/pro/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v13, v3

    goto/16 :goto_1

    :cond_0
    move-object/from16 v4, p3

    move-object v3, v13

    .line 9
    :cond_1
    const-string v5, "\""

    const-string v6, "=\""

    const-string v7, "__ii"

    const-string v8, "\" where "

    if-eqz v14, :cond_3

    .line 10
    :try_start_2
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 11
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 12
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9, v13}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 13
    :cond_2
    invoke-virtual {v9, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 14
    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/umeng/analytics/pro/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 15
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 16
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update  __sd set __d=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 17
    invoke-virtual {v4, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 18
    :cond_3
    const-string v9, "__c"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 19
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/umeng/analytics/pro/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 20
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 21
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update  __sd set __c=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 22
    invoke-virtual {v4, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 23
    :cond_4
    const-string v9, "__f"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update  __sd set __f=\""

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_5

    .line 27
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_1
    :goto_1
    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void
.end method

.method private k()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/umeng/analytics/pro/l;->l()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/umeng/analytics/pro/l;->i:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/umeng/analytics/pro/l;->l:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/umeng/analytics/pro/l;->j:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v0
.end method

.method private l()V
    .locals 8

    .line 1
    const-string v0, "ek_key"

    .line 2
    .line 3
    const-string v1, "ek__id"

    .line 4
    .line 5
    :try_start_0
    sget-object v2, Lcom/umeng/analytics/pro/l;->e:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_7

    .line 12
    .line 13
    sget-object v2, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v2, v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getMultiProcessSP(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    sget-object v2, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    invoke-static {}, Lcom/umeng/commonsdk/utils/UMUtils;->genId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    sget-object v3, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {v3, v1, v2}, Lcom/umeng/commonsdk/utils/UMUtils;->setMultiProcessSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    const/4 v3, 0x0

    .line 62
    const/4 v4, 0x1

    .line 63
    if-nez v1, :cond_5

    .line 64
    .line 65
    const/16 v1, 0x9

    .line 66
    .line 67
    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    move v5, v3

    .line 77
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-ge v5, v6, :cond_4

    .line 82
    .line 83
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-eqz v7, :cond_3

    .line 92
    .line 93
    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-nez v7, :cond_2

    .line 102
    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    rsub-int/lit8 v6, v6, 0xa

    .line 116
    .line 117
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    sput-object v1, Lcom/umeng/analytics/pro/l;->e:Ljava/lang/String;

    .line 132
    .line 133
    :cond_5
    sget-object v1, Lcom/umeng/analytics/pro/l;->e:Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-nez v1, :cond_7

    .line 140
    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    sget-object v2, Lcom/umeng/analytics/pro/l;->e:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    sget-object v5, Lcom/umeng/analytics/pro/l;->e:Ljava/lang/String;

    .line 154
    .line 155
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    sput-object v1, Lcom/umeng/analytics/pro/l;->e:Ljava/lang/String;

    .line 174
    .line 175
    sget-object v1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    .line 176
    .line 177
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getMultiProcessSP(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 182
    .line 183
    .line 184
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    const-string v5, "umeng+"

    .line 186
    .line 187
    if-eqz v2, :cond_6

    .line 188
    .line 189
    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    .line 190
    .line 191
    invoke-virtual {p0, v5}, Lcom/umeng/analytics/pro/l;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-static {v1, v0, v2}, Lcom/umeng/commonsdk/utils/UMUtils;->setMultiProcessSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_6
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/l;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-nez v0, :cond_7

    .line 208
    .line 209
    invoke-virtual {p0, v4, v3}, Lcom/umeng/analytics/pro/l;->b(ZZ)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, v4, v3}, Lcom/umeng/analytics/pro/l;->a(ZZ)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/l;->h()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/l;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    .line 220
    .line 221
    :catchall_0
    :cond_7
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 15

    .line 95
    const-string v0, "__f"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 96
    :try_start_0
    sget-object v4, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/j;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 97
    :try_start_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 98
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    .line 99
    const-string v6, "__sd"

    const-string v9, "__ii=? "

    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v14}, Lcom/umeng/analytics/pro/l;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 101
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 102
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 103
    :cond_1
    :goto_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 104
    :catch_0
    :cond_2
    sget-object v0, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/j;->b()V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_2

    :catch_1
    move-object v7, v1

    goto :goto_3

    :goto_2
    if-eqz v1, :cond_3

    .line 105
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v7, :cond_4

    .line 106
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 107
    :catch_2
    :cond_4
    sget-object v1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/j;->b()V

    .line 108
    throw v0

    :catch_3
    :goto_3
    if-eqz v1, :cond_5

    .line 109
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_5
    if-eqz v7, :cond_2

    goto :goto_1

    :goto_4
    return-wide v2
.end method

.method public a(Z)Lorg/json/JSONObject;
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/l;->a()V

    .line 136
    iget-object v0, p0, Lcom/umeng/analytics/pro/l;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 137
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p1, :cond_0

    .line 138
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/l;->a(Lorg/json/JSONObject;Z)Ljava/lang/String;

    const/4 p1, 0x0

    .line 139
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/l;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/l;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v0

    .line 141
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/l;->a(Lorg/json/JSONObject;Z)Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/l;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/l;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public a()V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/umeng/analytics/pro/l;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 10

    .line 8
    const-string v0, "__t"

    const-string v1, "__i"

    const/4 v2, 0x0

    .line 9
    :try_start_0
    sget-object v3, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/j;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 10
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v4, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v4, v5, :cond_2

    .line 12
    :try_start_2
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 13
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 14
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 15
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v9, "-1"

    if-nez v8, :cond_0

    :try_start_3
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :catchall_0
    move-object v2, v3

    goto :goto_3

    .line 16
    :cond_0
    :goto_1
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object v7

    invoke-virtual {v7}, Lcom/umeng/analytics/pro/x;->b()Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v7, v9

    .line 18
    :cond_1
    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v7, "__e"

    const-string v8, "id"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 21
    const-string v7, "__av"

    sget-object v8, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v8}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v7, "__vc"

    sget-object v8, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v8}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    const-string v7, "__s"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/umeng/analytics/pro/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v5, "__et"

    invoke-virtual {v3, v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 27
    :cond_2
    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 28
    :try_start_5
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 29
    :catchall_1
    :cond_3
    :goto_2
    sget-object p1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/j;->b()V

    goto :goto_6

    :catch_1
    move-object v2, v3

    goto :goto_5

    :catchall_2
    :goto_3
    if-eqz v2, :cond_3

    .line 30
    :goto_4
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 31
    :catch_2
    :goto_5
    :try_start_7
    sget-object p1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v2, :cond_3

    goto :goto_4

    :goto_6
    return-void

    :catchall_3
    move-exception p1

    if-eqz v2, :cond_4

    .line 32
    :try_start_8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 33
    :catchall_4
    :cond_4
    sget-object v0, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/j;->b()V

    .line 34
    throw p1
.end method

.method public a(ZLjava/lang/String;)V
    .locals 3

    .line 308
    const-string p1, "__i=?"

    const/4 v0, 0x0

    .line 309
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/j;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 311
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 312
    const-string v1, "__er"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 313
    const-string v1, "__et"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 314
    iget-object p1, p0, Lcom/umeng/analytics/pro/l;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 315
    const-string p1, "__sd"

    const-string v1, "__ii=?"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 316
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 317
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    :catchall_0
    :cond_1
    sget-object p1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/j;->b()V

    goto :goto_1

    :catchall_1
    if-eqz v0, :cond_1

    goto :goto_0

    .line 319
    :catch_0
    :try_start_2
    sget-object p1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_2

    .line 320
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 321
    :catchall_3
    :cond_2
    sget-object p2, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/j;->b()V

    .line 322
    throw p1
.end method

.method public a(ZZ)V
    .locals 5

    const/4 v0, 0x0

    .line 291
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/j;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-eqz p2, :cond_0

    if-eqz p1, :cond_4

    .line 293
    const-string p1, "delete from __is"

    .line 294
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 295
    :cond_0
    iget-object p1, p0, Lcom/umeng/analytics/pro/l;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    if-lez p1, :cond_3

    move v1, p2

    :goto_0
    if-ge p2, p1, :cond_2

    .line 296
    iget-object v2, p0, Lcom/umeng/analytics/pro/l;->l:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 297
    :cond_1
    const-string v3, "__is"

    const-string v4, "__ii=?"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    move p2, v1

    :cond_3
    if-eqz p2, :cond_4

    .line 298
    const-string p1, "delete from __is where __ii is null"

    .line 299
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 300
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 301
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    :catchall_0
    :cond_5
    sget-object p1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/j;->b()V

    goto :goto_3

    .line 303
    :catchall_1
    :try_start_2
    sget-object p1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)V

    if-eqz v0, :cond_5

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_4

    .line 304
    :catch_0
    sget-object p1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_5

    goto :goto_2

    :goto_3
    return-void

    :goto_4
    if-eqz v0, :cond_6

    .line 305
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 306
    :catchall_3
    :cond_6
    sget-object p2, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/j;->b()V

    .line 307
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    .line 35
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/j;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 36
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 37
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 38
    const-string v3, "__i"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/umeng/analytics/pro/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 41
    const-string p2, "__a"

    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string p1, "__t"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 43
    const-string p1, "__av"

    sget-object p2, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string p1, "__vc"

    sget-object p2, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string p1, "__er"

    invoke-virtual {v1, p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    :catchall_0
    move-object v0, v1

    goto :goto_2

    :catch_0
    move-object v0, v1

    goto :goto_4

    .line 46
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48
    :catchall_1
    :cond_1
    :goto_1
    sget-object p1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/j;->b()V

    goto :goto_5

    :catchall_2
    :goto_2
    if-eqz v0, :cond_1

    .line 49
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 50
    :catch_1
    :goto_4
    :try_start_4
    sget-object p1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_1

    goto :goto_3

    :goto_5
    const/4 p1, 0x0

    return p1

    :catchall_3
    move-exception p1

    if-eqz v0, :cond_2

    .line 51
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 52
    :catchall_4
    :cond_2
    sget-object p2, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/j;->b()V

    .line 53
    throw p1
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/l$a;)Z
    .locals 6

    .line 54
    const-string v0, "__e"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    .line 55
    :try_start_0
    sget-object v3, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/j;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 56
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 57
    sget-object v4, Lcom/umeng/analytics/pro/l$a;->c:Lcom/umeng/analytics/pro/l$a;

    if-ne p3, v4, :cond_1

    .line 58
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 59
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 60
    const-string v5, "__ii"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string p1, "__av"

    sget-object p2, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string p1, "__vc"

    sget-object p2, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string p1, "__sd"

    invoke-virtual {v3, p1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    :catchall_0
    move-object v2, v3

    goto :goto_2

    :catch_0
    move-object v2, v3

    goto :goto_4

    .line 65
    :cond_1
    sget-object v0, Lcom/umeng/analytics/pro/l$a;->f:Lcom/umeng/analytics/pro/l$a;

    if-ne p3, v0, :cond_2

    .line 66
    invoke-direct {p0, p1, p2, v3}, Lcom/umeng/analytics/pro/l;->b(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 67
    :cond_2
    sget-object v0, Lcom/umeng/analytics/pro/l$a;->d:Lcom/umeng/analytics/pro/l$a;

    if-ne p3, v0, :cond_3

    .line 68
    invoke-direct {p0, p1, p2, v3}, Lcom/umeng/analytics/pro/l;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 69
    :cond_3
    sget-object v0, Lcom/umeng/analytics/pro/l$a;->b:Lcom/umeng/analytics/pro/l$a;

    if-ne p3, v0, :cond_4

    .line 70
    const-string p3, "__a"

    invoke-direct {p0, p1, p2, v3, p3}, Lcom/umeng/analytics/pro/l;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_4
    sget-object v0, Lcom/umeng/analytics/pro/l$a;->a:Lcom/umeng/analytics/pro/l$a;

    if-ne p3, v0, :cond_5

    .line 72
    const-string p3, "__b"

    invoke-direct {p0, p1, p2, v3, p3}, Lcom/umeng/analytics/pro/l;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_5
    sget-object v0, Lcom/umeng/analytics/pro/l$a;->e:Lcom/umeng/analytics/pro/l$a;

    if-ne p3, v0, :cond_6

    .line 74
    invoke-direct {p0, p1, p2, v3}, Lcom/umeng/analytics/pro/l;->c(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 75
    :cond_6
    :goto_0
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 77
    :catchall_1
    :cond_7
    :goto_1
    sget-object p1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/j;->b()V

    goto :goto_5

    :catchall_2
    :goto_2
    if-eqz v2, :cond_7

    .line 78
    :goto_3
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 79
    :catch_1
    :goto_4
    :try_start_4
    sget-object p1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v2, :cond_7

    goto :goto_3

    :goto_5
    return v1

    :catchall_3
    move-exception p1

    if-eqz v2, :cond_8

    .line 80
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 81
    :catchall_4
    :cond_8
    sget-object p2, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/j;->b()V

    .line 82
    throw p1
.end method

.method public b(Z)Lorg/json/JSONObject;
    .locals 1

    .line 17
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 18
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/l;->b(Lorg/json/JSONObject;Z)Ljava/lang/String;

    return-object v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/l;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 96
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/j;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    const-string v1, "__is"

    const-string v2, "__ii=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 100
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :catchall_0
    :cond_1
    sget-object p1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/j;->b()V

    goto :goto_1

    :catchall_1
    if-eqz v0, :cond_1

    goto :goto_0

    .line 103
    :catch_0
    :try_start_2
    sget-object p1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_2

    .line 104
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 105
    :catchall_3
    :cond_2
    sget-object v0, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/j;->b()V

    .line 106
    throw p1
.end method

.method public b(ZZ)V
    .locals 3

    const/4 v0, 0x0

    .line 81
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/j;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-eqz p2, :cond_0

    if-eqz p1, :cond_1

    .line 83
    const-string p1, "delete from __sd"

    .line 84
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/umeng/analytics/pro/l;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 86
    :goto_0
    iget-object p2, p0, Lcom/umeng/analytics/pro/l;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 87
    iget-object p2, p0, Lcom/umeng/analytics/pro/l;->i:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 88
    const-string v1, "__sd"

    const-string v2, "__ii=?"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 89
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 90
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :catchall_0
    :cond_2
    sget-object p1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/j;->b()V

    goto :goto_3

    :catchall_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 92
    :catch_0
    :try_start_2
    sget-object p1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_2

    goto :goto_2

    :goto_3
    return-void

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_3

    .line 93
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 94
    :catchall_3
    :cond_3
    sget-object p2, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/j;->b()V

    .line 95
    throw p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 28
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/l;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 29
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    sget-object v0, Lcom/umeng/analytics/pro/l;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->encrypt([B[B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 30
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/l;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 17
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/l;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 18
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 19
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/umeng/analytics/pro/l;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->decrypt([B[B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 20
    :catch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 22
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 23
    const-string v0, "MobclickRT"

    const-string v1, "--->>> UMStoreManager decrypt failed, return origin data."

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public d()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/j;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3
    invoke-static {}, Lcom/umeng/analytics/pro/x;->a()Lcom/umeng/analytics/pro/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/x;->c()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_0

    .line 5
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :catchall_0
    sget-object v0, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/j;->b()V

    return-void

    .line 7
    :cond_0
    :try_start_2
    const-string v2, ""

    const-string v3, "-1"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update __et set __i=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" where "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "__i"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 11
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 12
    :catchall_1
    :cond_2
    sget-object v0, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/j;->b()V

    goto :goto_2

    :catchall_2
    if-eqz v0, :cond_2

    goto :goto_1

    .line 13
    :catch_0
    :try_start_4
    sget-object v1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_2

    goto :goto_1

    :goto_2
    return-void

    :catchall_3
    move-exception v1

    if-eqz v0, :cond_3

    .line 14
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 15
    :catchall_4
    :cond_3
    sget-object v0, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/j;->b()V

    .line 16
    throw v1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/l;->i:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public f()Lorg/json/JSONObject;
    .locals 14

    .line 1
    const-string v0, "__vc"

    .line 2
    .line 3
    const-string v1, "__av"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/umeng/analytics/pro/l;->l:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    return-object v3

    .line 15
    :cond_0
    :try_start_0
    sget-object v2, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/umeng/analytics/pro/j;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 22
    .line 23
    .line 24
    move-result-object v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 25
    :try_start_1
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/umeng/analytics/pro/l;->l:Ljava/util/List;

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/String;

    .line 36
    .line 37
    const-string v5, "__is"

    .line 38
    .line 39
    const-string v8, "__ii=? "

    .line 40
    .line 41
    filled-new-array {v2}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    const/4 v12, 0x0

    .line 46
    const/4 v13, 0x0

    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v10, 0x0

    .line 49
    const/4 v11, 0x0

    .line 50
    move-object v4, p0

    .line 51
    invoke-direct/range {v4 .. v13}, Lcom/umeng/analytics/pro/l;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 52
    .line 53
    .line 54
    move-result-object v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_1

    .line 62
    .line 63
    new-instance v4, Lorg/json/JSONObject;

    .line 64
    .line 65
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    .line 67
    .line 68
    :try_start_3
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    .line 89
    .line 90
    move-object v3, v4

    .line 91
    goto :goto_2

    .line 92
    :catchall_0
    :goto_0
    move-object v3, v2

    .line 93
    goto :goto_3

    .line 94
    :catch_0
    :goto_1
    move-object v3, v2

    .line 95
    goto :goto_5

    .line 96
    :catchall_1
    move-object v4, v3

    .line 97
    goto :goto_0

    .line 98
    :catch_1
    move-object v4, v3

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    :goto_2
    :try_start_4
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 101
    .line 102
    .line 103
    if-eqz v2, :cond_2

    .line 104
    .line 105
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 106
    .line 107
    .line 108
    :cond_2
    :try_start_5
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 109
    .line 110
    .line 111
    :catchall_2
    sget-object v0, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    .line 112
    .line 113
    invoke-static {v0}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/j;->b()V

    .line 118
    .line 119
    .line 120
    goto :goto_6

    .line 121
    :catchall_3
    move-object v4, v3

    .line 122
    goto :goto_3

    .line 123
    :catch_2
    move-object v4, v3

    .line 124
    goto :goto_5

    .line 125
    :catchall_4
    move-object v4, v3

    .line 126
    move-object v6, v4

    .line 127
    goto :goto_3

    .line 128
    :catch_3
    move-object v4, v3

    .line 129
    move-object v6, v4

    .line 130
    goto :goto_5

    .line 131
    :goto_3
    if-eqz v3, :cond_3

    .line 132
    .line 133
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 134
    .line 135
    .line 136
    :cond_3
    if-eqz v6, :cond_4

    .line 137
    .line 138
    :goto_4
    :try_start_6
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 139
    .line 140
    .line 141
    :catchall_5
    :cond_4
    sget-object v0, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    .line 142
    .line 143
    invoke-static {v0}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/j;->b()V

    .line 148
    .line 149
    .line 150
    move-object v3, v4

    .line 151
    goto :goto_6

    .line 152
    :goto_5
    :try_start_7
    sget-object v0, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    .line 153
    .line 154
    invoke-static {v0}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 155
    .line 156
    .line 157
    if-eqz v3, :cond_5

    .line 158
    .line 159
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 160
    .line 161
    .line 162
    :cond_5
    if-eqz v6, :cond_4

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :goto_6
    return-object v3

    .line 166
    :catchall_6
    move-exception v0

    .line 167
    if-eqz v3, :cond_6

    .line 168
    .line 169
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 170
    .line 171
    .line 172
    :cond_6
    if-eqz v6, :cond_7

    .line 173
    .line 174
    :try_start_8
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 175
    .line 176
    .line 177
    :catchall_7
    :cond_7
    sget-object v1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    .line 178
    .line 179
    invoke-static {v1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v1}, Lcom/umeng/analytics/pro/j;->b()V

    .line 184
    .line 185
    .line 186
    throw v0
.end method

.method public g()Lorg/json/JSONObject;
    .locals 14

    .line 1
    const-string v0, "__vc"

    .line 2
    .line 3
    const-string v1, "__av"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/umeng/analytics/pro/l;->i:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    return-object v3

    .line 15
    :cond_0
    :try_start_0
    sget-object v2, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/umeng/analytics/pro/j;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 22
    .line 23
    .line 24
    move-result-object v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 25
    :try_start_1
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/umeng/analytics/pro/l;->i:Ljava/util/List;

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/String;

    .line 36
    .line 37
    const-string v5, "__sd"

    .line 38
    .line 39
    const-string v8, "__ii=? "

    .line 40
    .line 41
    filled-new-array {v2}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    const/4 v12, 0x0

    .line 46
    const/4 v13, 0x0

    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v10, 0x0

    .line 49
    const/4 v11, 0x0

    .line 50
    move-object v4, p0

    .line 51
    invoke-direct/range {v4 .. v13}, Lcom/umeng/analytics/pro/l;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 52
    .line 53
    .line 54
    move-result-object v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_1

    .line 62
    .line 63
    new-instance v4, Lorg/json/JSONObject;

    .line 64
    .line 65
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    .line 67
    .line 68
    :try_start_3
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    .line 89
    .line 90
    move-object v3, v4

    .line 91
    goto :goto_2

    .line 92
    :catchall_0
    :goto_0
    move-object v3, v2

    .line 93
    goto :goto_3

    .line 94
    :catch_0
    :goto_1
    move-object v3, v2

    .line 95
    goto :goto_5

    .line 96
    :catchall_1
    move-object v4, v3

    .line 97
    goto :goto_0

    .line 98
    :catch_1
    move-object v4, v3

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    :goto_2
    :try_start_4
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 101
    .line 102
    .line 103
    if-eqz v2, :cond_2

    .line 104
    .line 105
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 106
    .line 107
    .line 108
    :cond_2
    :try_start_5
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 109
    .line 110
    .line 111
    :catchall_2
    sget-object v0, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    .line 112
    .line 113
    invoke-static {v0}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/j;->b()V

    .line 118
    .line 119
    .line 120
    goto :goto_6

    .line 121
    :catchall_3
    move-object v4, v3

    .line 122
    goto :goto_3

    .line 123
    :catch_2
    move-object v4, v3

    .line 124
    goto :goto_5

    .line 125
    :catchall_4
    move-object v4, v3

    .line 126
    move-object v6, v4

    .line 127
    goto :goto_3

    .line 128
    :catch_3
    move-object v4, v3

    .line 129
    move-object v6, v4

    .line 130
    goto :goto_5

    .line 131
    :goto_3
    if-eqz v3, :cond_3

    .line 132
    .line 133
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 134
    .line 135
    .line 136
    :cond_3
    if-eqz v6, :cond_4

    .line 137
    .line 138
    :goto_4
    :try_start_6
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 139
    .line 140
    .line 141
    :catchall_5
    :cond_4
    sget-object v0, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    .line 142
    .line 143
    invoke-static {v0}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/j;->b()V

    .line 148
    .line 149
    .line 150
    move-object v3, v4

    .line 151
    goto :goto_6

    .line 152
    :goto_5
    :try_start_7
    sget-object v0, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    .line 153
    .line 154
    invoke-static {v0}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 155
    .line 156
    .line 157
    if-eqz v3, :cond_5

    .line 158
    .line 159
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 160
    .line 161
    .line 162
    :cond_5
    if-eqz v6, :cond_4

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :goto_6
    return-object v3

    .line 166
    :catchall_6
    move-exception v0

    .line 167
    if-eqz v3, :cond_6

    .line 168
    .line 169
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 170
    .line 171
    .line 172
    :cond_6
    if-eqz v6, :cond_7

    .line 173
    .line 174
    :try_start_8
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 175
    .line 176
    .line 177
    :catchall_7
    :cond_7
    sget-object v1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    .line 178
    .line 179
    invoke-static {v1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v1}, Lcom/umeng/analytics/pro/j;->b()V

    .line 184
    .line 185
    .line 186
    throw v0
.end method

.method public h()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/umeng/analytics/pro/j;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/umeng/analytics/pro/l;->j:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-lez v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    iget-object v2, p0, Lcom/umeng/analytics/pro/l;->j:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ge v1, v2, :cond_0

    .line 31
    .line 32
    iget-object v2, p0, Lcom/umeng/analytics/pro/l;->j:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const-string v3, "__et"

    .line 45
    .line 46
    const-string v4, "rowid=?"

    .line 47
    .line 48
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    filled-new-array {v2}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/pro/l;->j:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    .line 69
    .line 70
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    :catchall_0
    :cond_1
    sget-object v0, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/j;->b()V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :catchall_1
    if-eqz v0, :cond_1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catch_0
    :try_start_2
    sget-object v1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    .line 87
    .line 88
    invoke-static {v1}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 89
    .line 90
    .line 91
    if-eqz v0, :cond_1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :goto_2
    return-void

    .line 95
    :catchall_2
    move-exception v1

    .line 96
    if-eqz v0, :cond_2

    .line 97
    .line 98
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 99
    .line 100
    .line 101
    :catchall_3
    :cond_2
    sget-object v0, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/j;->b()V

    .line 108
    .line 109
    .line 110
    throw v1
.end method

.method public i()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/umeng/analytics/pro/j;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 13
    .line 14
    .line 15
    const-string v1, "delete from __er"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    .line 22
    .line 23
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    :catchall_0
    :cond_0
    sget-object v0, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/j;->b()V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catchall_1
    if-eqz v0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    :try_start_2
    sget-object v1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {v1}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 42
    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :goto_1
    return-void

    .line 48
    :catchall_2
    move-exception v1

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 52
    .line 53
    .line 54
    :catchall_3
    :cond_1
    sget-object v0, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/j;->b()V

    .line 61
    .line 62
    .line 63
    throw v1
.end method

.method public j()V
    .locals 5

    .line 1
    const-string v0, "__i=?"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/umeng/analytics/pro/l;->k:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/umeng/analytics/pro/j;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    .line 20
    .line 21
    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 23
    .line 24
    .line 25
    const-string v3, "__er"

    .line 26
    .line 27
    iget-object v4, p0, Lcom/umeng/analytics/pro/l;->k:Ljava/lang/String;

    .line 28
    .line 29
    filled-new-array {v4}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v1, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const-string v3, "__et"

    .line 37
    .line 38
    iget-object v4, p0, Lcom/umeng/analytics/pro/l;->k:Ljava/lang/String;

    .line 39
    .line 40
    filled-new-array {v4}, [Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v1, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 48
    .line 49
    .line 50
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    .line 52
    .line 53
    :catchall_0
    :cond_0
    sget-object v0, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/umeng/analytics/pro/j;->b()V

    .line 60
    .line 61
    .line 62
    goto :goto_3

    .line 63
    :catchall_1
    move-object v1, v2

    .line 64
    goto :goto_1

    .line 65
    :catch_0
    move-object v1, v2

    .line 66
    goto :goto_2

    .line 67
    :catchall_2
    :goto_1
    if-eqz v1, :cond_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_1
    :goto_2
    :try_start_3
    sget-object v0, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 73
    .line 74
    .line 75
    if-eqz v1, :cond_0

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_3
    move-exception v0

    .line 79
    if-eqz v1, :cond_1

    .line 80
    .line 81
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 82
    .line 83
    .line 84
    :catchall_4
    :cond_1
    sget-object v1, Lcom/umeng/analytics/pro/l;->d:Landroid/content/Context;

    .line 85
    .line 86
    invoke-static {v1}, Lcom/umeng/analytics/pro/j;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/j;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/umeng/analytics/pro/j;->b()V

    .line 91
    .line 92
    .line 93
    throw v0

    .line 94
    :cond_2
    :goto_3
    iput-object v2, p0, Lcom/umeng/analytics/pro/l;->k:Ljava/lang/String;

    .line 95
    .line 96
    return-void
.end method
