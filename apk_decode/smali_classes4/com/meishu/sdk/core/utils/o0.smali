.class public Lcom/meishu/sdk/core/utils/o0;
.super Lcom/meishu/sdk/core/service/a;
.source "SourceFile"


# instance fields
.field public final synthetic a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/utils/o0;->a:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/service/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onActivityPause(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResume(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/meishu/sdk/core/utils/o0;->a:Z

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/p0;->a(Z)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/meishu/sdk/core/service/d;->b(Lcom/meishu/sdk/core/service/e;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onAppStateUpdate(Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
