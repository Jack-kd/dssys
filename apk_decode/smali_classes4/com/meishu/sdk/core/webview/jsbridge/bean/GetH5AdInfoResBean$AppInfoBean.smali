.class public Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfoBean"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private app_intro:Ljava/lang/String;

.field private app_intro_url:Ljava/lang/String;

.field private app_name:Ljava/lang/String;

.field private app_permission:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/domain/MeishuAdInfo$PermissionBean;",
            ">;"
        }
    .end annotation
.end field

.field private app_permission_url:Ljava/lang/String;

.field private app_size:Ljava/lang/String;

.field private app_ver:Ljava/lang/String;

.field private developer:Ljava/lang/String;

.field private package_name:Ljava/lang/String;

.field private privacy_agreement:Ljava/lang/String;


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

.method public static synthetic access$002(Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;->app_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$102(Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;->app_intro:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$202(Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;->app_intro_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$302(Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;->app_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$402(Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;->app_size:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$502(Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;->app_permission:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$602(Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;->app_permission_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$702(Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;->privacy_agreement:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$802(Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;->developer:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$902(Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;->package_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method
