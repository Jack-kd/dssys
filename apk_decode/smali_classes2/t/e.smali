.class public Lt/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lt/d;


# direct methods
.method public constructor <init>(Lt/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt/e;->b:Lt/d;

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
    iget-object v0, p0, Lt/e;->b:Lt/d;

    .line 2
    .line 3
    iget-object v0, v0, Lt/d;->b:Landroid/view/View;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lt/e;->b:Lt/d;

    .line 10
    .line 11
    iget-object v0, v0, Lt/d;->c:Lcom/baidu/oauth/sdkbqt/view/a;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/baidu/oauth/sdkbqt/view/a;->d:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/baidu/oauth/sdkbqt/auth/i;->reload()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
