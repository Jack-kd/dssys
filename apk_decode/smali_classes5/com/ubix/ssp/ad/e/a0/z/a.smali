.class public Lcom/ubix/ssp/ad/e/a0/z/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/ubix/ssp/ad/e/a0/z/a;


# instance fields
.field private b:Lcom/ubix/ssp/ad/e/a0/z/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/a0/z/a;->o()V

    return-void
.end method

.method public static a()Lcom/ubix/ssp/ad/e/a0/z/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/ubix/ssp/ad/e/a0/z/a;->a:Lcom/ubix/ssp/ad/e/a0/z/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/ubix/ssp/ad/e/a0/z/a;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/a0/z/a;-><init>()V

    sput-object v0, Lcom/ubix/ssp/ad/e/a0/z/a;->a:Lcom/ubix/ssp/ad/e/a0/z/a;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2
    const-class v0, Ljava/lang/String;

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "get"

    :try_start_1
    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "System property invoke error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method private b()Lcom/ubix/ssp/ad/e/a0/z/b;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/a0/z/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/z/c/f;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/a0/z/c/f;-><init>()V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/a0/z/a;->e()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/a0/z/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/a0/z/a;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/a0/z/a;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/z/c/d;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/a0/z/c/d;-><init>()V

    return-object v0

    :cond_2
    new-instance v0, Lcom/ubix/ssp/ad/e/a0/z/c/e;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/a0/z/c/e;-><init>()V

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/a0/z/a;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/z/c/g;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/a0/z/c/g;-><init>()V

    return-object v0

    :cond_4
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/a0/z/a;->i()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/a0/z/a;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/a0/z/a;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/z/c/h;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/a0/z/c/h;-><init>()V

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/z/c/h;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OriginOS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_6
    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/z/c/h;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Funtouch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/z/c/b;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/a0/z/c/b;-><init>()V

    return-object v0

    :cond_7
    new-instance v0, Lcom/ubix/ssp/ad/e/a0/z/c/i;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/a0/z/c/i;-><init>()V

    return-object v0

    :cond_8
    :goto_0
    new-instance v0, Lcom/ubix/ssp/ad/e/a0/z/c/a;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/a0/z/c/a;-><init>()V

    return-object v0

    :cond_9
    :goto_1
    new-instance v0, Lcom/ubix/ssp/ad/e/a0/z/c/c;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/a0/z/c/c;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public c()Z
    .locals 2

    const-string v0, "ro.build.version.emui"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/ubix/ssp/ad/e/a0/z/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "HONOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "HONOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 2

    const-string v0, "ro.mi.os.version.incremental"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/ubix/ssp/ad/e/a0/z/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public g()Z
    .locals 2

    const-string v0, "ro.miui.ui.version.name"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/ubix/ssp/ad/e/a0/z/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public h()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "ONEPLUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public i()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "OPPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "REALME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ro.build.version.opporom"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/ubix/ssp/ad/e/a0/z/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public j()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "SAMSUNG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public k()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "VIVO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ro.vivo.os.version"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/ubix/ssp/ad/e/a0/z/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public l()Z
    .locals 3

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "XIAOMI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "BLACKSHARK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "REDMI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/z/a;->b:Lcom/ubix/ssp/ad/e/a0/z/b;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/z/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/z/a;->b:Lcom/ubix/ssp/ad/e/a0/z/b;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/z/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()V
    .locals 1

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/a0/z/a;->b()Lcom/ubix/ssp/ad/e/a0/z/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/z/a;->b:Lcom/ubix/ssp/ad/e/a0/z/b;

    return-void
.end method
