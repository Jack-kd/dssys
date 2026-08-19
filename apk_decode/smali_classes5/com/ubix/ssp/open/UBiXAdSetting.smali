.class public Lcom/ubix/ssp/open/UBiXAdSetting;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/open/UBiXAdSetting$Builder;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ubix/ssp/open/UBiXAdSetting;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/open/UBiXAdSetting;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdSetting;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdSetting;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/open/UBiXAdSetting;->g:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/open/UBiXAdSetting;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ubix/ssp/open/UBiXAdSetting;->g:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/open/UBiXAdSetting;Lcom/ubix/ssp/open/UBiXAdPrivacyManager;)Lcom/ubix/ssp/open/UBiXAdPrivacyManager;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ubix/ssp/open/UBiXAdSetting;->e:Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    return-object p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/open/UBiXAdSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ubix/ssp/open/UBiXAdSetting;->a:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/open/UBiXAdSetting;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ubix/ssp/open/UBiXAdSetting;->f:Ljava/util/Map;

    return-object p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/open/UBiXAdSetting;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/ubix/ssp/open/UBiXAdSetting;->c:Z

    return p1
.end method

.method public static synthetic b(Lcom/ubix/ssp/open/UBiXAdSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ubix/ssp/open/UBiXAdSetting;->b:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Lcom/ubix/ssp/open/UBiXAdSetting;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ubix/ssp/open/UBiXAdSetting;->d:Z

    return p1
.end method


# virtual methods
.method public getCustomLogo()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/open/UBiXAdSetting;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getExtra()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ubix/ssp/open/UBiXAdSetting;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getPrivacyManager()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/open/UBiXAdSetting;->e:Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    return-object v0
.end method

.method public getPublisherId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/open/UBiXAdSetting;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/open/UBiXAdSetting;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isSpecifiedVideoWidget()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdSetting;->d:Z

    return v0
.end method

.method public isUseTextureView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdSetting;->c:Z

    return v0
.end method
