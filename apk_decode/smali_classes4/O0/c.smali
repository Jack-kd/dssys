.class public final synthetic LO0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/webview/b$b;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/c;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/meishu/sdk/platform/ms/c;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO0/c;->a:Lcom/meishu/sdk/platform/ms/c;

    iput-boolean p2, p0, LO0/c;->b:Z

    return-void
.end method


# virtual methods
.method public final a(ZI)V
    .locals 2

    .line 1
    iget-object v0, p0, LO0/c;->a:Lcom/meishu/sdk/platform/ms/c;

    iget-boolean v1, p0, LO0/c;->b:Z

    invoke-static {v0, v1, p1, p2}, Lcom/meishu/sdk/core/webview/o;->a(Lcom/meishu/sdk/platform/ms/c;ZZI)V

    return-void
.end method
