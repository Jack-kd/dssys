.class public final Lcom/ubix/ssp/ad/e/a0/c0/h/l;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/ubix/ssp/ad/e/a0/c0/d;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/a0/c0/d;
    .locals 1

    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/app/Application;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    sget-object v0, Lcom/ubix/ssp/ad/e/a0/c0/h/l;->a:Lcom/ubix/ssp/ad/e/a0/c0/d;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/ubix/ssp/ad/e/a0/c0/h/l;->b(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/a0/c0/d;

    move-result-object v0

    sput-object v0, Lcom/ubix/ssp/ad/e/a0/c0/h/l;->a:Lcom/ubix/ssp/ad/e/a0/c0/d;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/ubix/ssp/ad/e/a0/c0/d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Manufacturer interface has been found: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/ubix/ssp/ad/e/a0/c0/h/l;->a:Lcom/ubix/ssp/ad/e/a0/c0/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ubix/ssp/ad/e/a0/c0/f;->a(Ljava/lang/Object;)V

    sget-object p0, Lcom/ubix/ssp/ad/e/a0/c0/h/l;->a:Lcom/ubix/ssp/ad/e/a0/c0/d;

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/ubix/ssp/ad/e/a0/c0/h/l;->c(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/a0/c0/d;

    move-result-object p0

    sput-object p0, Lcom/ubix/ssp/ad/e/a0/c0/h/l;->a:Lcom/ubix/ssp/ad/e/a0/c0/d;

    return-object p0
.end method

.method private static b(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/a0/c0/d;
    .locals 2

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c0/g;->i()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c0/g;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c0/g;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/c0/h/i;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/a0/c0/h/i;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_1
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c0/g;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/c0/h/k;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/a0/c0/h/k;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_2
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c0/g;->s()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c0/g;->l()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c0/g;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c0/g;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/c0/h/o;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/a0/c0/h/o;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_4
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c0/g;->r()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/c0/h/p;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/a0/c0/h/p;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_5
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c0/g;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/c0/h/a;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/a0/c0/h/a;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_6
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c0/g;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c0/g;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c0/g;->j()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    new-instance v0, Lcom/ubix/ssp/ad/e/a0/c0/h/f;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/a0/c0/h/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/c0/h/f;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    new-instance v0, Lcom/ubix/ssp/ad/e/a0/c0/h/g;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/a0/c0/h/g;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_a
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c0/g;->h()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c0/g;->d()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c0/g;->f()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1

    :cond_b
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c0/g;->p()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c0/g;->o()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_0

    :cond_c
    invoke-static {p0}, Lcom/ubix/ssp/ad/e/a0/c0/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/c0/h/b;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/a0/c0/h/b;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_d
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c0/g;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/c0/h/c;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/a0/c0/h/c;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_e
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c0/g;->e()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/c0/h/e;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/a0/c0/h/e;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_f
    const/4 p0, 0x0

    return-object p0

    :cond_10
    :goto_0
    new-instance v0, Lcom/ubix/ssp/ad/e/a0/c0/h/n;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/a0/c0/h/n;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_11
    :goto_1
    new-instance v0, Lcom/ubix/ssp/ad/e/a0/c0/h/g;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/a0/c0/h/g;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_12
    :goto_2
    new-instance v0, Lcom/ubix/ssp/ad/e/a0/c0/h/q;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/a0/c0/h/q;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_13
    :goto_3
    new-instance v0, Lcom/ubix/ssp/ad/e/a0/c0/h/h;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/a0/c0/h/h;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/a0/c0/d;
    .locals 2

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/c0/h/j;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/a0/c0/h/j;-><init>(Landroid/content/Context;)V

    invoke-interface {v0}, Lcom/ubix/ssp/ad/e/a0/c0/d;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mobile Security Alliance has been found: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/ubix/ssp/ad/e/a0/c0/h/j;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ubix/ssp/ad/e/a0/c0/f;->a(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance p0, Lcom/ubix/ssp/ad/e/a0/c0/h/d;

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/a0/c0/h/d;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OAID/AAID was not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/ubix/ssp/ad/e/a0/c0/h/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/c0/f;->a(Ljava/lang/Object;)V

    return-object p0
.end method
