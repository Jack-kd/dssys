.class public Lcom/meishu/sdk/core/webview/jsbridge/bean/H5NotifyErrorParam;
.super Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private code:I

.field private message:Ljava/lang/String;


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
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/H5NotifyErrorParam;->code:I

    .line 2
    .line 3
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/H5NotifyErrorParam;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
