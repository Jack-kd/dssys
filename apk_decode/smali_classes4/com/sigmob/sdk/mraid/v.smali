.class public Lcom/sigmob/sdk/mraid/v;
.super Lcom/sigmob/sdk/base/views/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/mraid/v$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x1


# instance fields
.field private b:Lcom/sigmob/sdk/mraid/v$a;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/g;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private setMraidViewable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/v;->c:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid/v;->c:Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/v;->b:Lcom/sigmob/sdk/mraid/v$a;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-interface {v0, p1}, Lcom/sigmob/sdk/mraid/v$a;->onVisibilityChanged(Z)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-super {p0}, Lcom/sigmob/sdk/base/views/g;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/mraid/v;->b:Lcom/sigmob/sdk/mraid/v$a;

    return-void
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/v;->c:Z

    return v0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid/v;->setMraidViewable(Z)V

    return-void
.end method

.method public setVisibilityChangedListener(Lcom/sigmob/sdk/mraid/v$a;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/v;->b:Lcom/sigmob/sdk/mraid/v$a;

    return-void
.end method
