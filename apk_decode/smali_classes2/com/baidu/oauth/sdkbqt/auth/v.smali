.class public Lcom/baidu/oauth/sdkbqt/auth/v;
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
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/auth/v;->b:Lcom/baidu/oauth/sdkbqt/auth/i;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/v;->b:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/auth/i;->M(Lcom/baidu/oauth/sdkbqt/auth/i;)Landroid/widget/ProgressBar;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/v;->b:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/auth/i;->M(Lcom/baidu/oauth/sdkbqt/auth/i;)Landroid/widget/ProgressBar;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/v;->b:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/auth/i;->T(Lcom/baidu/oauth/sdkbqt/auth/i;)Lcom/baidu/oauth/sdkbqt/auth/i$g;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/baidu/oauth/sdkbqt/auth/v;->b:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/baidu/oauth/sdkbqt/auth/i;->D(Lcom/baidu/oauth/sdkbqt/auth/i;)Lcom/baidu/oauth/sdkbqt/auth/i$h;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/baidu/oauth/sdkbqt/auth/i$h;->a(Lcom/baidu/oauth/sdkbqt/auth/i$h;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v0, Lcom/baidu/oauth/sdkbqt/auth/i$g;->a:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/v;->b:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/auth/i;->U(Lcom/baidu/oauth/sdkbqt/auth/i;)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/auth/v;->b:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/baidu/oauth/sdkbqt/auth/i;->U(Lcom/baidu/oauth/sdkbqt/auth/i;)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method
