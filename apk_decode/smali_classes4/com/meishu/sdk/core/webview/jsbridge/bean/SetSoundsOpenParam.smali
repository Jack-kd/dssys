.class public Lcom/meishu/sdk/core/webview/jsbridge/bean/SetSoundsOpenParam;
.super Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private isOpen:I


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
.method public getIsOpen()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/SetSoundsOpenParam;->isOpen:I

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
