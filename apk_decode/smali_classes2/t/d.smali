.class public Lt/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/baidu/oauth/sdkbqt/view/a;


# direct methods
.method public constructor <init>(Lcom/baidu/oauth/sdkbqt/view/a;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt/d;->c:Lcom/baidu/oauth/sdkbqt/view/a;

    .line 2
    .line 3
    iput-object p2, p0, Lt/d;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lt/d;->c:Lcom/baidu/oauth/sdkbqt/view/a;

    .line 2
    .line 3
    new-instance v0, Lt/e;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lt/e;-><init>(Lt/d;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
