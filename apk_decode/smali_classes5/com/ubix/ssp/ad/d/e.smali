.class public Lcom/ubix/ssp/ad/d/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/ubix/ssp/ad/d/b;->a()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->getImei()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ubix/ssp/ad/d/b;->a()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->getImei()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/ubix/ssp/ad/d/e;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/d/e;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/ubix/ssp/ad/d/e;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ubix/ssp/ad/d/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/ubix/ssp/ad/d/e;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/ubix/ssp/ad/d/b;->a()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->getOaid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/ubix/ssp/ad/d/b;->a()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->getOaid()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/ubix/ssp/ad/d/b;->e:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/ubix/ssp/ad/d/e;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/d/e;->e:Ljava/lang/String;

    const-string v0, "device_android_id"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/ubix/ssp/ad/d/b;->a()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->isCanUseAndroidId()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/ubix/ssp/ad/d/e;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/ubix/ssp/ad/d/b;->a()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/ubix/ssp/ad/d/b;->a()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/ubix/ssp/ad/d/b;->f:Ljava/lang/String;

    :goto_2
    iput-object v0, p0, Lcom/ubix/ssp/ad/d/e;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/d/e;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/ubix/ssp/ad/d/e;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/ubix/ssp/ad/d/e;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/ubix/ssp/ad/d/e;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/ubix/ssp/ad/d/e;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/ubix/ssp/ad/d/e;->l:Ljava/lang/String;

    return-void
.end method

.method private a()Z
    .locals 2

    invoke-static {}, Lcom/ubix/ssp/ad/d/b;->a()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->isCanUseOaid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "device_oaid"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private b()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/ubix/ssp/ad/d/b;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/ad/d/b;->a:Lcom/ubix/ssp/open/UBiXAdSetting;

    invoke-virtual {v0}, Lcom/ubix/ssp/open/UBiXAdSetting;->getPrivacyManager()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->isCanUseAndroidId()Z

    move-result v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/c;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sput-object v0, Lcom/ubix/ssp/ad/d/b;->f:Ljava/lang/String;

    return-object v0

    :cond_0
    sget-object v0, Lcom/ubix/ssp/ad/d/b;->a:Lcom/ubix/ssp/open/UBiXAdSetting;

    invoke-virtual {v0}, Lcom/ubix/ssp/open/UBiXAdSetting;->getPrivacyManager()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->isCanUseAndroidId()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ubix_sp_seed"

    const-string v2, "android_id_expired"

    invoke-static {v0, v1, v2}, Lcom/ubix/ssp/ad/e/a0/v;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/c;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sput-object v0, Lcom/ubix/ssp/ad/d/b;->f:Ljava/lang/String;

    return-object v0

    :cond_1
    sget-object v0, Lcom/ubix/ssp/ad/d/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/ubix/ssp/ad/d/b;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v0

    sget-boolean v1, Lcom/ubix/ssp/ad/d/b;->w:Z

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/c0/b;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ubix/ssp/ad/d/b;->e:Ljava/lang/String;

    return-object v0

    :cond_0
    sget-object v0, Lcom/ubix/ssp/ad/d/b;->a:Lcom/ubix/ssp/open/UBiXAdSetting;

    invoke-virtual {v0}, Lcom/ubix/ssp/open/UBiXAdSetting;->getPrivacyManager()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->isTrustOaid()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v0

    sget-boolean v1, Lcom/ubix/ssp/ad/d/b;->w:Z

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/c0/b;->a(Landroid/content/Context;Z)Ljava/lang/String;

    sget-object v0, Lcom/ubix/ssp/ad/d/b;->e:Ljava/lang/String;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ubix_sp_seed"

    const-string v2, "seed_expired"

    invoke-static {v0, v1, v2}, Lcom/ubix/ssp/ad/e/a0/v;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v0

    sget-boolean v1, Lcom/ubix/ssp/ad/d/b;->w:Z

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/c0/b;->a(Landroid/content/Context;Z)Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/ubix/ssp/ad/d/b;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceIdBean{imei=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/d/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", imei_md5="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/d/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", android_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/d/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", android_id_md5="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/d/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", oaid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/d/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mac="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/d/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mac_md5="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/d/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", wifi_mac="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/d/e;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", wifi_mac_md5="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/d/e;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ssid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/d/e;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", imsi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/d/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
