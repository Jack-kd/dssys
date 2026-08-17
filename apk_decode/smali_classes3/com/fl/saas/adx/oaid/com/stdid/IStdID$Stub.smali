.class public abstract Lcom/fl/saas/adx/oaid/com/stdid/IStdID$Stub;
.super Lcom/fl/saas/adx/oaid/com/heytap/openid/IOpenID$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/adx/oaid/com/stdid/IStdID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/oaid/com/stdid/IStdID$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oplus.stdid.IStdID"

.field static final TRANSACTION_getSerID:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/fl/saas/adx/oaid/com/heytap/openid/IOpenID$Stub;-><init>()V

    const-string v0, "com.oplus.stdid.IStdID"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/fl/saas/adx/oaid/com/stdid/IStdID;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oplus.stdid.IStdID"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/fl/saas/adx/oaid/com/stdid/IStdID;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/fl/saas/adx/oaid/com/stdid/IStdID;

    return-object v0

    :cond_1
    new-instance v0, Lcom/fl/saas/adx/oaid/com/stdid/IStdID$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/oaid/com/stdid/IStdID$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/fl/saas/adx/oaid/com/heytap/openid/IOpenID;
    .locals 1

    sget-object v0, Lcom/fl/saas/adx/oaid/com/stdid/IStdID$Stub$Proxy;->sDefaultImpl:Lcom/fl/saas/adx/oaid/com/heytap/openid/IOpenID;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/fl/saas/adx/oaid/com/heytap/openid/IOpenID;)Z
    .locals 1

    sget-object v0, Lcom/fl/saas/adx/oaid/com/stdid/IStdID$Stub$Proxy;->sDefaultImpl:Lcom/fl/saas/adx/oaid/com/heytap/openid/IOpenID;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/fl/saas/adx/oaid/com/stdid/IStdID$Stub$Proxy;->sDefaultImpl:Lcom/fl/saas/adx/oaid/com/heytap/openid/IOpenID;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
