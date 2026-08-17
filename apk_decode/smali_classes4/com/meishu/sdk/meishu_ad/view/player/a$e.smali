.class public Lcom/meishu/sdk/meishu_ad/view/player/a$e;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/view/player/a;->safeRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/view/player/a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/view/player/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$e;->a:Lcom/meishu/sdk/meishu_ad/view/player/a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/player/a$e;->a:Lcom/meishu/sdk/meishu_ad/view/player/a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/view/player/a;->d:Lcom/meishu/sdk/meishu_ad/view/player/c$a;

    .line 4
    .line 5
    check-cast v0, Lcom/meishu/sdk/core/bquery/b;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/core/bquery/b;->a()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
