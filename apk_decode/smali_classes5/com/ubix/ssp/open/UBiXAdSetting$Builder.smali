.class public Lcom/ubix/ssp/open/UBiXAdSetting$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/open/UBiXAdSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;->g:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public build()Lcom/ubix/ssp/open/UBiXAdSetting;
    .locals 3

    new-instance v0, Lcom/ubix/ssp/open/UBiXAdSetting;

    invoke-direct {v0}, Lcom/ubix/ssp/open/UBiXAdSetting;-><init>()V

    iget-object v1, p0, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;->a:Ljava/lang/String;

    :goto_0
    invoke-static {v0, v1}, Lcom/ubix/ssp/open/UBiXAdSetting;->a(Lcom/ubix/ssp/open/UBiXAdSetting;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;->b:Ljava/lang/String;

    :goto_1
    invoke-static {v0, v2}, Lcom/ubix/ssp/open/UBiXAdSetting;->b(Lcom/ubix/ssp/open/UBiXAdSetting;Ljava/lang/String;)Ljava/lang/String;

    iget-boolean v1, p0, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;->c:Z

    invoke-static {v0, v1}, Lcom/ubix/ssp/open/UBiXAdSetting;->a(Lcom/ubix/ssp/open/UBiXAdSetting;Z)Z

    iget-boolean v1, p0, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;->d:Z

    invoke-static {v0, v1}, Lcom/ubix/ssp/open/UBiXAdSetting;->b(Lcom/ubix/ssp/open/UBiXAdSetting;Z)Z

    iget-object v1, p0, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;->e:Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    if-nez v1, :cond_2

    new-instance v1, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;

    invoke-direct {v1}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->build()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    move-result-object v1

    :cond_2
    invoke-static {v0, v1}, Lcom/ubix/ssp/open/UBiXAdSetting;->a(Lcom/ubix/ssp/open/UBiXAdSetting;Lcom/ubix/ssp/open/UBiXAdPrivacyManager;)Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    iget-object v1, p0, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;->f:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/ubix/ssp/open/UBiXAdSetting;->a(Lcom/ubix/ssp/open/UBiXAdSetting;Ljava/util/Map;)Ljava/util/Map;

    iget-object v1, p0, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/ubix/ssp/open/UBiXAdSetting;->a(Lcom/ubix/ssp/open/UBiXAdSetting;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setCustomLogo(Landroid/graphics/drawable/Drawable;)Lcom/ubix/ssp/open/UBiXAdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;->g:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setExtra(Ljava/util/Map;)Lcom/ubix/ssp/open/UBiXAdSetting$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ubix/ssp/open/UBiXAdSetting$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;->f:Ljava/util/Map;

    return-object p0
.end method

.method public setPrivacyManager(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;)Lcom/ubix/ssp/open/UBiXAdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;->e:Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    return-object p0
.end method

.method public setPublisherId(Ljava/lang/String;)Lcom/ubix/ssp/open/UBiXAdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setUseTextureView(Z)Lcom/ubix/ssp/open/UBiXAdSetting$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;->d:Z

    iput-boolean p1, p0, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;->c:Z

    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/ubix/ssp/open/UBiXAdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;->a:Ljava/lang/String;

    return-object p0
.end method
