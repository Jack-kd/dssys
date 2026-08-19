.class public Lcom/meishu/sdk/platform/ms/recycler/i$e$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/recycler/i$e;->safeRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/recycler/i$e;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/i$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$e$a;->a:Lcom/meishu/sdk/platform/ms/recycler/i$e;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$e$a;->a:Lcom/meishu/sdk/platform/ms/recycler/i$e;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/i$e;->c:Lcom/meishu/sdk/core/view/ShakeImageView;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/view/ShakeImageView;->stopAnimation()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/i$e$a;->a:Lcom/meishu/sdk/platform/ms/recycler/i$e;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/i$e;->b:Landroid/widget/RelativeLayout;

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
