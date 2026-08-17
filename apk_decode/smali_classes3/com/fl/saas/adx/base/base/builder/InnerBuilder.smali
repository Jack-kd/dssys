.class public abstract Lcom/fl/saas/adx/base/base/builder/InnerBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected builder:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected customAndroidId:Ljava/lang/String;

.field protected customIMEI:Ljava/lang/String;

.field protected customLocation:Lcom/fl/saas/adx/base/bean/CustomLocation;

.field protected customMac:Ljava/lang/String;

.field protected customOAID:Ljava/lang/String;

.field protected customUserAgent:Ljava/lang/String;

.field protected isCanUseAndroid:Z

.field protected isCanUseBootID:Z

.field protected isCanUseIMEI:Z

.field protected isCanUseIMSI:Z

.field protected isCanUseLocation:Z

.field protected isCanUseMac:Z

.field protected isCanUseOAID:Z

.field protected isCanUseSSID:Z

.field protected isCanUseSensor:Z

.field protected isInitializeBD:Z

.field protected isInitializeCSJ:Z

.field protected isInitializeGDT:Z

.field protected isInitializeKS:Z

.field protected isInitializeQTT:Z

.field protected sourceTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseBootID:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseSSID:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseAndroid:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseMac:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseIMEI:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseIMSI:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseLocation:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseOAID:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseSensor:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->customIMEI:Ljava/lang/String;

    iput-object v1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->customAndroidId:Ljava/lang/String;

    iput-object v1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->customMac:Ljava/lang/String;

    iput-object v1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->customUserAgent:Ljava/lang/String;

    iput-object v1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->customOAID:Ljava/lang/String;

    iput-object v1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->sourceTag:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isInitializeGDT:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isInitializeKS:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isInitializeBD:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isInitializeCSJ:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isInitializeQTT:Z

    return-void
.end method


# virtual methods
.method public abstract build()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public getCustomAndroidId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->customAndroidId:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomIMEI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->customIMEI:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomLocation()Lcom/fl/saas/adx/base/bean/CustomLocation;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->customLocation:Lcom/fl/saas/adx/base/bean/CustomLocation;

    return-object v0
.end method

.method public getCustomMac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->customMac:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomOAID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->customOAID:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomUserAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->customUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->sourceTag:Ljava/lang/String;

    return-object v0
.end method

.method public isCanUseAndroid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseAndroid:Z

    return v0
.end method

.method public isCanUseBootID()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseBootID:Z

    return v0
.end method

.method public isCanUseIMEI()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseIMEI:Z

    return v0
.end method

.method public isCanUseIMSI()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseIMSI:Z

    return v0
.end method

.method public isCanUseLocation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseLocation:Z

    return v0
.end method

.method public isCanUseMac()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseMac:Z

    return v0
.end method

.method public isCanUseOaid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseOAID:Z

    return v0
.end method

.method public isCanUseSSID()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseSSID:Z

    return v0
.end method

.method public isCanUseSensor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseSensor:Z

    return v0
.end method

.method public isInitializeBD()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isInitializeBD:Z

    return v0
.end method

.method public isInitializeCSJ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isInitializeCSJ:Z

    return v0
.end method

.method public isInitializeGDT()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isInitializeGDT:Z

    return v0
.end method

.method public isInitializeKS()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isInitializeKS:Z

    return v0
.end method

.method public isInitializeQTT()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isInitializeQTT:Z

    return v0
.end method

.method public setCanUseAndroid(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseAndroid:Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setCanUseBootID(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseBootID:Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setCanUseIMEI(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseIMEI:Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setCanUseIMSI(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseIMSI:Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setCanUseLocation(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseLocation:Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setCanUseMac(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseMac:Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setCanUseOaid(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseOAID:Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setCanUseSSID(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseSSID:Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setCanUseSensor(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isCanUseSensor:Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setCustomAndroidId(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->customAndroidId:Ljava/lang/String;

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setCustomIMEI(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->customIMEI:Ljava/lang/String;

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setCustomLocation(Lcom/fl/saas/adx/base/bean/CustomLocation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fl/saas/adx/base/bean/CustomLocation;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->customLocation:Lcom/fl/saas/adx/base/bean/CustomLocation;

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setCustomMac(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->customMac:Ljava/lang/String;

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setCustomOaid(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->customOAID:Ljava/lang/String;

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setCustomUserAgent(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->customUserAgent:Ljava/lang/String;

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setInitializeBD(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isInitializeBD:Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setInitializeCSJ(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isInitializeCSJ:Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setInitializeGDT(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isInitializeGDT:Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setInitializeKS(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isInitializeKS:Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setInitializeQTT(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->isInitializeQTT:Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setSourceTag(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->sourceTag:Ljava/lang/String;

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method
