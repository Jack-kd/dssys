.class public abstract Lcom/sigmob/sdk/base/m;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/base/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/sigmob/sdk/base/h;

.field private c:I

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field protected h:Lcom/czhj/sdk/common/models/AdStatus;

.field protected i:I

.field protected j:I

.field protected k:I

.field protected l:Lcom/sigmob/windad/WindAdRequest;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/m;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/windad/WindAdRequest;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusNone:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/base/m;->i:I

    iput v0, p0, Lcom/sigmob/sdk/base/m;->j:I

    iput v0, p0, Lcom/sigmob/sdk/base/m;->k:I

    iput v0, p0, Lcom/sigmob/sdk/base/m;->c:I

    iput v0, p0, Lcom/sigmob/sdk/base/m;->f:I

    const-string v0, "CNY"

    iput-object v0, p0, Lcom/sigmob/sdk/base/m;->m:Ljava/lang/String;

    iput-object p1, p0, Lcom/sigmob/sdk/base/m;->l:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {p1, p2}, Lcom/sigmob/windad/WindAdRequest;->setHalfInterstitial(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/sigmob/sdk/base/h;
    .locals 4

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/h;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/h;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/base/db/a;->a()Lcom/sigmob/sdk/base/db/a;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "select error_code, count(*) as num from adload_event where adslot_id = ? group by adslot_id"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/base/m;->a(Lcom/sigmob/sdk/base/h;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw p1
.end method

.method private a()V
    .locals 1

    .line 3
    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/base/m;->i:I

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/m;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->a:Lcom/sigmob/sdk/base/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/h;->a()V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/h;Landroid/database/Cursor;)V
    .locals 3

    .line 5
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "error_code"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "num"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :cond_0
    if-eqz v0, :cond_1

    iput v1, p1, Lcom/sigmob/sdk/base/h;->a:I

    :cond_1
    iget v2, p1, Lcom/sigmob/sdk/base/h;->b:I

    add-int/2addr v2, v1

    iput v2, p1, Lcom/sigmob/sdk/base/h;->b:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iput v1, p1, Lcom/sigmob/sdk/base/h;->d:I

    goto :goto_0

    :sswitch_1
    iput v1, p1, Lcom/sigmob/sdk/base/h;->h:I

    goto :goto_0

    :sswitch_2
    iput v1, p1, Lcom/sigmob/sdk/base/h;->c:I

    goto :goto_0

    :sswitch_3
    iput v1, p1, Lcom/sigmob/sdk/base/h;->e:I

    goto :goto_0

    :sswitch_4
    iput v1, p1, Lcom/sigmob/sdk/base/h;->g:I

    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x92888 -> :sswitch_4
        0x92889 -> :sswitch_4
        0x9288b -> :sswitch_4
        0x9288c -> :sswitch_4
        0x92b44 -> :sswitch_3
        0x92b49 -> :sswitch_2
        0x94edc -> :sswitch_1
        0x94edd -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/m;Ljava/lang/String;Lcom/sigmob/sdk/base/common/z;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/m;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/z;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 6

    .line 6
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/base/db/a;->a()Lcom/sigmob/sdk/base/db/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Lcom/czhj/sdk/common/Database/SQLiteBuider$Insert$Builder;

    invoke-direct {v1}, Lcom/czhj/sdk/common/Database/SQLiteBuider$Insert$Builder;-><init>()V

    const-string v2, "adload_event"

    invoke-virtual {v1, v2}, Lcom/czhj/sdk/common/Database/SQLiteBuider$Insert$Builder;->setTableName(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "adslot_id"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "error_code"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/czhj/sdk/common/Database/SQLiteBuider$Insert$Builder;->setColumnValues(Ljava/util/Map;)V

    invoke-static {}, Lcom/sigmob/sdk/base/db/a;->a()Lcom/sigmob/sdk/base/db/a;

    move-result-object v2

    invoke-virtual {v1}, Lcom/czhj/sdk/common/Database/SQLiteBuider$Insert$Builder;->build()Lcom/czhj/sdk/common/Database/SQLiteBuider$Insert;

    move-result-object v1

    new-instance v3, Lcom/sigmob/sdk/base/m$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/sigmob/sdk/base/m$1;-><init>(Lcom/sigmob/sdk/base/m;Ljava/lang/String;I)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/sigmob/sdk/base/db/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/czhj/sdk/common/Database/SQLiteBuider$Insert;Lcom/sigmob/sdk/base/db/a$a;)V
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

.method private synthetic a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/z;Ljava/lang/Object;)V
    .locals 3

    .line 7
    instance-of v0, p3, Lcom/sigmob/sdk/base/mta/PointEntitySigmobRequest;

    if-eqz v0, :cond_5

    check-cast p3, Lcom/sigmob/sdk/base/mta/PointEntitySigmobRequest;

    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->a:Lcom/sigmob/sdk/base/h;

    iget v0, v0, Lcom/sigmob/sdk/base/h;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmobRequest;->setLoad_count(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->a:Lcom/sigmob/sdk/base/h;

    iget v0, v0, Lcom/sigmob/sdk/base/h;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmobRequest;->setInvalid_load_count(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->a:Lcom/sigmob/sdk/base/h;

    iget v0, v0, Lcom/sigmob/sdk/base/h;->c:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmobRequest;->setGdpr_filters(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->a:Lcom/sigmob/sdk/base/h;

    iget v0, v0, Lcom/sigmob/sdk/base/h;->d:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmobRequest;->setInterval_filters(Ljava/lang/String;)V

    iget v0, p0, Lcom/sigmob/sdk/base/m;->i:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmobRequest;->setPldempty_filters(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->a:Lcom/sigmob/sdk/base/h;

    iget v0, v0, Lcom/sigmob/sdk/base/h;->e:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmobRequest;->setInit_filters(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->a:Lcom/sigmob/sdk/base/h;

    iget v0, v0, Lcom/sigmob/sdk/base/h;->h:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmobRequest;->setLoading_filters(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->a:Lcom/sigmob/sdk/base/h;

    iget v0, v0, Lcom/sigmob/sdk/base/h;->g:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmobRequest;->setProguard_filters(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setAdx_id(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->e:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setBid_token(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3, p1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setTrace_id(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p3}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p1

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p2, Lcom/sigmob/sdk/base/common/z;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "feed_pre_request_count"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p2, Lcom/sigmob/sdk/base/common/z;->b:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "feed_pre_ready_count"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/i;->d()Z

    move-result p2

    const-string v0, "1"

    const-string v1, "0"

    if-eqz p2, :cond_3

    move-object p2, v1

    goto :goto_0

    :cond_3
    move-object p2, v0

    :goto_0
    const-string v2, "is_minor"

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/i;->e()Z

    move-result p2

    if-eqz p2, :cond_4

    move-object v0, v1

    :cond_4
    const-string p2, "is_unpersonalized"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/sigmob/sdk/base/m;->a:Lcom/sigmob/sdk/base/h;

    iget p2, p2, Lcom/sigmob/sdk/base/h;->f:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "personalized_filters"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/sigmob/sdk/base/j;->c:Lcom/sigmob/sdk/base/j;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/j;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "request_scene_type"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setOptions(Ljava/util/Map;)V

    :cond_5
    invoke-direct {p0}, Lcom/sigmob/sdk/base/m;->a()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/base/db/a;->a()Lcom/sigmob/sdk/base/db/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "adload_event"

    const-string v2, "adslot_id=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
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


# virtual methods
.method public a(Lcom/sigmob/sdk/base/common/z;Ljava/lang/String;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->l:Lcom/sigmob/windad/WindAdRequest;

    new-instance v1, Lcom/sigmob/sdk/base/q;

    invoke-direct {v1, p0, p2, p1}, Lcom/sigmob/sdk/base/q;-><init>(Lcom/sigmob/sdk/base/m;Ljava/lang/String;Lcom/sigmob/sdk/base/common/z;)V

    const-string p1, "request"

    const-string p2, "init"

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public abstract a(Lcom/sigmob/windad/WindAdError;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public a(Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/sigmob/sdk/base/m;->d:Z

    return-void
.end method

.method public abstract b()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c()Lcom/sigmob/sdk/manager/b;
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->l:Lcom/sigmob/windad/WindAdRequest;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->l:Lcom/sigmob/windad/WindAdRequest;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 4

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->c()Lcom/sigmob/sdk/manager/b;

    move-result-object v1

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    sget-object v3, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusReady:Lcom/czhj/sdk/common/models/AdStatus;

    if-ne v0, v3, :cond_1

    invoke-virtual {v1}, Lcom/sigmob/sdk/manager/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v2
.end method

.method public g()Z
    .locals 6

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sigmob/sdk/base/m;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/sdk/base/m;->j:I

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_START:Lcom/sigmob/windad/WindAdError;

    const-string v2, "WindAds not start"

    :goto_0
    invoke-static {v2}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    invoke-static {v1}, Lcom/sigmob/sdk/b;->a(Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->l:Lcom/sigmob/windad/WindAdRequest;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object v0, Lcom/sigmob/sdk/base/m;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/sdk/base/h;

    iput-object v2, p0, Lcom/sigmob/sdk/base/m;->a:Lcom/sigmob/sdk/base/h;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sigmob/sdk/base/m;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/h;

    move-result-object v2

    iput-object v2, p0, Lcom/sigmob/sdk/base/m;->a:Lcom/sigmob/sdk/base/h;

    iget v3, p0, Lcom/sigmob/sdk/base/m;->j:I

    iput v3, v2, Lcom/sigmob/sdk/base/h;->e:I

    iget-object v2, p0, Lcom/sigmob/sdk/base/m;->a:Lcom/sigmob/sdk/base/h;

    iget v3, p0, Lcom/sigmob/sdk/base/m;->f:I

    iput v3, v2, Lcom/sigmob/sdk/base/h;->f:I

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/base/m;->a:Lcom/sigmob/sdk/base/h;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-boolean v0, p0, Lcom/sigmob/sdk/base/m;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->a:Lcom/sigmob/sdk/base/h;

    iget v2, v0, Lcom/sigmob/sdk/base/h;->i:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/sigmob/sdk/base/h;->i:I

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_BID_TOKEN_IS_EMPTY:Lcom/sigmob/windad/WindAdError;

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    sget-object v2, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusReady:Lcom/czhj/sdk/common/models/AdStatus;

    if-eq v0, v2, :cond_7

    sget-object v2, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/czhj/sdk/common/models/AdStatus;

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->a:Lcom/sigmob/sdk/base/h;

    iget v2, v0, Lcom/sigmob/sdk/base/h;->h:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/sigmob/sdk/base/h;->h:I

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_AD_LOAD_FAIL_LOADING:Lcom/sigmob/windad/WindAdError;

    goto/16 :goto_2

    :cond_4
    invoke-static {}, Lcom/sigmob/sdk/Sigmob;->getInstance()Lcom/sigmob/sdk/Sigmob;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/Sigmob;->getSigMobError()Lcom/sigmob/windad/WindAdError;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/sigmob/sdk/Sigmob;->getInstance()Lcom/sigmob/sdk/Sigmob;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/Sigmob;->getSigMobError()Lcom/sigmob/windad/WindAdError;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/base/m;->a:Lcom/sigmob/sdk/base/h;

    iget v3, v2, Lcom/sigmob/sdk/base/h;->g:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/sigmob/sdk/base/h;->g:I

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/i;->i()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "User GDPR Consent Status is denied"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_GDPR_DENIED:Lcom/sigmob/windad/WindAdError;

    iget-object v2, p0, Lcom/sigmob/sdk/base/m;->a:Lcom/sigmob/sdk/base/h;

    iget v3, v2, Lcom/sigmob/sdk/base/h;->c:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/sigmob/sdk/base/h;->c:I

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/o;->O()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_7

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/o;->O()J

    move-result-wide v2

    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->a:Lcom/sigmob/sdk/base/h;

    iget-wide v4, v0, Lcom/sigmob/sdk/base/h;->j:J

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_7

    const-string v0, "load interval Time error"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->a:Lcom/sigmob/sdk/base/h;

    iget v2, v0, Lcom/sigmob/sdk/base/h;->d:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/sigmob/sdk/base/h;->d:I

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_AD_LOAD_FAIL_INTERVAL:Lcom/sigmob/windad/WindAdError;

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    :goto_1
    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_PLACEMENTID_EMPTY:Lcom/sigmob/windad/WindAdError;

    iget v2, p0, Lcom/sigmob/sdk/base/m;->i:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sigmob/sdk/base/m;->i:I

    const-string v2, "PlacementId with WindAdRequest can\'t is null"

    goto/16 :goto_0

    :goto_2
    iget-object v2, p0, Lcom/sigmob/sdk/base/m;->a:Lcom/sigmob/sdk/base/h;

    const/4 v3, 0x0

    if-nez v2, :cond_9

    iget v2, p0, Lcom/sigmob/sdk/base/m;->k:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sigmob/sdk/base/m;->k:I

    goto :goto_3

    :cond_9
    iget v4, v2, Lcom/sigmob/sdk/base/h;->b:I

    iget v5, p0, Lcom/sigmob/sdk/base/m;->k:I

    add-int/2addr v5, v1

    add-int/2addr v4, v5

    iput v4, v2, Lcom/sigmob/sdk/base/h;->b:I

    iput v3, p0, Lcom/sigmob/sdk/base/m;->k:I

    :goto_3
    if-eqz v0, :cond_b

    iget-object v2, p0, Lcom/sigmob/sdk/base/m;->a:Lcom/sigmob/sdk/base/h;

    if-nez v2, :cond_a

    iget v2, p0, Lcom/sigmob/sdk/base/m;->c:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sigmob/sdk/base/m;->c:I

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/sigmob/sdk/base/m;->a(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/m;->a:Lcom/sigmob/sdk/base/h;

    iget v4, v2, Lcom/sigmob/sdk/base/h;->a:I

    iget v5, p0, Lcom/sigmob/sdk/base/m;->c:I

    add-int/2addr v5, v1

    add-int/2addr v4, v5

    iput v4, v2, Lcom/sigmob/sdk/base/h;->a:I

    iput v3, p0, Lcom/sigmob/sdk/base/m;->c:I

    :goto_4
    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/m;->a(Lcom/sigmob/windad/WindAdError;)V

    return v3

    :cond_b
    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->l:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdRequest;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/common/ClientMetadata;->setUserId(Ljava/lang/String;)V

    return v1
.end method

.method public getBidFloor()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/base/m;->g:I

    return v0
.end method

.method public getBid_token()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->e:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getCurrency()Ljava/lang/String;
.end method

.method public abstract getEcpm()Ljava/lang/String;
.end method

.method public getSaasOptions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->c()Lcom/sigmob/sdk/manager/b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/manager/b;->i()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sigmob/sdk/manager/b;->e()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    if-nez v2, :cond_1

    move-object v2, v0

    :cond_1
    if-nez v2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSaasOptions()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getWindAdMetaData()Lcom/sigmob/sdk/base/models/WindAdMetaData;
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->c()Lcom/sigmob/sdk/manager/b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/manager/b;->i()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/manager/b;->e()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    :cond_1
    invoke-static {v1}, Lcom/sigmob/sdk/base/models/WindAdMetaData;->create(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/models/WindAdMetaData;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->m:Ljava/lang/String;

    return-object v0
.end method

.method public loadAd()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/m;->d:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sigmob/sdk/base/m;->e:Ljava/lang/String;

    return v0
.end method

.method public loadAd(Ljava/lang/String;)Z
    .locals 2

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/m;->d:Z

    iput-object p1, p0, Lcom/sigmob/sdk/base/m;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAd: bidToken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public sendLossNotificationWithInfo(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ADN_ID"

    const-string v1, "LOSS_REASON"

    const-string v2, "CURRENCY"

    const-string v3, "AUCTION_PRICE"

    :try_start_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->b()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    iget-object v7, v7, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;->lose_url:Ljava/lang/String;

    invoke-static {v7}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Map;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    const-string v8, "_PUBLISHERPRICE_"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/sigmob/sdk/base/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "__AUCTION_PRICE__"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_4
    :goto_1
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "__CURRENCY__"

    const-string v10, "_CURRENCY_"

    if-eqz v8, :cond_5

    :try_start_1
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v10, v8}, Lcom/sigmob/sdk/base/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_5
    iget-object v8, p0, Lcom/sigmob/sdk/base/m;->m:Ljava/lang/String;

    invoke-virtual {p0, v10, v8}, Lcom/sigmob/sdk/base/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sigmob/sdk/base/m;->m:Ljava/lang/String;

    goto :goto_2

    :goto_3
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_6

    const-string v8, "_BIDLOSSCODE_"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    :cond_6
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7

    const-string v8, "_WINADNID_"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    :cond_7
    const-string v8, "lose"

    iget-object v9, p0, Lcom/sigmob/sdk/base/m;->l:Lcom/sigmob/windad/WindAdRequest;

    invoke-static {v7, v8, v9, v6}, Lcom/sigmob/sdk/base/network/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_8
    :goto_4
    return-void

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public sendWinNotificationWithInfo(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CURRENCY"

    const-string v1, "HIGHEST_LOSS_PRICE"

    const-string v2, "AUCTION_PRICE"

    :try_start_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->b()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    iget-object v6, v6, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;->win_url:Ljava/lang/String;

    invoke-static {v6}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Map;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    const-string v7, "_PUBLISHERPRICE_"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/sigmob/sdk/base/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "__AUCTION_PRICE__"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_4
    :goto_1
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    const-string v7, "_HIGHESTLOSSPRICE_"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/sigmob/sdk/base/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "__HIGHEST_LOSS_PRICE__"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    :cond_5
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "__CURRENCY__"

    const-string v9, "_CURRENCY_"

    if-eqz v7, :cond_6

    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v9, v7}, Lcom/sigmob/sdk/base/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_6
    iget-object v7, p0, Lcom/sigmob/sdk/base/m;->m:Ljava/lang/String;

    invoke-virtual {p0, v9, v7}, Lcom/sigmob/sdk/base/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sigmob/sdk/base/m;->m:Ljava/lang/String;

    goto :goto_2

    :cond_7
    :goto_3
    const-string v7, "win"

    iget-object v8, p0, Lcom/sigmob/sdk/base/m;->l:Lcom/sigmob/windad/WindAdRequest;

    invoke-static {v6, v7, v8, v5}, Lcom/sigmob/sdk/base/network/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_8
    :goto_4
    return-void

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setBidEcpm(I)V
    .locals 1

    const-string v0, "_PUBLISHERPRICE_"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sigmob/sdk/base/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBidFloor(I)V
    .locals 1

    iput p1, p0, Lcom/sigmob/sdk/base/m;->g:I

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->c()Lcom/sigmob/sdk/manager/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/manager/b;->d(Ljava/lang/Integer;)V

    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/sigmob/sdk/base/m;->m:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->c()Lcom/sigmob/sdk/manager/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/manager/b;->a(Ljava/lang/String;)V

    return-void
.end method
