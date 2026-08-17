.class Lcom/fl/saas/adx/oaid/impl/DefaultImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/oaid/IOAID;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doGet(Lcom/fl/saas/adx/oaid/IGetter;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/fl/saas/adx/oaid/OAIDException;

    const-string v1, "Unsupported"

    invoke-direct {v0, v1}, Lcom/fl/saas/adx/oaid/OAIDException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/fl/saas/adx/oaid/IGetter;->onOAIDGetError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public supported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
