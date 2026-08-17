.class public Lcom/meishu/sdk/core/webview/jsbridge/bean/EventUrlReportParam;
.super Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private error_code:I

.field private error_mesg:Ljava/lang/String;

.field private event_id:I


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
.method public getError_code()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/EventUrlReportParam;->error_code:I

    .line 2
    .line 3
    return v0
.end method

.method public getError_mesg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/EventUrlReportParam;->error_mesg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEvent_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/EventUrlReportParam;->event_id:I

    .line 2
    .line 3
    return v0
.end method
