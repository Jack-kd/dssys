.class public Lcom/ubix/ssp/open/UBiXAdPrivacyManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;,
        Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->a:I

    iput v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->c:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->d:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->e:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->f:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->g:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->h:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->i:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->j:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->l:Ljava/lang/String;

    new-instance v1, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;-><init>(DD)V

    iput-object v1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->m:Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;

    iput-object v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->o:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->q:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ubix/ssp/open/UBiXAdPrivacyManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->q:I

    return p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;)Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->m:Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;

    return-object p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->k:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->p:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->j:Z

    return p1
.end method

.method public static synthetic b(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->b:I

    return p1
.end method

.method public static synthetic b(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->l:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->h:Z

    return p1
.end method

.method public static synthetic c(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->a:I

    return p1
.end method

.method public static synthetic c(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->n:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->c:Z

    return p1
.end method

.method public static synthetic d(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->o:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic d(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->d:Z

    return p1
.end method

.method public static synthetic e(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->g:Z

    return p1
.end method

.method public static synthetic f(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->f:Z

    return p1
.end method

.method public static synthetic g(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->e:Z

    return p1
.end method

.method public static synthetic h(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->i:Z

    return p1
.end method


# virtual methods
.method public getAndroidId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->p:Ljava/util/List;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()[D
    .locals 6

    iget-object v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->m:Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;->a(Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;)D

    move-result-wide v2

    iget-object v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->m:Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;

    invoke-static {v0}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;->b(Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;)D

    move-result-wide v4

    new-array v0, v1, [D

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aput-wide v4, v0, v1

    return-object v0

    :cond_0
    new-array v0, v1, [D

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public getMacAddr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getOaid()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->q:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->q:I

    iget-object v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonalizedState()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->b:I

    return v0
.end method

.method public getProgrammaticRecommendState()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->a:I

    return v0
.end method

.method public isCanGetAppList()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->g:Z

    return v0
.end method

.method public isCanUseAndroidId()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->h:Z

    return v0
.end method

.method public isCanUseLocation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->c:Z

    return v0
.end method

.method public isCanUseMacAddress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->f:Z

    return v0
.end method

.method public isCanUseOaid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->i:Z

    return v0
.end method

.method public isCanUsePhoneState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->j:Z

    return v0
.end method

.method public isCanUseWifiStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->d:Z

    return v0
.end method

.method public isCanUseWriteExternal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->e:Z

    return v0
.end method

.method public isTrustOaid()Z
    .locals 2

    iget v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->q:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
