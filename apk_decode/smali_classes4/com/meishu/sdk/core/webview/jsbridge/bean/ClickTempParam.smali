.class public Lcom/meishu/sdk/core/webview/jsbridge/bean/ClickTempParam;
.super Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private act_type:I

.field private down_x:F

.field private down_y:F

.field private msec:J

.field private open_browser:I

.field private up_msec:J

.field private up_x:F

.field private up_y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getAct_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/ClickTempParam;->act_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getDown_x()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/ClickTempParam;->down_x:F

    .line 2
    .line 3
    return v0
.end method

.method public getDown_y()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/ClickTempParam;->down_y:F

    .line 2
    .line 3
    return v0
.end method

.method public getMsec()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/ClickTempParam;->msec:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getOpen_browser()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/ClickTempParam;->open_browser:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public getUp_msec()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/ClickTempParam;->up_msec:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getUp_x()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/ClickTempParam;->up_x:F

    .line 2
    .line 3
    return v0
.end method

.method public getUp_y()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/ClickTempParam;->up_y:F

    .line 2
    .line 3
    return v0
.end method
