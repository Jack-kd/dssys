.class public Lcom/ubix/ssp/ad/core/monitor/data/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "events"

    const-string v1, "data"

    const-string v2, "created_at"

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "CREATE TABLE %s (_id INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT NOT NULL, %s INTEGER NOT NULL);"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ubix/ssp/ad/core/monitor/data/a;->a:Ljava/lang/String;

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "CREATE INDEX IF NOT EXISTS time_idx ON %s (%s);"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ubix/ssp/ad/core/monitor/data/a;->b:Ljava/lang/String;

    const-string v0, "event_name"

    const-string v1, "result"

    const-string v2, "t_channel"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "CREATE TABLE %s (%s TEXT PRIMARY KEY, %s INTEGER)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ubix/ssp/ad/core/monitor/data/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "ubix_sdk"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "----.SQLiteOpenHelper"

    const-string v1, "Creating a new UbixDataDBHelper Analytics DB"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/w/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ubix/ssp/ad/core/monitor/data/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
