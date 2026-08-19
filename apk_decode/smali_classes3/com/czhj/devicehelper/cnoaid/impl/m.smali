.class public final Lcom/czhj/devicehelper/cnoaid/impl/m;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/czhj/devicehelper/cnoaid/d;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/czhj/devicehelper/cnoaid/d;
    .locals 1

    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/app/Application;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    sget-object v0, Lcom/czhj/devicehelper/cnoaid/impl/m;->a:Lcom/czhj/devicehelper/cnoaid/d;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/czhj/devicehelper/cnoaid/impl/m;->b(Landroid/content/Context;)Lcom/czhj/devicehelper/cnoaid/d;

    move-result-object v0

    sput-object v0, Lcom/czhj/devicehelper/cnoaid/impl/m;->a:Lcom/czhj/devicehelper/cnoaid/d;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/czhj/devicehelper/cnoaid/d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Manufacturer interface has been found: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/czhj/devicehelper/cnoaid/impl/m;->a:Lcom/czhj/devicehelper/cnoaid/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/czhj/devicehelper/cnoaid/g;->a(Ljava/lang/Object;)V

    sget-object p0, Lcom/czhj/devicehelper/cnoaid/impl/m;->a:Lcom/czhj/devicehelper/cnoaid/d;

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/czhj/devicehelper/cnoaid/impl/m;->c(Landroid/content/Context;)Lcom/czhj/devicehelper/cnoaid/d;

    move-result-object p0

    sput-object p0, Lcom/czhj/devicehelper/cnoaid/impl/m;->a:Lcom/czhj/devicehelper/cnoaid/d;

    return-object p0
.end method

.method private static b(Landroid/content/Context;)Lcom/czhj/devicehelper/cnoaid/d;
    .locals 2

    invoke-static {}, Lcom/czhj/devicehelper/cnoaid/h;->l()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Lcom/czhj/devicehelper/cnoaid/h;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/czhj/devicehelper/cnoaid/h;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/czhj/devicehelper/cnoaid/impl/j;

    invoke-direct {v0, p0}, Lcom/czhj/devicehelper/cnoaid/impl/j;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_1
    invoke-static {}, Lcom/czhj/devicehelper/cnoaid/h;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/czhj/devicehelper/cnoaid/impl/l;

    invoke-direct {v0, p0}, Lcom/czhj/devicehelper/cnoaid/impl/l;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_2
    invoke-static {}, Lcom/czhj/devicehelper/cnoaid/h;->f()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lcom/czhj/devicehelper/cnoaid/h;->g()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lcom/czhj/devicehelper/cnoaid/h;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-static {}, Lcom/czhj/devicehelper/cnoaid/h;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/czhj/devicehelper/cnoaid/impl/r;

    invoke-direct {v0, p0}, Lcom/czhj/devicehelper/cnoaid/impl/r;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_4
    invoke-static {}, Lcom/czhj/devicehelper/cnoaid/h;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/czhj/devicehelper/cnoaid/impl/s;

    invoke-direct {v0, p0}, Lcom/czhj/devicehelper/cnoaid/impl/s;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_5
    invoke-static {}, Lcom/czhj/devicehelper/cnoaid/h;->n()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/czhj/devicehelper/cnoaid/impl/a;

    invoke-direct {v0, p0}, Lcom/czhj/devicehelper/cnoaid/impl/a;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_6
    invoke-static {}, Lcom/czhj/devicehelper/cnoaid/h;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/czhj/devicehelper/cnoaid/h;->b()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/czhj/devicehelper/cnoaid/impl/g;

    invoke-direct {v0, p0}, Lcom/czhj/devicehelper/cnoaid/impl/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/czhj/devicehelper/cnoaid/impl/g;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    return-object v0

    :cond_7
    invoke-static {}, Lcom/czhj/devicehelper/cnoaid/h;->a()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/czhj/devicehelper/cnoaid/h;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/czhj/devicehelper/cnoaid/h;->d()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/czhj/devicehelper/cnoaid/h;->i()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_0

    :cond_9
    invoke-static {p0}, Lcom/czhj/devicehelper/cnoaid/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/czhj/devicehelper/cnoaid/impl/b;

    invoke-direct {v0, p0}, Lcom/czhj/devicehelper/cnoaid/impl/b;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_a
    invoke-static {}, Lcom/czhj/devicehelper/cnoaid/h;->r()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/czhj/devicehelper/cnoaid/impl/c;

    invoke-direct {v0, p0}, Lcom/czhj/devicehelper/cnoaid/impl/c;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_b
    invoke-static {}, Lcom/czhj/devicehelper/cnoaid/h;->q()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/czhj/devicehelper/cnoaid/impl/e;

    invoke-direct {v0, p0}, Lcom/czhj/devicehelper/cnoaid/impl/e;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_c
    invoke-static {}, Lcom/czhj/devicehelper/cnoaid/h;->t()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/czhj/devicehelper/cnoaid/impl/q;

    invoke-direct {v0, p0}, Lcom/czhj/devicehelper/cnoaid/impl/q;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_d
    const/4 p0, 0x0

    return-object p0

    :cond_e
    :goto_0
    new-instance v0, Lcom/czhj/devicehelper/cnoaid/impl/p;

    invoke-direct {v0, p0}, Lcom/czhj/devicehelper/cnoaid/impl/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/czhj/devicehelper/cnoaid/impl/p;->a()Z

    move-result v1

    if-eqz v1, :cond_f

    return-object v0

    :cond_f
    new-instance v0, Lcom/czhj/devicehelper/cnoaid/impl/o;

    invoke-direct {v0, p0}, Lcom/czhj/devicehelper/cnoaid/impl/o;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_10
    :goto_1
    new-instance v0, Lcom/czhj/devicehelper/cnoaid/impl/h;

    invoke-direct {v0, p0}, Lcom/czhj/devicehelper/cnoaid/impl/h;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_11
    :goto_2
    new-instance v0, Lcom/czhj/devicehelper/cnoaid/impl/t;

    invoke-direct {v0, p0}, Lcom/czhj/devicehelper/cnoaid/impl/t;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_12
    :goto_3
    new-instance v0, Lcom/czhj/devicehelper/cnoaid/impl/i;

    invoke-direct {v0, p0}, Lcom/czhj/devicehelper/cnoaid/impl/i;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Lcom/czhj/devicehelper/cnoaid/d;
    .locals 2

    new-instance v0, Lcom/czhj/devicehelper/cnoaid/impl/k;

    invoke-direct {v0, p0}, Lcom/czhj/devicehelper/cnoaid/impl/k;-><init>(Landroid/content/Context;)V

    invoke-interface {v0}, Lcom/czhj/devicehelper/cnoaid/d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mobile Security Alliance has been found: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/czhj/devicehelper/cnoaid/impl/k;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/czhj/devicehelper/cnoaid/g;->a(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/czhj/devicehelper/cnoaid/impl/f;

    invoke-direct {v0, p0}, Lcom/czhj/devicehelper/cnoaid/impl/f;-><init>(Landroid/content/Context;)V

    invoke-interface {v0}, Lcom/czhj/devicehelper/cnoaid/d;->a()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Google Play Service has been found: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/czhj/devicehelper/cnoaid/impl/f;

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/czhj/devicehelper/cnoaid/impl/d;

    invoke-direct {p0}, Lcom/czhj/devicehelper/cnoaid/impl/d;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OAID/AAID was not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/czhj/devicehelper/cnoaid/impl/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/devicehelper/cnoaid/g;->a(Ljava/lang/Object;)V

    return-object p0
.end method
