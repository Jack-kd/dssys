.class public final Lcom/smartdigimkt/j3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/Object;

.field public static g:Lcom/smartdigimkt/j3/d;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/ArrayList;

.field public final e:Lcom/smartdigimkt/j3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/smartdigimkt/j3/d;->f:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/smartdigimkt/j3/d;->b:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/smartdigimkt/j3/d;->c:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/smartdigimkt/j3/d;->d:Ljava/util/ArrayList;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/smartdigimkt/j3/d;->a:Landroid/content/Context;

    .line 26
    .line 27
    new-instance v0, Lcom/smartdigimkt/j3/a;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v0, p0, p1}, Lcom/smartdigimkt/j3/a;-><init>(Lcom/smartdigimkt/j3/d;Landroid/os/Looper;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/smartdigimkt/j3/d;->e:Lcom/smartdigimkt/j3/a;

    .line 37
    .line 38
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/smartdigimkt/j3/d;
    .locals 2

    .line 1
    sget-object v0, Lcom/smartdigimkt/j3/d;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/smartdigimkt/j3/d;->g:Lcom/smartdigimkt/j3/d;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/smartdigimkt/j3/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/smartdigimkt/j3/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/smartdigimkt/j3/d;->g:Lcom/smartdigimkt/j3/d;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    sget-object p0, Lcom/smartdigimkt/j3/d;->g:Lcom/smartdigimkt/j3/d;

    monitor-exit v0

    return-object p0

    .line 5
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 6
    iget-object v2, v1, Lcom/smartdigimkt/j3/d;->b:Ljava/util/HashMap;

    monitor-enter v2

    .line 7
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 8
    iget-object v3, v1, Lcom/smartdigimkt/j3/d;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 10
    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .line 12
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    const/4 v11, 0x1

    if-eqz v3, :cond_0

    move v12, v11

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    if-eqz v12, :cond_1

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 14
    :cond_1
    :goto_1
    iget-object v3, v1, Lcom/smartdigimkt/j3/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Ljava/util/ArrayList;

    if-eqz v13, :cond_b

    if-eqz v12, :cond_2

    .line 15
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_2
    const/4 v3, 0x0

    move-object v14, v3

    const/4 v15, 0x0

    .line 16
    :goto_2
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_8

    .line 17
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartdigimkt/j3/c;

    if-eqz v12, :cond_3

    .line 18
    iget-object v9, v3, Lcom/smartdigimkt/j3/c;->a:Landroid/content/IntentFilter;

    invoke-static {v9}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    :cond_3
    iget-boolean v9, v3, Lcom/smartdigimkt/j3/c;->c:Z

    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    move-object v9, v3

    .line 20
    iget-object v3, v9, Lcom/smartdigimkt/j3/c;->a:Landroid/content/IntentFilter;

    move-object/from16 v16, v9

    const-string v9, "LocalBroadcastManager"

    move-object/from16 v10, v16

    invoke-virtual/range {v3 .. v9}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_7

    if-eqz v12, :cond_5

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    :cond_5
    if-nez v14, :cond_6

    .line 22
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 23
    :cond_6
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iput-boolean v11, v10, Lcom/smartdigimkt/j3/c;->c:Z

    :cond_7
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_8
    if-eqz v14, :cond_b

    const/4 v3, 0x0

    .line 25
    :goto_4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 26
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartdigimkt/j3/c;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/smartdigimkt/j3/c;->c:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 27
    :cond_9
    iget-object v3, v1, Lcom/smartdigimkt/j3/d;->d:Ljava/util/ArrayList;

    new-instance v4, Lcom/smartdigimkt/j3/b;

    invoke-direct {v4, v0, v14}, Lcom/smartdigimkt/j3/b;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, v1, Lcom/smartdigimkt/j3/d;->e:Lcom/smartdigimkt/j3/a;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 29
    iget-object v0, v1, Lcom/smartdigimkt/j3/d;->e:Lcom/smartdigimkt/j3/a;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 30
    :cond_a
    monitor-exit v2

    return-void

    .line 31
    :cond_b
    monitor-exit v2

    return-void

    .line 32
    :goto_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
