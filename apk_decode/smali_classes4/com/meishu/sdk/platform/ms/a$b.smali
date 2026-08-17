.class public Lcom/meishu/sdk/platform/ms/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/a0$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/a;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/n0;

.field public final synthetic c:Lcom/meishu/sdk/platform/ms/a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/a;Landroid/content/Context;Lcom/meishu/sdk/meishu_ad/n0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/a$b;->c:Lcom/meishu/sdk/platform/ms/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/a$b;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/platform/ms/a$b;->b:Lcom/meishu/sdk/meishu_ad/n0;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/a$b;->c:Lcom/meishu/sdk/platform/ms/a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/a;->f:Lcom/meishu/sdk/platform/ms/reward/a;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "\u89c6\u9891\u52a0\u8f7d\u5931\u8d25"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/meishu/sdk/platform/ms/reward/a;->onAdRenderFail(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public success()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/a$b;->c:Lcom/meishu/sdk/platform/ms/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/a$b;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/a$b;->b:Lcom/meishu/sdk/meishu_ad/n0;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/meishu/sdk/platform/ms/a;->a(Landroid/content/Context;Lcom/meishu/sdk/meishu_ad/n0;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
