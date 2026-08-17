.class Lcom/fl/saas/adx/oaid/impl/AsusImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/oaid/impl/OAIDService$RemoteCaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/oaid/impl/AsusImpl;->doGet(Lcom/fl/saas/adx/oaid/IGetter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/oaid/impl/AsusImpl;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/oaid/impl/AsusImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/oaid/impl/AsusImpl$1;->this$0:Lcom/fl/saas/adx/oaid/impl/AsusImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callRemoteInterface(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/fl/saas/adx/oaid/com/asus/msa/SupplementaryDID/IDidAidlInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fl/saas/adx/oaid/com/asus/msa/SupplementaryDID/IDidAidlInterface;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/fl/saas/adx/oaid/com/asus/msa/SupplementaryDID/IDidAidlInterface;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/fl/saas/adx/oaid/com/asus/msa/SupplementaryDID/IDidAidlInterface;->getOAID()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/fl/saas/adx/oaid/OAIDException;

    const-string v0, "IDidAidlInterface#isSupport return false"

    invoke-direct {p1, v0}, Lcom/fl/saas/adx/oaid/OAIDException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/fl/saas/adx/oaid/OAIDException;

    const-string v0, "IDidAidlInterface is null"

    invoke-direct {p1, v0}, Lcom/fl/saas/adx/oaid/OAIDException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
