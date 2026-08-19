.class public interface abstract Lcom/fl/saas/adx/oaid/com/android/creator/IdsSupplier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/oaid/com/android/creator/IdsSupplier$Stub;,
        Lcom/fl/saas/adx/oaid/com/android/creator/IdsSupplier$Default;
    }
.end annotation


# virtual methods
.method public abstract getAAID(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getOAID()Ljava/lang/String;
.end method

.method public abstract getUDID(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getVAID()Ljava/lang/String;
.end method

.method public abstract isSupported()Z
.end method
