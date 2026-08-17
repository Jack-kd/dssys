.class public interface abstract Lcom/fl/saas/adx/oaid/com/asus/msa/SupplementaryDID/IDidAidlInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/oaid/com/asus/msa/SupplementaryDID/IDidAidlInterface$Stub;,
        Lcom/fl/saas/adx/oaid/com/asus/msa/SupplementaryDID/IDidAidlInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract getAAID()Ljava/lang/String;
.end method

.method public abstract getOAID()Ljava/lang/String;
.end method

.method public abstract getUDID()Ljava/lang/String;
.end method

.method public abstract getVAID()Ljava/lang/String;
.end method

.method public abstract isSupport()Z
.end method
