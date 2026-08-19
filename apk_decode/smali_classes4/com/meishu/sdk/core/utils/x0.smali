.class public Lcom/meishu/sdk/core/utils/x0;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/meishu/sdk/core/ad/AdType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meishu/sdk/core/ad/AdType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/x0;->a:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/utils/x0;->b:Lcom/meishu/sdk/core/ad/AdType;

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
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/x0;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/x0;->b:Lcom/meishu/sdk/core/ad/AdType;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/y0;->a(Landroid/content/Context;Lcom/meishu/sdk/core/ad/AdType;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
