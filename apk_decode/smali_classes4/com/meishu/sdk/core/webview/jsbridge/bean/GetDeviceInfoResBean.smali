.class public Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean$AdConfig;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private ad_config:Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean$AdConfig;

.field private shakable:I

.field private top_bar_height:I

.field private twistable:I


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

.method public static make(IZZLcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean$AdConfig;)Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean;
    .locals 1

    .line 1
    new-instance v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p0, v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean;->top_bar_height:I

    .line 7
    .line 8
    iput-object p3, v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean;->ad_config:Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean$AdConfig;

    .line 9
    .line 10
    iput p1, v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean;->shakable:I

    .line 11
    .line 12
    iput p2, v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean;->twistable:I

    .line 13
    .line 14
    return-object v0
.end method

.method public static makeAdConfig(III)Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean$AdConfig;
    .locals 1

    .line 1
    new-instance v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean$AdConfig;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean$AdConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p0}, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean$AdConfig;->access$002(Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean$AdConfig;I)I

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean$AdConfig;->access$102(Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean$AdConfig;I)I

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p2}, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean$AdConfig;->access$202(Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean$AdConfig;I)I

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
