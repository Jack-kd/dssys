.class public Lcom/ubix/ssp/ad/e/a0/z/c/e;
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

    const-string v0, "MIUI"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.build.version.incremental"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/z/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
