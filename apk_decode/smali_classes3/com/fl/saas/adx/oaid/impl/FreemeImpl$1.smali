.class Lcom/fl/saas/adx/oaid/impl/FreemeImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/oaid/impl/OAIDService$RemoteCaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/oaid/impl/FreemeImpl;->doGet(Lcom/fl/saas/adx/oaid/IGetter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/oaid/impl/FreemeImpl;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/oaid/impl/FreemeImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/oaid/impl/FreemeImpl$1;->this$0:Lcom/fl/saas/adx/oaid/impl/FreemeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callRemoteInterface(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/fl/saas/adx/oaid/com/android/creator/IdsSupplier$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fl/saas/adx/oaid/com/android/creator/IdsSupplier;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/fl/saas/adx/oaid/com/android/creator/IdsSupplier;->getOAID()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/fl/saas/adx/oaid/OAIDException;

    const-string v0, "IdsSupplier is null"

    invoke-direct {p1, v0}, Lcom/fl/saas/adx/oaid/OAIDException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
