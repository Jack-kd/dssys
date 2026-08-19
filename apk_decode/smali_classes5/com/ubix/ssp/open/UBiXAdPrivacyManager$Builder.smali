.class public Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/open/UBiXAdPrivacyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->a:I

    iput v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->c:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->d:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->e:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->f:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->g:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->h:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->i:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->j:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->l:Ljava/lang/String;

    new-instance v1, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;-><init>(DD)V

    iput-object v1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->m:Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;

    iput-object v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->o:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->q:I

    return-void
.end method


# virtual methods
.method public build()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;
    .locals 2

    new-instance v0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;-><init>(Lcom/ubix/ssp/open/UBiXAdPrivacyManager$1;)V

    iget-boolean v1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->g:Z

    invoke-static {v0, v1}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->b(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;Z)Z

    iget v1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->a:I

    invoke-static {v0, v1}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->b(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;I)I

    iget v1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->b:I

    invoke-static {v0, v1}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->c(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;I)I

    iget-boolean v1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->c:Z

    invoke-static {v0, v1}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->c(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;Z)Z

    iget-boolean v1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->d:Z

    invoke-static {v0, v1}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->d(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;Z)Z

    iget-boolean v1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->e:Z

    invoke-static {v0, v1}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->e(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;Z)Z

    iget-boolean v1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->f:Z

    invoke-static {v0, v1}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->f(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;Z)Z

    iget-boolean v1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->h:Z

    invoke-static {v0, v1}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->g(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;Z)Z

    iget-boolean v1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->i:Z

    invoke-static {v0, v1}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->h(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;Z)Z

    iget-boolean v1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->j:Z

    invoke-static {v0, v1}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->a(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;Z)Z

    iget-object v1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->a(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->b(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->c(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->d(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->p:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->a(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->m:Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;

    invoke-static {v0, v1}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->a(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;)Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;

    iget v1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->q:I

    invoke-static {v0, v1}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager;->a(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;I)I

    return-object v0
.end method

.method public setAndroidId(Ljava/lang/String;)Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->n:Ljava/lang/String;

    return-object p0
.end method

.method public setAppList(Ljava/util/List;)Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->p:Ljava/util/List;

    return-object p0
.end method

.method public setCanGetAppList(Z)Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->e:Z

    return-object p0
.end method

.method public setCanUseAndroidId(Z)Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->g:Z

    return-object p0
.end method

.method public setCanUseLocation(Z)Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->c:Z

    return-object p0
.end method

.method public setCanUseMacAddress(Z)Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->f:Z

    return-object p0
.end method

.method public setCanUseOaid(Z)Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->i:Z

    return-object p0
.end method

.method public setCanUsePhoneState(Z)Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->j:Z

    return-object p0
.end method

.method public setCanUseWifiState(Z)Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->d:Z

    return-object p0
.end method

.method public setCanUseWriteExternal(Z)Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->h:Z

    return-object p0
.end method

.method public setDevImei(Ljava/lang/String;)Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->l:Ljava/lang/String;

    return-object p0
.end method

.method public setDevOaid(Ljava/lang/String;)Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->k:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->q:I

    return-object p0
.end method

.method public setLocation(DD)Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;
    .locals 1

    new-instance v0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;-><init>(DD)V

    iput-object v0, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->m:Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Location;

    return-object p0
.end method

.method public setMacAddress(Ljava/lang/String;)Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->o:Ljava/lang/String;

    return-object p0
.end method

.method public setPersonalizedState(I)Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->a:I

    return-object p0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setProgrammaticRecommendState(Z)Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->b:I

    return-object p0

    :cond_0
    const/4 p1, 0x1

    goto :goto_0
.end method
