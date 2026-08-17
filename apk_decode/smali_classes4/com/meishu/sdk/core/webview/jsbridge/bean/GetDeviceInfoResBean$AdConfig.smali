.class public Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean$AdConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdConfig"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private padding_bottom:I

.field private padding_left:I

.field private padding_right:I


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

.method public static synthetic access$002(Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean$AdConfig;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean$AdConfig;->padding_left:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$102(Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean$AdConfig;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean$AdConfig;->padding_right:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$202(Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean$AdConfig;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean$AdConfig;->padding_bottom:I

    .line 2
    .line 3
    return p1
.end method
