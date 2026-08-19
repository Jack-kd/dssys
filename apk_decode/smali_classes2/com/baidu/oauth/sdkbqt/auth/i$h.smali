.class public Lcom/baidu/oauth/sdkbqt/auth/i$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/oauth/sdkbqt/auth/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public final synthetic c:Lcom/baidu/oauth/sdkbqt/auth/i;


# direct methods
.method public constructor <init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/i$h;->c:Lcom/baidu/oauth/sdkbqt/auth/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/oauth/sdkbqt/auth/i;Lcom/baidu/oauth/sdkbqt/auth/n;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/baidu/oauth/sdkbqt/auth/i$h;-><init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V

    return-void
.end method

.method public static synthetic a(Lcom/baidu/oauth/sdkbqt/auth/i$h;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/oauth/sdkbqt/auth/i$h;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/i$h;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i$h;->c:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x64

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/os/Message;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput v1, v0, Landroid/os/Message;->what:I

    .line 18
    .line 19
    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/auth/i$h;->b:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/auth/i$h;->c:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/baidu/oauth/sdkbqt/auth/i;->p(Lcom/baidu/oauth/sdkbqt/auth/i;)Landroid/os/Handler;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/i$h;->c:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/auth/i;->p(Lcom/baidu/oauth/sdkbqt/auth/i;)Landroid/os/Handler;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method
