.class public Lcom/fl/saas/adx/base/widget/WinAdInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private adUserName:Ljava/lang/String;

.field private posId:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/WinAdInfo;->adUserName:Ljava/lang/String;

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/WinAdInfo;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/WinAdInfo;->posId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/WinAdInfo;->adUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getPosId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/WinAdInfo;->posId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/WinAdInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAdUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/WinAdInfo;->adUserName:Ljava/lang/String;

    return-void
.end method

.method public setPosId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/WinAdInfo;->posId:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/WinAdInfo;->title:Ljava/lang/String;

    return-void
.end method
