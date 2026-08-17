.class public Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/loader/serverbidding/IS2SBInterface;


# instance fields
.field private app_id:Ljava/lang/String;

.field private buyer_id:Ljava/lang/String;

.field private opensdk_ver:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private sdk:Ljava/lang/String;

.field private sdk_info:Ljava/lang/String;

.field private support_h265:Z

.field private support_splash_zoomout:Z

.field private wx_installed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getApp_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;->app_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBuyer_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;->buyer_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOpensdk_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;->opensdk_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;->pid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSdk()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;->sdk:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSdk_info()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;->sdk_info:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isSupport_h265()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;->support_h265:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSupport_splash_zoomout()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;->support_splash_zoomout:Z

    .line 2
    .line 3
    return v0
.end method

.method public isWx_installed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;->wx_installed:Z

    .line 2
    .line 3
    return v0
.end method

.method public setApp_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;->app_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBuyer_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;->buyer_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOpensdk_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;->opensdk_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;->pid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSdk(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;->sdk:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSdk_info(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;->sdk_info:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSupport_h265(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;->support_h265:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSupport_splash_zoomout(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;->support_splash_zoomout:Z

    .line 2
    .line 3
    return-void
.end method

.method public setWx_installed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/loader/serverbidding/GDTS2sbBean;->wx_installed:Z

    .line 2
    .line 3
    return-void
.end method
