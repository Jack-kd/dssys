.class public Lcom/ubix/ssp/ad/e/a0/z/c/f;
.super Lcom/ubix/ssp/ad/e/a0/z/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/a0/z/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "MagicOS"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.honor.build.display.id"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/z/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "ro.build.ver.physical"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/z/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "ro.build.display.id"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/z/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method
