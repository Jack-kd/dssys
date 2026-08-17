.class abstract Lcom/ubix/ssp/ad/core/monitor/data/c/a;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;

.field private final c:Ljava/io/File;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EventDataOperation"

    iput-object v0, p0, Lcom/ubix/ssp/ad/core/monitor/data/c/a;->a:Ljava/lang/String;

    new-instance v0, Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/core/monitor/data/c/a;->b:Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;

    iput-object p1, p0, Lcom/ubix/ssp/ad/core/monitor/data/c/a;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;->onCreate(Landroid/content/Context;)Z

    const-string v0, "ubix_sdk"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/core/monitor/data/c/a;->c:Ljava/io/File;

    return-void
.end method

.method private a(Landroid/content/Context;)J
    .locals 2

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/n;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/w/n;->i()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V

    const-wide/32 v0, 0x2000000

    return-wide v0
.end method

.method private a()Z
    .locals 6

    .line 6
    iget-object v0, p0, Lcom/ubix/ssp/ad/core/monitor/data/c/a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/core/monitor/data/c/a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v0, p0, Lcom/ubix/ssp/ad/core/monitor/data/c/a;->d:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/ubix/ssp/ad/core/monitor/data/c/a;->a(Landroid/content/Context;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method public a(Landroid/net/Uri;)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/ubix/ssp/ad/core/monitor/data/c/a;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/core/monitor/data/c/a;->a:Ljava/lang/String;

    const-string v2, "There is not enough space left on the device to store events, so will delete 100 oldest events"

    invoke-static {v0, v2}, Lcom/ubix/ssp/ad/e/w/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0}, Lcom/ubix/ssp/ad/core/monitor/data/c/a;->a(Landroid/net/Uri;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x2

    if-nez v0, :cond_0

    return v2

    :cond_0
    aget-object v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/ubix/ssp/ad/core/monitor/data/c/a;->a(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/core/monitor/data/c/a;->b(Landroid/net/Uri;)I

    move-result p1

    if-gtz p1, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public abstract a(Landroid/net/Uri;Lorg/json/JSONObject;)I
.end method

.method public a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .line 2
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/ubix/ssp/ad/core/monitor/data/c/a;->b:Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_1

    :goto_0
    :try_start_1
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p1, 0x0

    return p1

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 4
    const-string v0, "\t"

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-le v1, v3, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    return-object v2

    :cond_3
    return-object p1

    :goto_1
    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V

    return-object p1
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 5
    :try_start_0
    const-string v0, "DB_DELETE_ALL"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/ubix/ssp/ad/core/monitor/data/c/a;->b:Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, v0}, Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/core/monitor/data/c/a;->b:Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "_id <= ?"

    :try_start_1
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lcom/ubix/ssp/ad/core/monitor/data/UbixDataContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_0
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public abstract a(Landroid/net/Uri;I)[Ljava/lang/String;
.end method

.method public b(Landroid/net/Uri;)I
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ubix/ssp/ad/core/monitor/data/c/a;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
