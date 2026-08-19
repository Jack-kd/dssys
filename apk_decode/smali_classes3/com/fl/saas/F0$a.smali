.class Lcom/fl/saas/F0$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/F0;-><init>(Lcom/fl/saas/S;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fl/saas/S;

.field final synthetic b:Lcom/fl/saas/F0;


# direct methods
.method public constructor <init>(Lcom/fl/saas/F0;Landroid/os/Looper;Lcom/fl/saas/S;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/F0$a;->b:Lcom/fl/saas/F0;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/fl/saas/F0$a;->a:Lcom/fl/saas/S;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/fl/saas/F0$a;->a:Lcom/fl/saas/S;

    .line 9
    .line 10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, [B

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lcom/fl/saas/S;->onSuccess([B)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v1, 0x1

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/fl/saas/F0$a;->a:Lcom/fl/saas/S;

    .line 22
    .line 23
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Ljava/lang/Exception;

    .line 26
    .line 27
    invoke-interface {v0, p1}, Lcom/fl/saas/S;->onError(Ljava/lang/Exception;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method
