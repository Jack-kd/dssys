.class public Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/content/UriMatcher;


# instance fields
.field private b:Lcom/ubix/ssp/ad/core/monitor/data/a;

.field private c:Lcom/ubix/ssp/ad/core/monitor/data/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;->a:Landroid/content/UriMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;->b:Lcom/ubix/ssp/ad/core/monitor/data/a;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    array-length v2, p2

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p2, v0

    invoke-virtual {p0, p1, v3}, Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v2

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_1
    throw p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;->c:Lcom/ubix/ssp/ad/core/monitor/data/b;

    invoke-virtual {p1, p2, p3}, Lcom/ubix/ssp/ad/core/monitor/data/b;->a(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return v0

    :goto_0
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    sget-object v0, Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;->c:Lcom/ubix/ssp/ad/core/monitor/data/b;

    invoke-virtual {v0, p1, p2}, Lcom/ubix/ssp/ad/core/monitor/data/b;->b(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p2

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;->c:Lcom/ubix/ssp/ad/core/monitor/data/b;

    invoke-virtual {v0, p1, p2}, Lcom/ubix/ssp/ad/core/monitor/data/b;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v1, p0, Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;->c:Lcom/ubix/ssp/ad/core/monitor/data/b;

    invoke-virtual {v1, v0, p1, p2}, Lcom/ubix/ssp/ad/core/monitor/data/b;->a(ILandroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    invoke-static {p2}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V

    :cond_3
    :goto_1
    return-object p1
.end method

.method public onCreate(Landroid/content/Context;)Z
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/ubix/ssp/ad/core/monitor/data/a;

    invoke-direct {v0, p1}, Lcom/ubix/ssp/ad/core/monitor/data/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;->b:Lcom/ubix/ssp/ad/core/monitor/data/a;

    new-instance v1, Lcom/ubix/ssp/ad/core/monitor/data/b;

    invoke-direct {v1, p1, v0}, Lcom/ubix/ssp/ad/core/monitor/data/b;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;->c:Lcom/ubix/ssp/ad/core/monitor/data/b;

    sget-object v0, Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;->a:Landroid/content/UriMatcher;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".UbixDataContentProvider"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/ubix/ssp/ad/core/monitor/data/b;->a(Landroid/content/UriMatcher;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    :try_start_0
    sget-object v0, Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;->c:Lcom/ubix/ssp/ad/core/monitor/data/b;

    const-string v2, "events"

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/ubix/ssp/ad/core/monitor/data/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_0
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    const/16 p2, 0x8

    if-ne p1, p2, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;->c:Lcom/ubix/ssp/ad/core/monitor/data/b;

    const-string v1, "t_channel"

    invoke-virtual/range {v0 .. v5}, Lcom/ubix/ssp/ad/core/monitor/data/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p2, p0, Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;->c:Lcom/ubix/ssp/ad/core/monitor/data/b;

    invoke-virtual {p2, p1}, Lcom/ubix/ssp/ad/core/monitor/data/b;->a(I)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
