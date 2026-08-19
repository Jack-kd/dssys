.class public Lcom/fl/saas/F0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Landroid/content/Context;


# instance fields
.field a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/fl/saas/S;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/fl/saas/F0;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/F0$a;

    invoke-direct {v1, p0, v0, p1}, Lcom/fl/saas/F0$a;-><init>(Lcom/fl/saas/F0;Landroid/os/Looper;Lcom/fl/saas/S;)V

    iput-object v1, p0, Lcom/fl/saas/F0;->a:Landroid/os/Handler;

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/fl/saas/T;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/fl/saas/F0;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/F0$b;

    invoke-direct {v1, p0, v0, p1}, Lcom/fl/saas/F0$b;-><init>(Lcom/fl/saas/F0;Landroid/os/Looper;Lcom/fl/saas/T;)V

    iput-object v1, p0, Lcom/fl/saas/F0;->a:Landroid/os/Handler;

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .line 3
    sput-object p0, Lcom/fl/saas/F0;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/fl/saas/F0;->a:Landroid/os/Handler;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0x12e

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/fl/saas/F0;->a:Landroid/os/Handler;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, v0, Landroid/os/Message;->what:I

    .line 9
    .line 10
    iget-object p1, p0, Lcom/fl/saas/F0;->a:Landroid/os/Handler;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
