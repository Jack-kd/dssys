.class public final synthetic Landroidx/core/os/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Landroid/os/ProfilingManager;

.field public final synthetic c:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Landroid/os/ProfilingManager;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/os/l;->b:Landroid/os/ProfilingManager;

    iput-object p2, p0, Landroidx/core/os/l;->c:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/os/l;->b:Landroid/os/ProfilingManager;

    iget-object v1, p0, Landroidx/core/os/l;->c:Ljava/util/function/Consumer;

    invoke-static {v0, v1}, Landroidx/core/os/Profiling$registerForAllProfilingResults$1;->h(Landroid/os/ProfilingManager;Ljava/util/function/Consumer;)Lkotlin/j;

    move-result-object v0

    return-object v0
.end method
