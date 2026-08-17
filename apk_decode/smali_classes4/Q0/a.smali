.class public final synthetic LQ0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/splash/l$a;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/v$i;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/splash/d;

.field public final synthetic c:Lcom/meishu/sdk/core/bquery/i;


# direct methods
.method public synthetic constructor <init>(Lcom/meishu/sdk/meishu_ad/v$i;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/core/bquery/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ0/a;->a:Lcom/meishu/sdk/meishu_ad/v$i;

    iput-object p2, p0, LQ0/a;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    iput-object p3, p0, LQ0/a;->c:Lcom/meishu/sdk/core/bquery/i;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, LQ0/a;->a:Lcom/meishu/sdk/meishu_ad/v$i;

    iget-object v1, p0, LQ0/a;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    iget-object v2, p0, LQ0/a;->c:Lcom/meishu/sdk/core/bquery/i;

    invoke-static {v0, v1, v2, p1}, Lcom/meishu/sdk/meishu_ad/v$i;->a(Lcom/meishu/sdk/meishu_ad/v$i;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/core/bquery/i;Z)V

    return-void
.end method
