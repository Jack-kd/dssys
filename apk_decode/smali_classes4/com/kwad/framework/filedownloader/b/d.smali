.class public final Lcom/kwad/framework/filedownloader/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/framework/filedownloader/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/framework/filedownloader/b/d$b;,
        Lcom/kwad/framework/filedownloader/b/d$a;
    }
.end annotation


# static fields
.field private static aAF:Z = false


# instance fields
.field private final aAG:Lcom/kwad/framework/filedownloader/b/e;

.field private aAH:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/kwad/framework/filedownloader/b/e;

    .line 5
    .line 6
    invoke-static {}, Lcom/kwad/framework/filedownloader/f/c;->Dx()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Lcom/kwad/framework/filedownloader/b/e;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/b/d;->aAG:Lcom/kwad/framework/filedownloader/b/e;

    .line 14
    .line 15
    return-void
.end method

.method private BT()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/b/d;->aAH:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/b/d;->aAG:Lcom/kwad/framework/filedownloader/b/e;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/b/d;->aAH:Landroid/database/sqlite/SQLiteDatabase;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/b/d;->aAH:Landroid/database/sqlite/SQLiteDatabase;

    .line 14
    .line 15
    return-object v0
.end method

.method public static synthetic a(Lcom/kwad/framework/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/b/d;->BT()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method private a(ILandroid/content/ContentValues;)V
    .locals 4

    .line 35
    :try_start_0
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/b/d;->BT()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "ksad_file_download"

    const-string v2, "_id = ? "

    .line 36
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_1

    .line 38
    :goto_0
    invoke-static {p1}, Lcom/kwad/framework/filedownloader/b/d;->printStackTrace(Ljava/lang/Throwable;)V

    return-void

    .line 39
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/database/sqlite/SQLiteException;)V

    return-void
.end method

.method private a(ILandroid/database/sqlite/SQLiteException;)V
    .locals 1
    .param p2    # Landroid/database/sqlite/SQLiteException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    instance-of v0, p2, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 42
    invoke-virtual {p0, p1}, Lcom/kwad/framework/filedownloader/b/d;->cF(I)Z

    .line 43
    invoke-virtual {p0, p1}, Lcom/kwad/framework/filedownloader/b/d;->cE(I)V

    .line 44
    :cond_0
    invoke-static {p2}, Lcom/kwad/framework/filedownloader/b/d;->o(Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 45
    sput-boolean p1, Lcom/kwad/framework/filedownloader/b/d;->aAF:Z

    return-void

    .line 46
    :cond_1
    invoke-static {p2}, Lcom/kwad/framework/filedownloader/b/d;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteException;)V
    .locals 1

    const/4 v0, -0x1

    .line 40
    invoke-direct {p0, v0, p1}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/database/sqlite/SQLiteException;)V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/framework/filedownloader/b/d;Landroid/database/sqlite/SQLiteException;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/b/d;->a(Landroid/database/sqlite/SQLiteException;)V

    return-void
.end method

.method private static d(Landroid/database/Cursor;)Lcom/kwad/framework/filedownloader/d/c;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .line 10
    new-instance v0, Lcom/kwad/framework/filedownloader/d/c;

    invoke-direct {v0}, Lcom/kwad/framework/filedownloader/d/c;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 11
    :cond_0
    const-string v1, "_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kwad/framework/filedownloader/d/c;->setId(I)V

    .line 12
    const-string v1, "url"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/framework/filedownloader/d/c;->setUrl(Ljava/lang/String;)V

    .line 13
    const-string v1, "path"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pathAsDirectory"

    .line 14
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 15
    :goto_0
    invoke-virtual {v0, v1, v3}, Lcom/kwad/framework/filedownloader/d/c;->d(Ljava/lang/String;Z)V

    .line 16
    const-string v1, "status"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/kwad/framework/filedownloader/d/c;->d(B)V

    .line 17
    const-string v1, "sofar"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/kwad/framework/filedownloader/d/c;->af(J)V

    .line 18
    const-string v1, "total"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/kwad/framework/filedownloader/d/c;->ah(J)V

    .line 19
    const-string v1, "errMsg"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/framework/filedownloader/d/c;->ch(Ljava/lang/String;)V

    .line 20
    const-string v1, "etag"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/framework/filedownloader/d/c;->cg(Ljava/lang/String;)V

    .line 21
    const-string v1, "filename"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/framework/filedownloader/d/c;->ci(Ljava/lang/String;)V

    .line 22
    const-string v1, "connectionCount"

    .line 23
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .line 24
    invoke-virtual {v0, p0}, Lcom/kwad/framework/filedownloader/d/c;->cV(I)V

    return-object v0
