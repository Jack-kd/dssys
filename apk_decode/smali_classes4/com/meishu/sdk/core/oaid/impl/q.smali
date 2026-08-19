.class public Lcom/meishu/sdk/core/oaid/impl/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/oaid/b;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/core/oaid/impl/q;->a:Landroid/content/Context;

    .line 5
    .line 6
    :try_start_0
    const-string p1, "com.android.id.impl.IdProviderImpl"

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/meishu/sdk/core/oaid/impl/q;->b:Ljava/lang/Class;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/meishu/sdk/core/oaid/impl/q;->c:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    :catch_0
    return-void
.end method


# virtual methods
.method public a(Lcom/meishu/sdk/core/oaid/a;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/core/oaid/impl/q;->a:Landroid/content/Context;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/core/oaid/impl/q;->b:Ljava/lang/Class;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/meishu/sdk/core/oaid/impl/q;->c:Ljava/lang/Object;

    if-nez v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    :try_start_0
    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getOAID"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/meishu/sdk/core/oaid/impl/q;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/meishu/sdk/core/oaid/impl/q;->a:Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    move-object v1, p1

    check-cast v1, Lcom/meishu/sdk/core/utils/l;

    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/utils/l;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 8
    :cond_2
    new-instance v0, Lcom/meishu/sdk/core/oaid/OAIDException;

    const-string v1, "OAID query failed"

    invoke-direct {v0, v1}, Lcom/meishu/sdk/core/oaid/OAIDException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :goto_0
    check-cast p1, Lcom/meishu/sdk/core/utils/l;

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/utils/l;->a(Ljava/lang/Exception;)V

    return-void

    .line 10
    :cond_3
    :goto_1
    new-instance v0, Lcom/meishu/sdk/core/oaid/OAIDException;

    const-string v1, "Xiaomi IdProvider not exists"

    invoke-direct {v0, v1}, Lcom/meishu/sdk/core/oaid/OAIDException;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/meishu/sdk/core/utils/l;

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/utils/l;->a(Ljava/lang/Exception;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/oaid/impl/q;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
