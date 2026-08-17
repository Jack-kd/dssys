.class public Lcom/ubix/ssp/ad/e/a0/y/d/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/ubix/ssp/ad/e/a0/y/d/c;


# instance fields
.field private b:Z

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/n;->a()Lcom/ubix/ssp/ad/e/a0/n$b;

    move-result-object v1

    const-string v2, "YW5kcm9pZC5hcHAuQWN0aXZpdHlUaHJlYWQ="

    invoke-virtual {v1, v2}, Lcom/ubix/ssp/ad/e/a0/n$b;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/c;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/n;->a()Lcom/ubix/ssp/ad/e/a0/n$b;

    move-result-object v1

    const-string v2, "c0N1cnJlbnRBY3Rpdml0eVRocmVhZA=="

    invoke-virtual {v1, v2}, Lcom/ubix/ssp/ad/e/a0/n$b;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/c;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/n;->a()Lcom/ubix/ssp/ad/e/a0/n$b;

    move-result-object v1

    const-string v2, "bUluc3RydW1lbnRhdGlvbg=="

    invoke-virtual {v1, v2}, Lcom/ubix/ssp/ad/e/a0/n$b;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/c;->e:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/ubix/ssp/ad/e/a0/y/d/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/ubix/ssp/ad/e/a0/y/d/c;->a:Lcom/ubix/ssp/ad/e/a0/y/d/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/y/d/c;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/a0/y/d/c;-><init>()V

    sput-object v0, Lcom/ubix/ssp/ad/e/a0/y/d/c;->a:Lcom/ubix/ssp/ad/e/a0/y/d/c;

    :cond_0
    sget-object v0, Lcom/ubix/ssp/ad/e/a0/y/d/c;->a:Lcom/ubix/ssp/ad/e/a0/y/d/c;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 6

    .line 2
    const-string v0, "09000"

    :try_start_0
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/a0/y/d/c;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/y/d/c;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/y/d/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/a0/y/d/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-instance v4, Lcom/ubix/ssp/ad/e/a0/y/d/b;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Instrumentation;

    invoke-direct {v4, v5}, Lcom/ubix/ssp/ad/e/a0/y/d/b;-><init>(Landroid/app/Instrumentation;)V

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "guard"

    const-string v2, "on"

    invoke-static {v1, v2}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/ubix/ssp/ad/e/a0/y/d/c;->b:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object v2

    const-string v3, "succ"

    invoke-interface {v2, v1, v0, v3}, Lcom/ubix/ssp/ad/e/w/e;->b(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ubix/ssp/ad/e/a0/y/d/c;->b:Z

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/u;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "EVENT_CODE_ERROR"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/f;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/e;

    move-result-object p1

    const-string v1, "fail"

    invoke-interface {p1, v2, v0, v1}, Lcom/ubix/ssp/ad/e/w/e;->b(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/y/d/c;->b:Z

    return v0
.end method
