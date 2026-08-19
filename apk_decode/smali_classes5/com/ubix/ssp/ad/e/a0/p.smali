.class public Lcom/ubix/ssp/ad/e/a0/p;
.super Ljava/lang/Object;


# static fields
.field private static a:[Ljava/lang/String; = null

.field private static b:[Ljava/lang/String; = null

.field public static c:Z = false

.field public static d:I = -0x1

.field public static e:J = 0x927c0L

.field public static f:Z = false

.field public static g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ubix/ssp/ad/e/y/a/g$c;",
            ">;"
        }
    .end annotation
.end field

.field public static h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ubix/ssp/ad/e/y/a/g$c;",
            ">;"
        }
    .end annotation
.end field

.field public static i:J

.field private static j:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ubix/ssp/ad/e/a0/p;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ubix/ssp/ad/e/a0/p;->h:Ljava/util/List;

    const-wide/32 v0, 0x927c0

    sput-wide v0, Lcom/ubix/ssp/ad/e/a0/p;->i:J

    const/4 v0, 0x0

    sput-object v0, Lcom/ubix/ssp/ad/e/a0/p;->j:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([Lcom/ubix/ssp/ad/e/y/a/g$c;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/ubix/ssp/ad/e/y/a/g$c;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    array-length v3, p0

    if-lez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_1

    aget-object v4, p0, v3

    iget-object v5, v4, Lcom/ubix/ssp/ad/e/y/a/g$c;->c:Ljava/lang/String;

    invoke-static {v5}, Lcom/ubix/ssp/ad/e/a0/p;->b(Ljava/lang/String;)Z

    move-result v5

    const-string v6, ""

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/y/a/g$c;->d:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, Lcom/ubix/ssp/ad/e/y/a/g$c;->e:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "positive"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "negative"

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic a()V
    .locals 0

    .line 2
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/p;->b()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 3
    :try_start_0
    sget v0, Lcom/ubix/ssp/ad/e/a0/p;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/ubix/ssp/ad/d/b;->m:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ubix/ssp/ad/e/a0/p;->j:Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/p;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    .line 4
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/content/Context;)[[Ljava/lang/String;
    .locals 13

    .line 5
    const-string v0, "positive"

    sget-boolean v1, Lcom/ubix/ssp/ad/e/a0/p;->f:Z

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez v1, :cond_0

    new-array p0, v4, [I

    aput v5, p0, v3

    aput v4, p0, v5

    invoke-static {v2, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, [[Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v1, "ubix_sp_castle"

    const-string v6, "analysis_detect_last_time"

    invoke-static {p0, v1, v6}, Lcom/ubix/ssp/ad/e/a0/v;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    const-string v9, "analysis_detect_insert_list"

    invoke-static {p0, v1, v9}, Lcom/ubix/ssp/ad/e/a0/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v7

    sget-wide v7, Lcom/ubix/ssp/ad/e/a0/p;->i:J

    cmp-long v7, v10, v7

    const-string v8, "analysis_install_tag_list"

    const-string v10, "ubix_sp_guarder"

    if-gez v7, :cond_1

    if-eqz v9, :cond_1

    :try_start_0
    invoke-static {p0, v10, v8}, Lcom/ubix/ssp/ad/e/a0/v;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ubix/ssp/ad/e/a0/p;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-array v0, v5, [Ljava/lang/String;

    filled-new-array {p0, v0}, [[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-array p0, v4, [I

    aput v5, p0, v3

    aput v4, p0, v5

    invoke-static {v2, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {p0, v1, v6, v11, v12}, Lcom/ubix/ssp/ad/e/a0/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Boolean;

    :try_start_1
    sget-object v1, Lcom/ubix/ssp/ad/e/a0/p;->h:Ljava/util/List;

    new-array v6, v5, [Lcom/ubix/ssp/ad/e/y/a/g$c;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/ubix/ssp/ad/e/y/a/g$c;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/p;->a([Lcom/ubix/ssp/ad/e/y/a/g$c;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_2
    new-array v0, v5, [Ljava/lang/String;

    :goto_1
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v10, v8, v1}, Lcom/ubix/ssp/ad/e/a0/v;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    new-array p0, v5, [Ljava/lang/String;

    filled-new-array {v0, p0}, [[Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :cond_3
    new-array p0, v4, [I

    aput v5, p0, v3

    aput v4, p0, v5

    invoke-static {v2, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-array p0, v4, [I

    aput v5, p0, v3

    aput v4, p0, v5

    invoke-static {v2, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_0
.end method

.method private static b([Lcom/ubix/ssp/ad/e/y/a/g$c;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/ubix/ssp/ad/e/y/a/g$c;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3

    array-length v3, p0

    if-lez v3, :cond_3

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/p;->c()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v4, v3

    if-lez v4, :cond_2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_3

    aget-object v5, p0, v4

    iget-object v6, v5, Lcom/ubix/ssp/ad/e/y/a/g$c;->c:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/g$c;->d:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v6, v5, Lcom/ubix/ssp/ad/e/y/a/g$c;->e:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/g$c;->e:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "get detectList isEmpty"

    invoke-static {p0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    :cond_3
    const-string p0, "positive"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "negative"

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static b()V
    .locals 6

    .line 2
    :try_start_0
    sget-boolean v0, Lcom/ubix/ssp/ad/d/b;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/ad/e/a0/p;->g:Ljava/util/List;

    new-array v2, v1, [Lcom/ubix/ssp/ad/e/y/a/g$c;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ubix/ssp/ad/e/y/a/g$c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/p;->b([Lcom/ubix/ssp/ad/e/y/a/g$c;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ubix/ssp/ad/e/a0/p;->g:Ljava/util/List;

    new-array v2, v1, [Lcom/ubix/ssp/ad/e/y/a/g$c;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ubix/ssp/ad/e/y/a/g$c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/p;->a([Lcom/ubix/ssp/ad/e/y/a/g$c;)Ljava/util/HashMap;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    const-string v2, "positive"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const-string v3, "negative"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "ubix_sp_villager"

    if-eqz v2, :cond_1

    :try_start_1
    new-array v4, v1, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    sput-object v2, Lcom/ubix/ssp/ad/e/a0/p;->a:[Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "install_result_array"

    :try_start_2
    sget-object v5, Lcom/ubix/ssp/ad/e/a0/p;->a:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/ubix/ssp/ad/e/a0/v;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    :cond_1
    if-eqz v0, :cond_2

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/ubix/ssp/ad/e/a0/p;->b:[Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "not_install_result_array"

    :try_start_3
    sget-object v2, Lcom/ubix/ssp/ad/e/a0/p;->b:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v1, v2}, Lcom/ubix/ssp/ad/e/a0/v;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .line 3
    sget-boolean v0, Lcom/ubix/ssp/ad/e/a0/p;->c:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/ubix/ssp/ad/e/a0/p;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/ubix/ssp/ad/e/a0/p;->c(Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/ubix/ssp/ad/e/a0/p;->d(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/k;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ubix/ssp/ad/e/a0/p;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/k;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ubix/ssp/ad/e/a0/p;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "ubix_sp_village"

    const-string v3, "install_chk_inr_last_time"

    invoke-static {p0, v2, v3}, Lcom/ubix/ssp/ad/e/a0/v;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    sget-wide v4, Lcom/ubix/ssp/ad/e/a0/p;->e:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packages checked interval less than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/ubix/ssp/ad/e/a0/p;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", skip "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/ubix/ssp/ad/e/a0/p;->a:[Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ubix/ssp/ad/e/a0/p;->b:[Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const-string v0, "install_result_array"

    const-string v1, "ubix_sp_villager"

    invoke-static {p0, v1, v0}, Lcom/ubix/ssp/ad/e/a0/v;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/p;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ubix/ssp/ad/e/a0/p;->a:[Ljava/lang/String;

    const-string v0, "not_install_result_array"

    invoke-static {p0, v1, v0}, Lcom/ubix/ssp/ad/e/a0/v;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ubix/ssp/ad/e/a0/p;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ubix/ssp/ad/e/a0/p;->b:[Ljava/lang/String;

    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/ubix/ssp/ad/e/a0/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Boolean;

    sget-object p0, Lcom/ubix/ssp/ad/e/a0/p;->g:Ljava/util/List;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/ubix/ssp/ad/e/a0/p;->a:[Ljava/lang/String;

    if-eqz p0, :cond_5

    sget-object v0, Lcom/ubix/ssp/ad/e/a0/p;->b:[Ljava/lang/String;

    if-eqz v0, :cond_5

    array-length p0, p0

    if-nez p0, :cond_4

    array-length p0, v0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->y()Ljava/util/concurrent/Executor;

    sget-object p0, Lcom/ubix/ssp/ad/e/a0/c;->d:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/p$a;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/a0/p$a;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    :goto_1
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/p;->b()V

    return-void

    :cond_6
    :goto_2
    const-string p0, "packages list is empty"

    invoke-static {p0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    return-void
.end method

.method private static c()[Ljava/lang/String;
    .locals 12

    .line 2
    sget-object v0, Lcom/ubix/ssp/ad/e/a0/p;->j:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const-string v2, ","

    const/4 v3, 0x2

    if-nez v0, :cond_3

    sget-object v0, Lcom/ubix/ssp/ad/e/a0/c;->a:Landroid/content/Context;

    const-string v4, "ubix_sp_dungeon1"

    const-string v5, "ex_time"

    invoke-static {v0, v4, v5}, Lcom/ubix/ssp/ad/e/a0/v;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    sget-object v0, Lcom/ubix/ssp/ad/e/a0/c;->a:Landroid/content/Context;

    const-string v8, "ubix_sp_mansion"

    const-string v9, "ubix_sp_vindicator"

    invoke-static {v0, v8, v9}, Lcom/ubix/ssp/ad/e/a0/v;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v10, 0x0

    cmp-long v6, v6, v10

    if-nez v6, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v0, Lcom/ubix/ssp/ad/e/a0/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/ubix/ssp/ad/e/a0/p;->j:Ljava/lang/StringBuilder;

    sget-object v6, Lcom/ubix/ssp/ad/e/a0/c;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v6, v4, v5, v10, v11}, Lcom/ubix/ssp/ad/e/a0/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Boolean;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v1, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-static {v4, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    sget-object v3, Lcom/ubix/ssp/ad/e/a0/c;->a:Landroid/content/Context;

    invoke-static {v3, v8, v9, v1}, Lcom/ubix/ssp/ad/e/a0/v;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/ubix/ssp/ad/e/a0/p;->j:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/ubix/ssp/ad/e/a0/p;->j:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/ubix/ssp/ad/e/a0/p;->j:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private static c(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p0, v1, [Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    move v2, v1

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_1
    if-nez p0, :cond_3

    new-array p0, v1, [Ljava/lang/String;

    :cond_3
    return-object p0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "ubix_sp_village"

    const-string v3, "install_chk_inr_last_time"

    invoke-static {p0, v2, v3}, Lcom/ubix/ssp/ad/e/a0/v;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    sget-wide v4, Lcom/ubix/ssp/ad/e/a0/p;->e:J

    cmp-long v0, v0, v4

    const-string v1, "not_install_result_array"

    const-string v4, "install_result_array"

    const-string v5, "ubix_sp_villager"

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheme checked interval less than "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/ubix/ssp/ad/e/a0/p;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", skip "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/ubix/ssp/ad/e/a0/p;->a:[Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ubix/ssp/ad/e/a0/p;->b:[Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-static {p0, v5, v4}, Lcom/ubix/ssp/ad/e/a0/v;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/p;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ubix/ssp/ad/e/a0/p;->a:[Ljava/lang/String;

    invoke-static {p0, v5, v1}, Lcom/ubix/ssp/ad/e/a0/v;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ubix/ssp/ad/e/a0/p;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ubix/ssp/ad/e/a0/p;->b:[Ljava/lang/String;

    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {p0, v2, v3, v6, v7}, Lcom/ubix/ssp/ad/e/a0/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Boolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v6, v3

    :goto_1
    sget-object v7, Lcom/ubix/ssp/ad/e/a0/p;->g:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    sget-object v7, Lcom/ubix/ssp/ad/e/a0/p;->g:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ubix/ssp/ad/e/y/a/g$c;

    iget-object v7, v7, Lcom/ubix/ssp/ad/e/y/a/g$c;->c:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, "initConfig"

    if-nez v8, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v10, "://"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v7}, Lcom/ubix/ssp/ad/e/a0/c;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u9ed8\u8ba4\u626b\u5305\u5df2\u5b89\u88c5: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/ubix/ssp/ad/e/a0/p;->g:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ubix/ssp/ad/e/y/a/g$c;

    iget-object v7, v7, Lcom/ubix/ssp/ad/e/y/a/g$c;->d:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Lcom/ubix/ssp/ad/e/a0/p;->g:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ubix/ssp/ad/e/y/a/g$c;

    iget-object v7, v7, Lcom/ubix/ssp/ad/e/y/a/g$c;->d:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u9ed8\u8ba4\u626b\u5305\u672a\u5b89\u88c5: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/ubix/ssp/ad/e/a0/p;->g:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ubix/ssp/ad/e/y/a/g$c;

    iget-object v7, v7, Lcom/ubix/ssp/ad/e/y/a/g$c;->e:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Lcom/ubix/ssp/ad/e/a0/p;->g:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ubix/ssp/ad/e/y/a/g$c;

    iget-object v7, v7, Lcom/ubix/ssp/ad/e/y/a/g$c;->e:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_5
    new-array v6, v3, [Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/ubix/ssp/ad/e/a0/p;->a:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/ubix/ssp/ad/e/a0/p;->b:[Ljava/lang/String;

    sget-object v0, Lcom/ubix/ssp/ad/e/a0/p;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v5, v4, v0}, Lcom/ubix/ssp/ad/e/a0/v;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    sget-object v0, Lcom/ubix/ssp/ad/e/a0/p;->b:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v5, v1, v0}, Lcom/ubix/ssp/ad/e/a0/v;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    return-void
.end method

.method public static d()[Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/ubix/ssp/ad/e/a0/p;->a:[Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static e()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ubix/ssp/ad/e/a0/p;->b:[Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
