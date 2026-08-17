.class public Lcom/meishu/sdk/core/view/NoNavigationDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# instance fields
.field private window:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/meishu/sdk/core/view/NoNavigationDialog;->window:Landroid/view/Window;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private clearFocusNotAle(Landroid/view/Window;)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private focusNotAle(Landroid/view/Window;)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public hideNavigationBar(Landroid/view/Window;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/meishu/sdk/core/view/NoNavigationDialog$1;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Lcom/meishu/sdk/core/view/NoNavigationDialog$1;-><init>(Lcom/meishu/sdk/core/view/NoNavigationDialog;Landroid/view/Window;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/NoNavigationDialog;->window:Landroid/view/Window;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/meishu/sdk/core/view/NoNavigationDialog;->focusNotAle(Landroid/view/Window;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/core/view/NoNavigationDialog;->window:Landroid/view/Window;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/meishu/sdk/core/view/NoNavigationDialog;->hideNavigationBar(Landroid/view/Window;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/meishu/sdk/core/view/NoNavigationDialog;->window:Landroid/view/Window;

    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/meishu/sdk/core/view/NoNavigationDialog;->clearFocusNotAle(Landroid/view/Window;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
