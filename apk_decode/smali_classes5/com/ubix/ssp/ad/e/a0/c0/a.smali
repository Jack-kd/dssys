.class public final Lcom/ubix/ssp/ad/e/a0/c0/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/c0/c;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ubix/ssp/ad/e/a0/c0/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/a0/c0/a;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/ubix/ssp/ad/e/a0/c0/c;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ubix/ssp/ad/e/a0/c0/h/l;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/a0/c0/d;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/ubix/ssp/ad/e/a0/c0/d;->a(Lcom/ubix/ssp/ad/e/a0/c0/c;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Client id is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/c0/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/c0/f;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/ubix/ssp/ad/e/a0/c0/e;

    const-string v0, "OAID is empty"

    invoke-direct {p1, v0}, Lcom/ubix/ssp/ad/e/a0/c0/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/a0/c0/a;->a(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/c0/a;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/c0/a;->b:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Client id is OAID/AAID: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/c0/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/c0/f;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 4
    const/4 v0, 0x0

    return v0
.end method
