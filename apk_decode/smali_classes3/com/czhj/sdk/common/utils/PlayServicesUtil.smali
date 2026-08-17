.class public Lcom/czhj/sdk/common/utils/PlayServicesUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/czhj/sdk/common/utils/PlayServicesUtil$AdvertisingInterface;,
        Lcom/czhj/sdk/common/utils/PlayServicesUtil$AdvertisingConnection;,
        Lcom/czhj/sdk/common/utils/PlayServicesUtil$AdvertisingInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;)Lcom/czhj/sdk/common/utils/PlayServicesUtil$AdvertisingInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    const/4 p0, 0x0

    return-object p0
.end method
