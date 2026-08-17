.class Lcom/fl/saas/E$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/E;-><init>(Landroid/content/Context;Lcom/fl/saas/j;Lcom/fl/saas/E$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fl/saas/E;


# direct methods
.method public constructor <init>(Lcom/fl/saas/E;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/E$a;->a:Lcom/fl/saas/E;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
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
    const/16 v1, 0x3e9

    .line 7
    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 11
    .line 12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Ljava/lang/String;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/fl/saas/E$a;->a:Lcom/fl/saas/E;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/fl/saas/E;->a(Lcom/fl/saas/E;)Lcom/fl/saas/E$d;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/fl/saas/E$a;->a:Lcom/fl/saas/E;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/fl/saas/E;->a(Lcom/fl/saas/E;)Lcom/fl/saas/E$d;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1, v0}, Lcom/fl/saas/E$d;->onProgress(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v1, p0, Lcom/fl/saas/E$a;->a:Lcom/fl/saas/E;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/fl/saas/E;->b(Lcom/fl/saas/E;)Lcom/fl/saas/w;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, Lcom/fl/saas/E$a;->a:Lcom/fl/saas/E;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/fl/saas/E;->b(Lcom/fl/saas/E;)Lcom/fl/saas/w;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1, v0, p1}, Lcom/fl/saas/w;->a(ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    const/16 v1, 0x3ea

    .line 52
    .line 53
    if-ne v0, v1, :cond_2

    .line 54
    .line 55
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p1, Ljava/io/File;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/fl/saas/E$a;->a:Lcom/fl/saas/E;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/fl/saas/E;->a(Lcom/fl/saas/E;)Lcom/fl/saas/E$d;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    iget-object v0, p0, Lcom/fl/saas/E$a;->a:Lcom/fl/saas/E;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/fl/saas/E;->a(Lcom/fl/saas/E;)Lcom/fl/saas/E$d;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v0, p1}, Lcom/fl/saas/E$d;->onSuccess(Ljava/io/File;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    return-void
.end method
