.class public interface abstract Lcom/czhj/devicehelper/cnoaid/com/google/android/gms/ads/identifier/internal/IAdvertisingIdService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/czhj/devicehelper/cnoaid/com/google/android/gms/ads/identifier/internal/IAdvertisingIdService$Stub;,
        Lcom/czhj/devicehelper/cnoaid/com/google/android/gms/ads/identifier/internal/IAdvertisingIdService$Default;
    }
.end annotation


# virtual methods
.method public abstract getId()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isLimitAdTrackingEnabled(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
