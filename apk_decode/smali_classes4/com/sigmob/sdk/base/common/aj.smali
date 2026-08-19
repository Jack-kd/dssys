.class public Lcom/sigmob/sdk/base/common/aj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/common/aj$a;,
        Lcom/sigmob/sdk/base/common/aj$b;
    }
.end annotation


# static fields
.field static final a:I = 0x1

.field private static final b:Ljava/lang/String; = "LocalBroadcastManager"

.field private static final c:Z = false

.field private static final d:Ljava/lang/Object;

.field private static e:Lcom/sigmob/sdk/base/common/aj;


# instance fields
.field private final f:Landroid/content/Context;

.field private final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList<",
            "Lcom/sigmob/sdk/base/common/aj$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/sigmob/sdk/base/common/aj$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sigmob/sdk/base/common/aj$a;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/common/aj;->d:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/aj;->g:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/aj;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/aj;->i:Ljava/util/ArrayList;

    new-instance v0, Lcom/sigmob/sdk/base/common/aj$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sigmob/sdk/base/common/aj$1;-><init>(Lcom/sigmob/sdk/base/common/aj;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/aj;->j:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/aj;->f:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/aj;
    .locals 2

    .line 1
    sget-object v0, Lcom/sigmob/sdk/base/common/aj;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sigmob/sdk/base/common/aj;->e:Lcom/sigmob/sdk/base/common/aj;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sigmob/sdk/base/common/aj;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/common/aj;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sigmob/sdk/base/common/aj;->e:Lcom/sigmob/sdk/base/common/aj;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/sigmob/sdk/base/common/aj;->e:Lcom/sigmob/sdk/base/common/aj;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public a()V
    .locals 10

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/aj;->g:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/aj;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_1
    new-array v2, v1, [Lcom/sigmob/sdk/base/common/aj$a;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/aj;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/aj;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v2, v3

    iget-object v5, v4, Lcom/sigmob/sdk/base/common/aj$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v0

    :goto_1
    if-ge v6, v5, :cond_3

    iget-object v7, v4, Lcom/sigmob/sdk/base/common/aj$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sigmob/sdk/base/common/aj$b;

    iget-boolean v8, v7, Lcom/sigmob/sdk/base/common/aj$b;->d:Z

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    iget-object v7, v7, Lcom/sigmob/sdk/base/common/aj$b;->b:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Lcom/sigmob/sdk/base/common/aj;->f:Landroid/content/Context;

    iget-object v9, v4, Lcom/sigmob/sdk/base/common/aj$a;->a:Landroid/content/Intent;

    invoke-virtual {v7, v8, v9}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public a(Landroid/content/BroadcastReceiver;)V
    .locals 11

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/aj;->g:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/aj;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sigmob/sdk/base/common/aj$b;

    iput-boolean v3, v4, Lcom/sigmob/sdk/base/common/aj$b;->d:Z

    const/4 v5, 0x0

    :goto_1
    iget-object v6, v4, Lcom/sigmob/sdk/base/common/aj$b;->a:Landroid/content/IntentFilter;

    invoke-virtual {v6}, Landroid/content/IntentFilter;->countActions()I

    move-result v6

    if-ge v5, v6, :cond_6

    iget-object v6, v4, Lcom/sigmob/sdk/base/common/aj$b;->a:Landroid/content/IntentFilter;

    invoke-virtual {v6, v5}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sigmob/sdk/base/common/aj;->h:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-nez v7, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v3

    :goto_2
    if-ltz v8, :cond_4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sigmob/sdk/base/common/aj$b;

    iget-object v10, v9, Lcom/sigmob/sdk/base/common/aj$b;->b:Landroid/content/BroadcastReceiver;

    if-ne v10, p1, :cond_3

    iput-boolean v3, v9, Lcom/sigmob/sdk/base/common/aj$b;->d:Z

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_5

    iget-object v7, p0, Lcom/sigmob/sdk/base/common/aj;->h:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/aj;->g:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/sigmob/sdk/base/common/aj$b;

    invoke-direct {v1, p2, p1}, Lcom/sigmob/sdk/base/common/aj$b;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/aj;->g:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/aj;->g:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v2

    if-ge p1, v2, :cond_2

    invoke-virtual {p2, p1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/aj;->h:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, p0, Lcom/sigmob/sdk/base/common/aj;->h:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sigmob/sdk/base/common/aj;->a(Landroid/content/Intent;I)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/content/Intent;I)Z
    .locals 18

    .line 6
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    iget-object v3, v1, Lcom/sigmob/sdk/base/common/aj;->g:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v1, Lcom/sigmob/sdk/base/common/aj;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    const/4 v11, 0x0

    if-eqz v4, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    move v13, v11

    :goto_0
    if-eqz v13, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    :goto_1
    iget-object v4, v1, Lcom/sigmob/sdk/base/common/aj;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Ljava/util/ArrayList;

    if-nez v14, :cond_2

    monitor-exit v3

    return v11

    :cond_2
    if-eqz v13, :cond_3

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_3
    const/4 v4, 0x0

    move-object v15, v4

    move v4, v11

    :goto_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_9

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sigmob/sdk/base/common/aj$b;

    if-eqz v13, :cond_4

    iget-object v11, v10, Lcom/sigmob/sdk/base/common/aj$b;->a:Landroid/content/IntentFilter;

    invoke-static {v11}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_4
    iget-boolean v11, v10, Lcom/sigmob/sdk/base/common/aj$b;->c:Z

    if-eqz v11, :cond_5

    move v11, v4

    goto :goto_3

    :cond_5
    move v11, v4

    iget-object v4, v10, Lcom/sigmob/sdk/base/common/aj$b;->a:Landroid/content/IntentFilter;

    move-object/from16 v17, v10

    const-string v10, "LocalBroadcastManager"

    move-object/from16 v12, v17

    invoke-virtual/range {v4 .. v10}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_8

    if-eqz v13, :cond_6

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    :cond_6
    if-nez v15, :cond_7

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    iput-boolean v4, v12, Lcom/sigmob/sdk/base/common/aj$b;->c:Z

    :cond_8
    :goto_3
    add-int/lit8 v4, v11, 0x1

    const/4 v11, 0x0

    goto :goto_2

    :cond_9
    if-eqz v15, :cond_d

    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sigmob/sdk/base/common/aj$b;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sigmob/sdk/base/common/aj$b;->c:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    iget-object v4, v1, Lcom/sigmob/sdk/base/common/aj;->i:Ljava/util/ArrayList;

    new-instance v5, Lcom/sigmob/sdk/base/common/aj$a;

    invoke-direct {v5, v0, v15}, Lcom/sigmob/sdk/base/common/aj$a;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/sigmob/sdk/base/common/aj;->j:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_c

    if-lez v2, :cond_b

    iget-object v0, v1, Lcom/sigmob/sdk/base/common/aj;->j:Landroid/os/Handler;

    int-to-long v5, v2

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5

    :cond_b
    iget-object v0, v1, Lcom/sigmob/sdk/base/common/aj;->j:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_c
    :goto_5
    monitor-exit v3

    return v4

    :cond_d
    monitor-exit v3

    const/16 v16, 0x0

    return v16

    :goto_6
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/aj;->a(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/aj;->a()V

    :cond_0
    return-void
.end method
