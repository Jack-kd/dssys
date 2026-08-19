.class public Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static final a:Ljava/lang/Long;

.field private static final b:[B

.field private static volatile c:Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;


# instance fields
.field private d:Landroid/content/SharedPreferences;

.field private e:Landroid/content/SharedPreferences;

.field private f:Landroid/content/SharedPreferences;

.field private final g:[B

.field private final h:[B

.field private final i:[B

.field private j:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x1d4c0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->a:Ljava/lang/Long;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->b:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->d:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->e:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->f:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->g:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->h:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->i:[B

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->j:Landroid/content/Context;

    invoke-static {p1}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/f;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "identifier_sp_story_book_file"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->d:Landroid/content/SharedPreferences;

    const-string v0, "identifier_hiad_sp_bed_rock_file"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->e:Landroid/content/SharedPreferences;

    const-string v0, "identifier_hiad_sp_red_stone_file"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->f:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;
    .locals 2

    .line 1
    sget-object v0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->c:Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;

    if-nez v0, :cond_1

    sget-object v0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->b:[B

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->c:Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->c:Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->c:Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    sget-object p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->c:Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->h:[B

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->f:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    :try_start_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const-string v2, "read_first_chapter"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->j:Landroid/content/Context;

    invoke-static {v2}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e;->f(Landroid/content/Context;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e;->c(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->h:[B

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->f:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e;->f(Landroid/content/Context;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->f:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "read_first_chapter"

    :try_start_1
    invoke-static {p1, v1}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e;->d(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->i:[B

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->d:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "read_first_chapter_time"

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->g:[B

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->e:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "get_a_book"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->i:[B

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->d:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "catch_a_cat"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()Z
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->i:[B

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->d:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    const-string v3, "read_first_chapter_time"

    const-wide/16 v4, -0x1

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->i:[B

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->d:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "has_read_first_chapter"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->i:[B

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "read_second_chapter"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e()Z
    .locals 4

    iget-object v0, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->i:[B

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->d:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "has_read_first_chapter"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->g:[B

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->e:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "get_a_book"

    :try_start_1
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public g()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->i:[B

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->d:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    const-string v3, "catch_a_cat"

    :try_start_1
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e;->d()[B

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e;->d([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->c(Ljava/lang/String;)V

    :cond_1
    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public h()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->i:[B

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/core/util/myoaid/impl/huawei/e$b;->d:Landroid/content/SharedPreferences;

    const-string v2, "read_second_chapter"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
