.class public Lcom/meishu/sdk/core/webview/jsbridge/bean/OpenWebViewPageParam;
.super Lcom/meishu/sdk/core/webview/jsbridge/bean/UUIDParam;
.source "SourceFile"


# static fields
.field public static final USE_BROWSER:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private open_type:I

.field private url:Ljava/lang/String;


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
.method public getOpen_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/OpenWebViewPageParam;->open_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/jsbridge/bean/OpenWebViewPageParam;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
