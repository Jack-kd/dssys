.class public Lcom/meishu/sdk/core/utils/d$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/utils/d;->a(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/meishu/sdk/core/utils/d;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/d;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/d$a;->b:Lcom/meishu/sdk/core/utils/d;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/meishu/sdk/core/utils/d$a;->a:Z

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/d$a;->b:Lcom/meishu/sdk/core/utils/d;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/meishu/sdk/core/utils/d$a;->a:Z

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/d;->a(Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/d$a;->b:Lcom/meishu/sdk/core/utils/d;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/meishu/sdk/core/utils/d;->c:Lcom/meishu/sdk/core/utils/PackageBean;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/r0;->a(Landroid/content/Context;Lcom/meishu/sdk/core/utils/PackageBean;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
