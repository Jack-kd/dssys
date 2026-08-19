.class public Lcom/fl/saas/S0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/fl/saas/S0;

.field private static b:Landroid/content/SharedPreferences;

.field private static c:Landroid/content/SharedPreferences$Editor;

.field private static final d:Ljava/util/Set;

.field private static e:Ljava/lang/String;

.field private static f:Landroid/content/Context;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/fl/saas/S0;->d:Ljava/util/Set;

    .line 8
    .line 9
    const-string v0, "FL_SP"

    .line 10
    .line 11
    sput-object v0, Lcom/fl/saas/S0;->e:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "APP_DATE"

    .line 14
    .line 15
    sput-object v0, Lcom/fl/saas/S0;->g:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "app_list_cache"

    .line 18
    .line 19
    sput-object v0, Lcom/fl/saas/S0;->h:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "FL_SP"

    invoke-direct {p0, v0}, Lcom/fl/saas/S0;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/fl/saas/S0;->e:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/fl/saas/S0;
    .locals 2

    .line 3
    sget-object v0, Lcom/fl/saas/S0;->a:Lcom/fl/saas/S0;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fl/saas/S0;->e:Ljava/lang/String;

    const-string v1, "FL_SP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-class v0, Lcom/fl/saas/S0;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/fl/saas/S0;

    invoke-direct {v1}, Lcom/fl/saas/S0;-><init>()V

    sput-object v1, Lcom/fl/saas/S0;->a:Lcom/fl/saas/S0;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/fl/saas/S0;->a:Lcom/fl/saas/S0;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/fl/saas/S0;->a(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;I)I
    .locals 1

    .line 5
    sget-object v0, Lcom/fl/saas/S0;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return p2

    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;J)J
    .locals 1

    .line 6
    sget-object v0, Lcom/fl/saas/S0;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-wide p2

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lcom/fl/saas/S0;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_4

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_5

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 7
    sget-object v0, Lcom/fl/saas/S0;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 8
    const-string v0, "FL_SP"

    invoke-virtual {p0, p1, v0}, Lcom/fl/saas/S0;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 9
    sput-object p1, Lcom/fl/saas/S0;->f:Landroid/content/Context;

    sget-object v0, Lcom/fl/saas/S0;->e:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    sput-object p1, Lcom/fl/saas/S0;->b:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sput-object p1, Lcom/fl/saas/S0;->c:Landroid/content/SharedPreferences$Editor;

    sget-object p1, Lcom/fl/saas/S0;->a:Lcom/fl/saas/S0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/fl/saas/S0;

    invoke-direct {p1, p2}, Lcom/fl/saas/S0;-><init>(Ljava/lang/String;)V

    :goto_0
    sput-object p1, Lcom/fl/saas/S0;->a:Lcom/fl/saas/S0;

    return-void

    :cond_0
    sget-object p1, Lcom/fl/saas/S0;->e:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/fl/saas/S0;

    invoke-direct {p1, p2}, Lcom/fl/saas/S0;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1

    .line 2
    sget-object v0, Lcom/fl/saas/S0;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return p2

    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/fl/saas/S0;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Ljava/lang/String;I)Lcom/fl/saas/S0;
    .locals 1

    .line 3
    sget-object v0, Lcom/fl/saas/S0;->c:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object p0
.end method

.method public b(Ljava/lang/String;J)Lcom/fl/saas/S0;
    .locals 1

    .line 4
    sget-object v0, Lcom/fl/saas/S0;->c:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    sget-object p1, Lcom/fl/saas/S0;->a:Lcom/fl/saas/S0;

    return-object p1

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p1, Lcom/fl/saas/S0;->a:Lcom/fl/saas/S0;

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)Lcom/fl/saas/S0;
    .locals 3

    .line 2
    sget-object v0, Lcom/fl/saas/S0;->c:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    sget-object p1, Lcom/fl/saas/S0;->a:Lcom/fl/saas/S0;

    return-object p1

    :cond_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p2, Ljava/lang/String;

    :goto_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_1
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_2
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_3
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_4

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_4
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_5

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :goto_1
    sget-object p1, Lcom/fl/saas/S0;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p1, Lcom/fl/saas/S0;->a:Lcom/fl/saas/S0;

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/fl/saas/S0;
    .locals 1

    .line 5
    sget-object v0, Lcom/fl/saas/S0;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    sget-object p1, Lcom/fl/saas/S0;->a:Lcom/fl/saas/S0;

    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/fl/saas/S0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
