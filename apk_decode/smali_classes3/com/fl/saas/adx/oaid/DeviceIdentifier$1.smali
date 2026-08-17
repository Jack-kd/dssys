.class Lcom/fl/saas/adx/oaid/DeviceIdentifier$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/oaid/IGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/oaid/DeviceIdentifier;->getOAID(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOAIDGetComplete(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->access$002(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onOAIDGetError(Ljava/lang/Throwable;)V
    .locals 0

    const-string p1, ""

    invoke-static {p1}, Lcom/fl/saas/adx/oaid/DeviceIdentifier;->access$002(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
