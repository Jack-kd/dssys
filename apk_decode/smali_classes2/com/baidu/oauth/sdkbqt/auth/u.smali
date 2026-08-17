.class public Lcom/baidu/oauth/sdkbqt/auth/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/baidu/oauth/sdkbqt/auth/i;


# direct methods
.method public constructor <init>(Lcom/baidu/oauth/sdkbqt/auth/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/u;->b:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/u;->b:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/auth/i;->S(Lcom/baidu/oauth/sdkbqt/auth/i;)Lcom/baidu/oauth/sdkbqt/auth/i$f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/u;->b:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/app/Activity;

    .line 16
    .line 17
    invoke-static {v0}, Lo/g;->f(Landroid/app/Activity;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/u;->b:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/auth/i;->S(Lcom/baidu/oauth/sdkbqt/auth/i;)Lcom/baidu/oauth/sdkbqt/auth/i$f;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Lcom/baidu/oauth/sdkbqt/auth/i$f;->a()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
