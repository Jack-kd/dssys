.class Lcom/meishu/sdk/core/view/NoNavigationDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/view/NoNavigationDialog;->hideNavigationBar(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/core/view/NoNavigationDialog;

.field public final synthetic val$window:Landroid/view/Window;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/view/NoNavigationDialog;Landroid/view/Window;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/NoNavigationDialog$1;->this$0:Lcom/meishu/sdk/core/view/NoNavigationDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/view/NoNavigationDialog$1;->val$window:Landroid/view/Window;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/core/view/NoNavigationDialog$1;->val$window:Landroid/view/Window;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/16 v0, 0x1706

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
