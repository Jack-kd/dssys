.class public Lcom/ubix/ssp/ad/d/g;
.super Ljava/lang/Object;


# instance fields
.field public A:I

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public G:Ljava/lang/String;

.field public H:[D

.field public I:I

.field public a:I

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:F

.field public q:F

.field public r:Ljava/lang/String;

.field public s:I

.field public t:I

.field public u:Ljava/lang/String;

.field public v:I

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sim_status"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Lcom/ubix/ssp/ad/d/b;->y:I

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->p()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/ubix/ssp/ad/d/g;->a:I

    const-string v0, "is_debug_mode"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget v0, Lcom/ubix/ssp/ad/d/b;->y:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->B()Z

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/ubix/ssp/ad/d/g;->b:Z

    const-string v0, "custom_os_name"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v3, ""

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/z/a;->a()Lcom/ubix/ssp/ad/e/a0/z/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/z/a;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v3

    :goto_2
    iput-object v0, p0, Lcom/ubix/ssp/ad/d/g;->c:Ljava/lang/String;

    const-string v0, "custom_os_version"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/z/a;->a()Lcom/ubix/ssp/ad/e/a0/z/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/z/a;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v3

    :goto_3
    iput-object v0, p0, Lcom/ubix/ssp/ad/d/g;->d:Ljava/lang/String;

    iput v2, p0, Lcom/ubix/ssp/ad/d/g;->e:I

    iput v2, p0, Lcom/ubix/ssp/ad/d/g;->f:I

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/d/g;->g:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/d/g;->h:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/d/g;->i:Ljava/lang/String;

    const-string v0, "device_model"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v0, v3

    :goto_4
    iput-object v0, p0, Lcom/ubix/ssp/ad/d/g;->j:Ljava/lang/String;

    const-string v0, "hw_model"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object v0, v3

    :goto_5
    iput-object v0, p0, Lcom/ubix/ssp/ad/d/g;->k:Ljava/lang/String;

    const-string v0, "hw_machine"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object v0, v3

    :goto_6
    iput-object v0, p0, Lcom/ubix/ssp/ad/d/g;->l:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/ad/d/g;->m:Ljava/lang/String;

    const-string v0, "language"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_7
    move-object v0, v3

    :goto_7
    iput-object v0, p0, Lcom/ubix/ssp/ad/d/g;->n:Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/d/g;->o:Ljava/lang/String;

    sget-object v0, Lcom/ubix/ssp/ad/e/a0/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/r;->b(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/d/g;->p:F

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    sget-object v4, Lcom/ubix/ssp/ad/e/a0/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/d/g;->q:F

    const-string v0, "device_name"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object v0, v3

    :goto_8
    iput-object v0, p0, Lcom/ubix/ssp/ad/d/g;->r:Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->k()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/d/g;->s:I

    const-string v0, "conn_type"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->i()I

    move-result v0

    goto :goto_9

    :cond_9
    move v0, v1

    :goto_9
    iput v0, p0, Lcom/ubix/ssp/ad/d/g;->t:I

    const-string v0, "carrier_type"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/ubix/ssp/ad/d/b;->a()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->isCanUsePhoneState()Z

    move-result v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/c;->c(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_a
    move-object v0, v3

    :goto_a
    iput-object v0, p0, Lcom/ubix/ssp/ad/d/g;->u:Ljava/lang/String;

    const-string v0, "carrier_code"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/ubix/ssp/ad/d/b;->a()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->isCanUsePhoneState()Z

    move-result v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/c;->b(Z)I

    move-result v0

    goto :goto_b

    :cond_b
    move v0, v1

    :goto_b
    iput v0, p0, Lcom/ubix/ssp/ad/d/g;->v:I

    const-string v0, "device_startup_time"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/ubix/ssp/ad/d/g;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_c

    :cond_c
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_d
    :goto_c
    move-object v0, v3

    :goto_d
    iput-object v0, p0, Lcom/ubix/ssp/ad/d/g;->w:Ljava/lang/String;

    const-string v0, "device_mb_time"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->s()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_e
    move-object v0, v3

    :goto_e
    iput-object v0, p0, Lcom/ubix/ssp/ad/d/g;->x:Ljava/lang/String;

    const-string v0, "cpu_num"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->j()I

    move-result v0

    goto :goto_f

    :cond_f
    move v0, v1

    :goto_f
    iput v0, p0, Lcom/ubix/ssp/ad/d/g;->y:I

    iput v2, p0, Lcom/ubix/ssp/ad/d/g;->z:I

    iput v1, p0, Lcom/ubix/ssp/ad/d/g;->A:I

    const-string v0, "country_code"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_10
    move-object v0, v3

    :goto_10
    iput-object v0, p0, Lcom/ubix/ssp/ad/d/g;->B:Ljava/lang/String;

    const-string v0, "28800000"

    iput-object v0, p0, Lcom/ubix/ssp/ad/d/g;->C:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/d/g;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/d/g;->D:Ljava/lang/String;

    const-string v0, "vivo_store_ver"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/ubix/ssp/ad/e/a0/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_11
    move-object v0, v3

    :goto_11
    iput-object v0, p0, Lcom/ubix/ssp/ad/d/g;->E:Ljava/lang/String;

    const-string v0, "huawei_ver_code_of_ag"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/ubix/ssp/ad/e/a0/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_12
    move-object v0, v3

    :goto_12
    iput-object v0, p0, Lcom/ubix/ssp/ad/d/g;->F:Ljava/lang/String;

    const-string v0, "huawei_ver_code_of_hms"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/ubix/ssp/ad/e/a0/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    :cond_13
    iput-object v3, p0, Lcom/ubix/ssp/ad/d/g;->G:Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/d/b;->a()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->getLocation()[D

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/d/g;->H:[D

    const-string v0, "is_vpn_on"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->v()I

    move-result v1

    :cond_14
    iput v1, p0, Lcom/ubix/ssp/ad/d/g;->I:I

    return-void
.end method

.method private b()Z
    .locals 1

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/z/a;->a()Lcom/ubix/ssp/ad/e/a0/z/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/z/a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/z/a;->a()Lcom/ubix/ssp/ad/e/a0/z/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/z/a;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/z/a;->a()Lcom/ubix/ssp/ad/e/a0/z/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/z/a;->l()Z

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


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/ubix/ssp/ad/d/g;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "android"

    return-object v0

    :cond_0
    const-string v0, "harmony"

    return-object v0
.end method
