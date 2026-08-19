.class public Lcom/umeng/commonsdk/config/FieldManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/config/FieldManager$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "cfgfd"

.field private static b:Lcom/umeng/commonsdk/config/b;

.field private static c:Z

.field private static d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/config/b;->b()Lcom/umeng/commonsdk/config/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/umeng/commonsdk/config/FieldManager;->b:Lcom/umeng/commonsdk/config/b;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    sput-boolean v0, Lcom/umeng/commonsdk/config/FieldManager;->c:Z

    .line 9
    .line 10
    new-instance v0, Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/umeng/commonsdk/config/FieldManager;->d:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/umeng/commonsdk/config/FieldManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/umeng/commonsdk/config/FieldManager;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Landroid/util/Pair;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p0, :cond_2

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 45
    array-length v1, p0

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 46
    :try_start_0
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x1

    .line 47
    aget-object p0, p0, v3

    .line 48
    new-instance v3, Landroid/util/Pair;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v3, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :catchall_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static a()Lcom/umeng/commonsdk/config/FieldManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/umeng/commonsdk/config/FieldManager$a;->a()Lcom/umeng/commonsdk/config/FieldManager;

    move-result-object v0

    return-object v0
.end method

.method public static allow(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/config/FieldManager;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/umeng/commonsdk/config/FieldManager;->c:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    monitor-exit v0

    .line 10
    return p0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p0}, Lcom/umeng/commonsdk/config/b;->a(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    monitor-exit v0

    .line 18
    return p0

    .line 19
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public static b()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/config/FieldManager;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/umeng/commonsdk/config/FieldManager;->c:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 10

    .line 2
    const-string v0, "1001@3749699455,2130669566,262139,1983"

    .line 3
    const-class v1, Lcom/umeng/commonsdk/config/d$a;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/umeng/commonsdk/config/d$b;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/umeng/commonsdk/config/d$c;

    .line 6
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/umeng/commonsdk/config/d$d;

    .line 7
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 8
    const-string v2, "cfgfd"

    invoke-static {p1, v2, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    sget-object v2, Lcom/umeng/commonsdk/config/FieldManager;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 10
    :try_start_0
    invoke-static {p1}, Lcom/umeng/commonsdk/config/FieldManager;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    .line 11
    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 12
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    move-object v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 14
    :cond_0
    :goto_0
    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 15
    array-length v0, p1

    if-lez v0, :cond_1

    .line 16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 17
    new-instance v4, Lcom/umeng/commonsdk/config/g;

    invoke-direct {v4}, Lcom/umeng/commonsdk/config/g;-><init>()V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_1

    .line 18
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/umeng/commonsdk/config/e;

    aget-object v7, p1, v5

    sget-object v8, Lcom/umeng/commonsdk/config/FieldManager;->b:Lcom/umeng/commonsdk/config/b;

    aget-object v9, v1, v5

    invoke-static {v9}, Lcom/umeng/commonsdk/config/d;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lcom/umeng/commonsdk/config/e;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 20
    sput-boolean p1, Lcom/umeng/commonsdk/config/FieldManager;->c:Z

    .line 21
    monitor-exit v2

    return-void

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    .line 22
    const-string p1, "1001@3749699455,2130669566,262139,1983"

    .line 23
    const-class v0, Lcom/umeng/commonsdk/config/d$a;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/umeng/commonsdk/config/d$b;

    .line 25
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/umeng/commonsdk/config/d$c;

    .line 26
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/umeng/commonsdk/config/d$d;

    .line 27
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 28
    sget-object v1, Lcom/umeng/commonsdk/config/FieldManager;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v2, Lcom/umeng/commonsdk/config/FieldManager;->b:Lcom/umeng/commonsdk/config/b;

    invoke-virtual {v2}, Lcom/umeng/commonsdk/config/b;->a()V

    if-eqz p2, :cond_0

    .line 30
    invoke-static {p2}, Lcom/umeng/commonsdk/config/FieldManager;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p2

    .line 31
    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 32
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    move-object p1, p2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 34
    :cond_0
    :goto_0
    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 35
    array-length p2, p1

    if-lez p2, :cond_1

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    new-instance v3, Lcom/umeng/commonsdk/config/g;

    invoke-direct {v3}, Lcom/umeng/commonsdk/config/g;-><init>()V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p2, :cond_1

    .line 38
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/umeng/commonsdk/config/e;

    aget-object v6, p1, v4

    sget-object v7, Lcom/umeng/commonsdk/config/FieldManager;->b:Lcom/umeng/commonsdk/config/b;

    aget-object v8, v0, v4

    invoke-static {v8}, Lcom/umeng/commonsdk/config/d;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lcom/umeng/commonsdk/config/e;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 40
    sput-boolean p1, Lcom/umeng/commonsdk/config/FieldManager;->c:Z

    .line 41
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