.end method

.method private d(Lcom/kwad/framework/filedownloader/d/c;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/b/d;->BT()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "ksad_file_download"

    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->CV()Landroid/content/ContentValues;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    .line 2
    :goto_0
    invoke-static {p1}, Lcom/kwad/framework/filedownloader/b/d;->printStackTrace(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/kwad/framework/filedownloader/d/c;->ch(Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 4
    invoke-virtual {p1, v1}, Lcom/kwad/framework/filedownloader/d/c;->d(B)V

    .line 5
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/database/sqlite/SQLiteException;)V

    return-void
.end method

.method public static synthetic e(Landroid/database/Cursor;)Lcom/kwad/framework/filedownloader/d/c;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kwad/framework/filedownloader/b/d;->d(Landroid/database/Cursor;)Lcom/kwad/framework/filedownloader/d/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static o(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static synthetic p(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kwad/framework/filedownloader/b/d;->printStackTrace(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static printStackTrace(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kwad/framework/filedownloader/b/d;->o(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final BR()Lcom/kwad/framework/filedownloader/b/a$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/kwad/framework/filedownloader/b/d$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1, v1}, Lcom/kwad/framework/filedownloader/b/d$a;-><init>(Lcom/kwad/framework/filedownloader/b/d;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final a(Landroid/util/SparseArray;Landroid/util/SparseArray;)Lcom/kwad/framework/filedownloader/b/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/kwad/framework/filedownloader/d/c;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/kwad/framework/filedownloader/d/a;",
            ">;>;)",
            "Lcom/kwad/framework/filedownloader/b/a$a;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/kwad/framework/filedownloader/b/d$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/kwad/framework/filedownloader/b/d$a;-><init>(Lcom/kwad/framework/filedownloader/b/d;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public final a(IIJ)V
    .locals 3

    .line 6
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7
    const-string v1, "currentOffset"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 8
    :try_start_0
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/b/d;->BT()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const-string p4, "ksad_file_download_connection"

    const-string v1, "id = ? AND connectionIndex = ?"

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {v2, p2}, [Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-virtual {p3, p4, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_1

    .line 11
    :goto_0
    invoke-static {p1}, Lcom/kwad/framework/filedownloader/b/d;->printStackTrace(Ljava/lang/Throwable;)V

    return-void

    .line 12
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/database/sqlite/SQLiteException;)V

    return-void
.end method

.method public final a(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 19
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x2

    .line 20
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 21
    const-string v1, "total"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 22
    const-string p2, "etag"

    invoke-virtual {v0, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string p2, "filename"

    invoke-virtual {v0, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public final a(ILjava/lang/String;JJI)V
    .locals 2

    .line 13
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 14
    const-string v1, "sofar"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 15
    const-string p3, "total"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {v0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 16
    const-string p3, "etag"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string p2, "connectionCount"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public final a(ILjava/lang/Throwable;)V
    .locals 2

    .line 30
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 31
    const-string v1, "errMsg"

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x5

    .line 32
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    const-string v1, "status"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public final a(ILjava/lang/Throwable;J)V
    .locals 2

    .line 25
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 26
    const-string v1, "errMsg"

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, -0x1

    .line 27
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    const-string v1, "status"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 28
    const-string p2, "sofar"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public final a(Lcom/kwad/framework/filedownloader/d/a;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/b/d;->BT()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "ksad_file_download_connection"

    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/a;->CV()Landroid/content/ContentValues;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    .line 4
    :goto_0
    invoke-static {p1}, Lcom/kwad/framework/filedownloader/b/d;->printStackTrace(Ljava/lang/Throwable;)V

    return-void

    .line 5
    :goto_1
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/a;->getId()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/database/sqlite/SQLiteException;)V

    :cond_0
    return-void
.end method

.method public final b(IJ)V
    .locals 3

    .line 12
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x3

    .line 13
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 14
    const-string v1, "sofar"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public final b(Lcom/kwad/framework/filedownloader/d/c;)V
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "update but model == null!"

    invoke-static {p0, v0, p1}, Lcom/kwad/framework/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwad/framework/filedownloader/b/d;->cC(I)Lcom/kwad/framework/filedownloader/d/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->CV()Landroid/content/ContentValues;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/b/d;->BT()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "ksad_file_download"

    const-string v3, "_id = ? "

    .line 5
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    .line 7
    :goto_0
    invoke-static {p1}, Lcom/kwad/framework/filedownloader/b/d;->printStackTrace(Ljava/lang/Throwable;)V

    return-void

    .line 8
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/kwad/framework/filedownloader/d/c;->ch(Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 9
    invoke-virtual {p1, v1}, Lcom/kwad/framework/filedownloader/d/c;->d(B)V

    .line 10
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/database/sqlite/SQLiteException;)V

    return-void

    .line 11
    :cond_1
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/b/d;->d(Lcom/kwad/framework/filedownloader/d/c;)V

    return-void
.end method

.method public final c(IJ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kwad/framework/filedownloader/b/d;->cF(I)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final cB(I)V
    .locals 0

    return-void
.end method

.method public final cC(I)Lcom/kwad/framework/filedownloader/d/c;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/b/d;->BT()Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "SELECT * FROM %s WHERE %s = ?"

    .line 7
    .line 8
    const-string v3, "ksad_file_download"

    .line 9
    .line 10
    const-string v4, "_id"

    .line 11
    .line 12
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {v2, v3}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    filled-new-array {v3}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 29
    .line 30
    .line 31
    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-static {v1}, Lcom/kwad/framework/filedownloader/b/d;->d(Landroid/database/Cursor;)Lcom/kwad/framework/filedownloader/d/c;

    .line 39
    .line 40
    .line 41
    move-result-object p1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    invoke-static {v1}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 43
    .line 44
    .line 45
    return-object p1

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    move-object v0, v1

    .line 48
    goto :goto_4

    .line 49
    :catch_0
    move-exception p1

    .line 50
    goto :goto_1

    .line 51
    :catch_1
    move-exception v2

    .line 52
    goto :goto_2

    .line 53
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :catchall_1
    move-exception p1

    .line 58
    goto :goto_4

    .line 59
    :catch_2
    move-exception p1

    .line 60
    move-object v1, v0

    .line 61
    goto :goto_1

    .line 62
    :catch_3
    move-exception v2

    .line 63
    move-object v1, v0

    .line 64
    goto :goto_2

    .line 65
    :goto_1
    :try_start_2
    invoke-static {p1}, Lcom/kwad/framework/filedownloader/b/d;->printStackTrace(Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :goto_2
    invoke-direct {p0, p1, v2}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/database/sqlite/SQLiteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :goto_3
    return-object v0

    .line 74
    :goto_4
    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 75
    .line 76
    .line 77
    throw p1
.end method

.method public final cD(I)Ljava/util/List;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/kwad/framework/filedownloader/d/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/b/d;->BT()Landroid/database/sqlite/SQLiteDatabase;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "SELECT * FROM %s WHERE %s = ?"

    .line 12
    .line 13
    const-string v4, "ksad_file_download_connection"

    .line 14
    .line 15
    const-string v5, "id"

    .line 16
    .line 17
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-static {v3, v4}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    filled-new-array {v4}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    new-instance v2, Lcom/kwad/framework/filedownloader/d/a;

    .line 44
    .line 45
    invoke-direct {v2}, Lcom/kwad/framework/filedownloader/d/a;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p1}, Lcom/kwad/framework/filedownloader/d/a;->setId(I)V

    .line 49
    .line 50
    .line 51
    const-string v3, "connectionIndex"

    .line 52
    .line 53
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {v2, v3}, Lcom/kwad/framework/filedownloader/d/a;->setIndex(I)V

    .line 62
    .line 63
    .line 64
    const-string v3, "startOffset"

    .line 65
    .line 66
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 71
    .line 72
    .line 73
    move-result-wide v3

    .line 74
    invoke-virtual {v2, v3, v4}, Lcom/kwad/framework/filedownloader/d/a;->setStartOffset(J)V

    .line 75
    .line 76
    .line 77
    const-string v3, "currentOffset"

    .line 78
    .line 79
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 84
    .line 85
    .line 86
    move-result-wide v3

    .line 87
    invoke-virtual {v2, v3, v4}, Lcom/kwad/framework/filedownloader/d/a;->ad(J)V

    .line 88
    .line 89
    .line 90
    const-string v3, "endOffset"

    .line 91
    .line 92
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 97
    .line 98
    .line 99
    move-result-wide v3

    .line 100
    invoke-virtual {v2, v3, v4}, Lcom/kwad/framework/filedownloader/d/a;->ae(J)V

    .line 101
    .line 102
    .line 103
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception p1

    .line 108
    goto :goto_5

    .line 109
    :catch_0
    move-exception p1

    .line 110
    goto :goto_1

    .line 111
    :catch_1
    move-exception v2

    .line 112
    goto :goto_3

    .line 113
    :cond_0
    invoke-static {v1}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 114
    .line 115
    .line 116
    return-object v0

    .line 117
    :goto_1
    :try_start_1
    invoke-static {p1}, Lcom/kwad/framework/filedownloader/b/d;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .line 119
    .line 120
    :goto_2
    invoke-static {v1}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 121
    .line 122
    .line 123
    goto :goto_4

    .line 124
    :goto_3
    :try_start_2
    invoke-direct {p0, p1, v2}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/database/sqlite/SQLiteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :goto_4
    return-object v0

    .line 129
    :goto_5
    invoke-static {v1}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 130
    .line 131
    .line 132
    throw p1
.end method

.method public final cE(I)V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/b/d;->BT()Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "DELETE FROM ksad_file_download_connection WHERE id = "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    move-exception p1

    .line 24
    goto :goto_0

    .line 25
    :catch_1
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :goto_0
    invoke-static {p1}, Lcom/kwad/framework/filedownloader/b/d;->printStackTrace(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :goto_1
    invoke-static {p1}, Lcom/kwad/framework/filedownloader/b/d;->printStackTrace(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final cF(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/b/d;->BT()Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "ksad_file_download"

    .line 7
    .line 8
    const-string v3, "_id = ?"

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    filled-new-array {p1}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v1, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_0
    return v0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    goto :goto_0

    .line 29
    :catch_1
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :goto_0
    invoke-static {p1}, Lcom/kwad/framework/filedownloader/b/d;->printStackTrace(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    invoke-static {p1}, Lcom/kwad/framework/filedownloader/b/d;->printStackTrace(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :goto_2
    return v0
.end method

.method public final cG(I)V
    .locals 0

    return-void
.end method

.method public final clear()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/b/d;->BT()Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "ksad_file_download"

    .line 7
    .line 8
    invoke-virtual {v1, v2, v0, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v1

    .line 13
    invoke-direct {p0, v1}, Lcom/kwad/framework/filedownloader/b/d;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/b/d;->BT()Landroid/database/sqlite/SQLiteDatabase;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "ksad_file_download_connection"

    .line 21
    .line 22
    invoke-virtual {v1, v2, v0, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_1
    move-exception v0

    .line 27
    invoke-direct {p0, v0}, Lcom/kwad/framework/filedownloader/b/d;->a(Landroid/database/sqlite/SQLiteException;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final d(IJ)V
    .locals 3

    .line 6
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, -0x2

    .line 7
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 8
    const-string v1, "sofar"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public final w(II)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "connectionCount"

    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/b/d;->BT()Landroid/database/sqlite/SQLiteDatabase;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const-string v1, "ksad_file_download"

    .line 20
    .line 21
    const-string v2, "_id = ? "

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    filled-new-array {v3}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catch_0
    move-exception p1

    .line 36
    goto :goto_0

    .line 37
    :catch_1
    move-exception p2

    .line 38
    goto :goto_1

    .line 39
    :goto_0
    invoke-static {p1}, Lcom/kwad/framework/filedownloader/b/d;->printStackTrace(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/kwad/framework/filedownloader/b/d;->a(ILandroid/database/sqlite/SQLiteException;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
