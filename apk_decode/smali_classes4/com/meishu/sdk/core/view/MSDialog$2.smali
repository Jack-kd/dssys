.class Lcom/meishu/sdk/core/view/MSDialog$2;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/view/MSDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/core/view/MSDialog;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/view/MSDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/MSDialog$2;->this$0:Lcom/meishu/sdk/core/view/MSDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/o;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeOnClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/safe/o;->safeOnClick(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/core/view/MSDialog$2;->this$0:Lcom/meishu/sdk/core/view/MSDialog;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/core/view/MSDialog$2;->this$0:Lcom/meishu/sdk/core/view/MSDialog;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/core/view/MSDialog;->access$100(Lcom/meishu/sdk/core/view/MSDialog;)Landroid/view/View$OnClickListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/core/view/MSDialog$2;->this$0:Lcom/meishu/sdk/core/view/MSDialog;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/meishu/sdk/core/view/MSDialog;->access$100(Lcom/meishu/sdk/core/view/MSDialog;)Landroid/view/View$OnClickListener;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
