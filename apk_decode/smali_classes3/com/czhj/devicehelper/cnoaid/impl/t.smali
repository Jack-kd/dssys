.class Lcom/czhj/devicehelper/cnoaid/impl/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/devicehelper/cnoaid/d;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/czhj/devicehelper/cnoaid/impl/t;->a:Landroid/content/Context;

    :try_start_0
    const-string p1, "com.android.id.impl.IdProviderImpl"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/czhj/devicehelper/cnoaid/impl/t;->b:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/czhj/devicehelper/cnoaid/impl/t;->c:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/czhj/devicehelper/cnoaid/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/t;->b:Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getOAID"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/czhj/devicehelper/cnoaid/impl/t;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/czhj/devicehelper/cnoaid/impl/t;->a:Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/czhj/devicehelper/cnoaid/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/t;->a:Landroid/content/Context;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/t;->b:Ljava/lang/Class;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/t;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/czhj/devicehelper/cnoaid/impl/t;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OAID query success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/devicehelper/cnoaid/g;->a(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/czhj/devicehelper/cnoaid/c;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/czhj/devicehelper/cnoaid/f;

    const-string v1, "OAID query failed"

    invoke-direct {v0, v1}, Lcom/czhj/devicehelper/cnoaid/f;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v0}, Lcom/czhj/devicehelper/cnoaid/g;->a(Ljava/lang/Object;)V

    :goto_1
    invoke-interface {p1, v0}, Lcom/czhj/devicehelper/cnoaid/c;->a(Ljava/lang/Exception;)V

    return-void

    :cond_3
    :goto_2
    new-instance v0, Lcom/czhj/devicehelper/cnoaid/f;

    const-string v1, "Xiaomi IdProvider not exists"

    invoke-direct {v0, v1}, Lcom/czhj/devicehelper/cnoaid/f;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_3
    return-void
.end method

.method public a()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/czhj/devicehelper/cnoaid/impl/t;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
