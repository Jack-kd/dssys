.class public final synthetic LS0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/webview/b$b;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/splash/l;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/splash/l$a;


# direct methods
.method public synthetic constructor <init>(Lcom/meishu/sdk/meishu_ad/splash/l;Lcom/meishu/sdk/meishu_ad/splash/l$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS0/b;->a:Lcom/meishu/sdk/meishu_ad/splash/l;

    iput-object p2, p0, LS0/b;->b:Lcom/meishu/sdk/meishu_ad/splash/l$a;

    return-void
.end method


# virtual methods
.method public final a(ZI)V
    .locals 2

    .line 1
    iget-object v0, p0, LS0/b;->a:Lcom/meishu/sdk/meishu_ad/splash/l;

    iget-object v1, p0, LS0/b;->b:Lcom/meishu/sdk/meishu_ad/splash/l$a;

    invoke-static {v0, v1, p1, p2}, Lcom/meishu/sdk/meishu_ad/splash/l;->a(Lcom/meishu/sdk/meishu_ad/splash/l;Lcom/meishu/sdk/meishu_ad/splash/l$a;ZI)V

    return-void
.end method
