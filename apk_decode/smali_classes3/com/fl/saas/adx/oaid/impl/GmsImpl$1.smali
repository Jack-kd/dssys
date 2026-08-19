.class Lcom/fl/saas/adx/oaid/impl/GmsImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/oaid/impl/OAIDService$RemoteCaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/oaid/impl/GmsImpl;->doGet(Lcom/fl/saas/adx/oaid/IGetter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/oaid/impl/GmsImpl;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/oaid/impl/GmsImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/oaid/impl/GmsImpl$1;->this$0:Lcom/fl/saas/adx/oaid/impl/GmsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callRemoteInterface(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/fl/saas/adx/oaid/com/google/android/gms/ads/identifier/internal/IAdvertisingIdService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fl/saas/adx/oaid/com/google/android/gms/ads/identifier/internal/IAdvertisingIdService;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/fl/saas/adx/oaid/com/google/android/gms/ads/identifier/internal/IAdvertisingIdService;->isLimitAdTrackingEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "User has disabled advertising identifier"

    invoke-static {v0}, Lcom/fl/saas/adx/oaid/OAIDLog;->print(Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1}, Lcom/fl/saas/adx/oaid/com/google/android/gms/ads/identifier/internal/IAdvertisingIdService;->getId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
