.class public Lcom/fl/saas/adx/base/manager/AdPersonalizedManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateAdPersonalizedConfig(Z)V
    .locals 0

    sput-boolean p0, Lcom/fl/saas/adx/util/DeviceUtil;->personalizedState:Z

    return-void
.end method
