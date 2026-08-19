.class public Lcom/meishu/sdk/core/utils/f$b;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/utils/f;->b(Lcom/meishu/sdk/platform/ms/c;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/reflect/Method;

.field public final synthetic b:Lcom/meishu/sdk/platform/ms/c;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Lcom/meishu/sdk/platform/ms/c;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/f$b;->a:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/utils/f$b;->b:Lcom/meishu/sdk/platform/ms/c;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/meishu/sdk/core/utils/f$b;->c:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/f$b;->a:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/f$b;->b:Lcom/meishu/sdk/platform/ms/c;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/IAd;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/f$b;->a:Ljava/lang/reflect/Method;

    .line 14
    .line 15
    iget-boolean v2, p0, Lcom/meishu/sdk/core/utils/f$b;->c:Z

    .line 16
    .line 17
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    :catchall_0
    return-void
.end method
