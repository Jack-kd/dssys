.class public final Landroidx/window/java/embedding/SplitControllerCallbackAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/window/core/ExperimentalWindowApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0008J1\u0010\u0012\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b2\u0012\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0\r\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0014\u001a\u00020\u00112\u0012\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0\r\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0016R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/window/java/embedding/SplitControllerCallbackAdapter;",
        "",
        "Landroidx/window/embedding/SplitController;",
        "controller",
        "Landroidx/window/java/core/CallbackToFlowAdapter;",
        "callbackToFlowAdapter",
        "<init>",
        "(Landroidx/window/embedding/SplitController;Landroidx/window/java/core/CallbackToFlowAdapter;)V",
        "(Landroidx/window/embedding/SplitController;)V",
        "Landroid/app/Activity;",
        "activity",
        "Ljava/util/concurrent/Executor;",
        "executor",
        "Landroidx/core/util/Consumer;",
        "",
        "Landroidx/window/embedding/SplitInfo;",
        "consumer",
        "Lkotlin/j;",
        "addSplitListener",
        "(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V",
        "removeSplitListener",
        "(Landroidx/core/util/Consumer;)V",
        "Landroidx/window/embedding/SplitController;",
        "Landroidx/window/java/core/CallbackToFlowAdapter;",
        "window-java_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final callbackToFlowAdapter:Landroidx/window/java/core/CallbackToFlowAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controller:Landroidx/window/embedding/SplitController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/window/embedding/SplitController;)V
    .locals 1
    .param p1    # Landroidx/window/embedding/SplitController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroidx/window/java/core/CallbackToFlowAdapter;

    invoke-direct {v0}, Landroidx/window/java/core/CallbackToFlowAdapter;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/window/java/embedding/SplitControllerCallbackAdapter;-><init>(Landroidx/window/embedding/SplitController;Landroidx/window/java/core/CallbackToFlowAdapter;)V

    return-void
.end method

.method private constructor <init>(Landroidx/window/embedding/SplitController;Landroidx/window/java/core/CallbackToFlowAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/window/java/embedding/SplitControllerCallbackAdapter;->controller:Landroidx/window/embedding/SplitController;

    .line 3
    iput-object p2, p0, Landroidx/window/java/embedding/SplitControllerCallbackAdapter;->callbackToFlowAdapter:Landroidx/window/java/core/CallbackToFlowAdapter;

    return-void
.end method


# virtual methods
.method public final addSplitListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/core/util/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Ljava/util/List<",
            "Landroidx/window/embedding/SplitInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "executor"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "consumer"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/window/java/embedding/SplitControllerCallbackAdapter;->callbackToFlowAdapter:Landroidx/window/java/core/CallbackToFlowAdapter;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/window/java/embedding/SplitControllerCallbackAdapter;->controller:Landroidx/window/embedding/SplitController;

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Landroidx/window/embedding/SplitController;->splitInfoList(Landroid/app/Activity;)Lkotlinx/coroutines/flow/c;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p2, p3, p1}, Landroidx/window/java/core/CallbackToFlowAdapter;->connect(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;Lkotlinx/coroutines/flow/c;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final removeSplitListener(Landroidx/core/util/Consumer;)V
    .locals 1
    .param p1    # Landroidx/core/util/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Ljava/util/List<",
            "Landroidx/window/embedding/SplitInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "consumer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/window/java/embedding/SplitControllerCallbackAdapter;->callbackToFlowAdapter:Landroidx/window/java/core/CallbackToFlowAdapter;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/window/java/core/CallbackToFlowAdapter;->disconnect(Landroidx/core/util/Consumer;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
