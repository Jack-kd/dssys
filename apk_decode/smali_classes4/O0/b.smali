.class public final synthetic LO0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/p0$a;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/webview/f;

.field public final synthetic b:[Z

.field public final synthetic c:Lcom/meishu/sdk/core/utils/m0;


# direct methods
.method public synthetic constructor <init>(Lcom/meishu/sdk/core/webview/f;[ZLcom/meishu/sdk/core/utils/m0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO0/b;->a:Lcom/meishu/sdk/core/webview/f;

    iput-object p2, p0, LO0/b;->b:[Z

    iput-object p3, p0, LO0/b;->c:Lcom/meishu/sdk/core/utils/m0;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, LO0/b;->a:Lcom/meishu/sdk/core/webview/f;

    iget-object v1, p0, LO0/b;->b:[Z

    iget-object v2, p0, LO0/b;->c:Lcom/meishu/sdk/core/utils/m0;

    invoke-static {v0, v1, v2, p1}, Lcom/meishu/sdk/core/webview/f;->b(Lcom/meishu/sdk/core/webview/f;[ZLcom/meishu/sdk/core/utils/m0;Z)V

    return-void
.end method
