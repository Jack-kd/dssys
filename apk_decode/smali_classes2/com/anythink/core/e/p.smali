.class public Lcom/anythink/core/e/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/e/p$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "p"


# instance fields
.field private b:Lcom/anythink/core/e/o;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/anythink/core/e/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/anythink/core/e/p;->b:Lcom/anythink/core/e/o;

    return-void
.end method

.method private a(ILjava/lang/Object;Lcom/anythink/core/common/h/bo;)V
    .locals 4

    .line 3
    instance-of v0, p2, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    check-cast p2, Lorg/json/JSONObject;

    const/4 v0, 0x1

    .line 5
    :try_start_0
    const-string v1, "updateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    .line 6
    :goto_0
    const-string v2, "strategy_domain_type_key"

    invoke-virtual {p2, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7
    const-string p1, "pl_wf_st_type"

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 8
    iget-object v1, p0, Lcom/anythink/core/e/p;->b:Lcom/anythink/core/e/o;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p3}, Lcom/anythink/core/common/h/bo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/anythink/core/e/o;->a(Ljava/lang/String;I)Lcom/anythink/core/e/m;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p3}, Lcom/anythink/core/common/h/bo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/anythink/core/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 11
    sget-object v1, Lcom/anythink/core/e/p;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parse place strategy error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_2
    :goto_1
    invoke-virtual {p3}, Lcom/anythink/core/common/h/bo;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/anythink/core/e/m;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/anythink/core/e/m;

    move-result-object p1

    .line 13
    iget-object v1, p0, Lcom/anythink/core/e/p;->b:Lcom/anythink/core/e/o;

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p3}, Lcom/anythink/core/common/h/bo;->d()Ljava/lang/String;

    move-result-object p3

    .line 15
    invoke-virtual {p1}, Lcom/anythink/core/e/m;->as()I

    move-result v2

    if-ne v2, v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/anythink/core/e/m;->aW()I

    move-result v0

    .line 16
    invoke-virtual {v1, p3, p1, p2, v0}, Lcom/anythink/core/e/o;->a(Ljava/lang/String;Lcom/anythink/core/e/m;Lorg/json/JSONObject;I)V

    :cond_4
    :goto_3
    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/e/p;ILjava/lang/Object;Lcom/anythink/core/common/h/bo;)V
    .locals 4

    .line 44
    instance-of v0, p2, Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    .line 45
    check-cast p2, Lorg/json/JSONObject;

    const/4 v0, 0x1

    .line 46
    :try_start_0
    const-string v1, "updateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 47
    :goto_0
    const-string v2, "strategy_domain_type_key"

    invoke-virtual {p2, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 48
    const-string p1, "pl_wf_st_type"

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 49
    iget-object v1, p0, Lcom/anythink/core/e/p;->b:Lcom/anythink/core/e/o;

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {p3}, Lcom/anythink/core/common/h/bo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/anythink/core/e/o;->a(Ljava/lang/String;I)Lcom/anythink/core/e/m;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 51
    invoke-virtual {p3}, Lcom/anythink/core/common/h/bo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/anythink/core/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 52
    sget-object v1, Lcom/anythink/core/e/p;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parse place strategy error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_1
    :goto_1
    invoke-virtual {p3}, Lcom/anythink/core/common/h/bo;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/anythink/core/e/m;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/anythink/core/e/m;

    move-result-object p1

    .line 54
    iget-object p0, p0, Lcom/anythink/core/e/p;->b:Lcom/anythink/core/e/o;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 55
    invoke-virtual {p3}, Lcom/anythink/core/common/h/bo;->d()Ljava/lang/String;

    move-result-object p3

    .line 56
    invoke-virtual {p1}, Lcom/anythink/core/e/m;->as()I

    move-result v1

    if-ne v1, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/anythink/core/e/m;->aW()I

    move-result v0

    .line 57
    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/anythink/core/e/o;->a(Ljava/lang/String;Lcom/anythink/core/e/m;Lorg/json/JSONObject;I)V

    :cond_3
    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/e/p;Lcom/anythink/core/e/p$a;Lcom/anythink/core/common/m/s;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lcom/anythink/core/e/p;->a(ZLcom/anythink/core/e/p$a;Lcom/anythink/core/common/m/s;)V

    return-void
.end method

.method private a(ZLcom/anythink/core/e/p$a;Lcom/anythink/core/common/m/s;)V
    .locals 11

    .line 39
    iget-object v0, p2, Lcom/anythink/core/e/p$a;->b:Lcom/anythink/core/common/h/bo;

    invoke-virtual {v0}, Lcom/anythink/core/common/h/bo;->k()Ljava/lang/String;

    move-result-object v9

    .line 40
    invoke-virtual {p2, p1}, Lcom/anythink/core/e/p$a;->a(Z)Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-virtual {p2, p1}, Lcom/anythink/core/e/p$a;->b(Z)Ljava/lang/String;

    move-result-object v6

    .line 42
    new-instance v1, Lcom/anythink/core/e/p$3;

    move v8, p1

    move-object v10, p3

    move-object v2, p0

    move v3, p1

    move-object v7, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v10}, Lcom/anythink/core/e/p$3;-><init>(Lcom/anythink/core/e/p;ZLcom/anythink/core/common/m/s;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/e/p$a;ZLjava/lang/String;Lcom/anythink/core/common/m/s;)V

    .line 43
    invoke-virtual {v1}, Lcom/anythink/core/e/a/a;->f()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/anythink/core/common/h/bo;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/anythink/core/e/p$1;

    invoke-direct {v0, p0, p2}, Lcom/anythink/core/e/p$1;-><init>(Lcom/anythink/core/e/p;Lcom/anythink/core/common/h/bo;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/anythink/core/e/p;->a(Landroid/content/Context;Lcom/anythink/core/common/h/bo;Lcom/anythink/core/common/m/s;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/anythink/core/common/h/bo;Lcom/anythink/core/common/m/s;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/d/s;->T()V

    .line 18
    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/d/s;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/e/d;->a(Landroid/content/Context;)Lcom/anythink/core/e/d;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/d/s;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/e/d;->b(Ljava/lang/String;)Lcom/anythink/core/e/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v0}, Lcom/anythink/core/e/b;->as()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 20
    new-instance v2, Lcom/anythink/core/common/m/u;

    invoke-direct {v2, p1, p2}, Lcom/anythink/core/common/m/u;-><init>(Landroid/content/Context;Lcom/anythink/core/common/h/bo;)V

    .line 21
    invoke-virtual {v0}, Lcom/anythink/core/e/b;->as()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/anythink/core/common/m/u;->b(Ljava/lang/String;)Lcom/anythink/core/common/m/u;

    move-result-object p1

    .line 22
    invoke-virtual {p1, v1, p3}, Lcom/anythink/core/common/m/u;->a(ILcom/anythink/core/common/m/s;)V

    return-void

    .line 23
    :cond_1
    invoke-static {}, Lcom/anythink/core/common/i;->a()Lcom/anythink/core/common/i;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/anythink/core/common/i;->b(Z)Ljava/lang/String;

    move-result-object v6

    .line 24
    invoke-static {}, Lcom/anythink/core/common/i;->a()Lcom/anythink/core/common/i;

    invoke-static {v1}, Lcom/anythink/core/common/i;->b(Z)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v2, 0x2710

    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {v0}, Lcom/anythink/core/e/b;->aF()J

    move-result-wide v4

    goto :goto_0

    :cond_2
    move-wide v4, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 26
    invoke-virtual {v0}, Lcom/anythink/core/e/b;->aH()J

    move-result-wide v2

    .line 27
    :cond_3
    new-instance v8, Lcom/anythink/core/e/p$a;

    invoke-direct {v8, v1}, Lcom/anythink/core/e/p$a;-><init>(B)V

    .line 28
    iput-object p1, v8, Lcom/anythink/core/e/p$a;->a:Landroid/content/Context;

    .line 29
    iput-object p2, v8, Lcom/anythink/core/e/p$a;->b:Lcom/anythink/core/common/h/bo;

    .line 30
    iput-object v6, v8, Lcom/anythink/core/e/p$a;->c:Ljava/lang/String;

    .line 31
    iput-object v7, v8, Lcom/anythink/core/e/p$a;->d:Ljava/lang/String;

    .line 32
    iput-wide v4, v8, Lcom/anythink/core/e/p$a;->g:J

    .line 33
    iput-wide v2, v8, Lcom/anythink/core/e/p$a;->h:J

    .line 34
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isCnSDK()Z

    move-result p1

    if-nez p1, :cond_4

    .line 35
    new-instance v5, Lcom/anythink/core/common/m/p;

    invoke-direct {v5, p3}, Lcom/anythink/core/common/m/p;-><init>(Lcom/anythink/core/common/m/s;)V

    .line 36
    invoke-direct {p0, v1, v8, v5}, Lcom/anythink/core/e/p;->a(ZLcom/anythink/core/e/p$a;Lcom/anythink/core/common/m/s;)V

    .line 37
    invoke-static {}, Lcom/anythink/core/common/g/c;->a()Lcom/anythink/core/common/g/c;

    move-result-object p1

    new-instance v3, Lcom/anythink/core/e/p$2;

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/anythink/core/e/p$2;-><init>(Lcom/anythink/core/e/p;Lcom/anythink/core/common/m/p;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/e/p$a;)V

    invoke-virtual {p1, v3}, Lcom/anythink/core/common/g/c;->a(Lcom/anythink/core/common/g/d;)V

    return-void

    :cond_4
    move-object v4, p0

    .line 38
    invoke-direct {p0, v1, v8, p3}, Lcom/anythink/core/e/p;->a(ZLcom/anythink/core/e/p$a;Lcom/anythink/core/common/m/s;)V

    return-void
.end method
