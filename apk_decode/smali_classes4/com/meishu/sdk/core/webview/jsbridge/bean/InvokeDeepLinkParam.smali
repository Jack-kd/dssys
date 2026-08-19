.class public Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;
.super Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private callbackFunc:Ljava/lang/String;

.field private deep_link:Ljava/lang/String;

.field private down_x:I

.field private down_y:I

.field private msec:J

.field private up_x:I

.field private up_y:I


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
.method public getCallbackFunc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;->callbackFunc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeep_link()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;->deep_link:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDown_x()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;->down_x:I

    .line 2
    .line 3
    return v0
.end method

.method public getDown_y()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;->down_y:I

    .line 2
    .line 3
    return v0
.end method

.method public getMsec()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;->msec:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getUp_x()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;->up_x:I

    .line 2
    .line 3
    return v0
.end method

.method public getUp_y()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;->up_y:I

    .line 2
    .line 3
    return v0
.end method
