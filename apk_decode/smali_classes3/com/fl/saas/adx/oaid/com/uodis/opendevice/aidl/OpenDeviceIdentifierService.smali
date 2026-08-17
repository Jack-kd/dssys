.class public interface abstract Lcom/fl/saas/adx/oaid/com/uodis/opendevice/aidl/OpenDeviceIdentifierService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/oaid/com/uodis/opendevice/aidl/OpenDeviceIdentifierService$Stub;,
        Lcom/fl/saas/adx/oaid/com/uodis/opendevice/aidl/OpenDeviceIdentifierService$Default;
    }
.end annotation


# virtual methods
.method public abstract getOaid()Ljava/lang/String;
.end method

.method public abstract isOaidTrackLimited()Z
.end method
