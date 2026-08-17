.class public Lcom/meishu/sdk/core/webview/c;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:I

.field public final synthetic c:Lcom/meishu/sdk/core/webview/b;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/webview/b;ZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/c;->c:Lcom/meishu/sdk/core/webview/b;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/meishu/sdk/core/webview/c;->a:Z

    .line 4
    .line 5
    iput p3, p0, Lcom/meishu/sdk/core/webview/c;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/c;->c:Lcom/meishu/sdk/core/webview/b;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/meishu/sdk/core/webview/c;->a:Z

    .line 4
    .line 5
    iget v2, p0, Lcom/meishu/sdk/core/webview/c;->b:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/webview/b;->a(Lcom/meishu/sdk/core/webview/b;ZI)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
