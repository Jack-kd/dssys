.class public final synthetic Landroidx/core/content/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/M;

.field public final synthetic c:Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/M;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/content/b;->b:Lkotlinx/coroutines/M;

    iput-object p2, p0, Landroidx/core/content/b;->c:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/content/b;->b:Lkotlinx/coroutines/M;

    iget-object v1, p0, Landroidx/core/content/b;->c:Lkotlin/jvm/functions/Function3;

    check-cast p1, Landroid/content/BroadcastReceiver;

    check-cast p2, Landroid/content/Intent;

    invoke-static {v0, v1, p1, p2}, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;->f(Lkotlinx/coroutines/M;Lkotlin/jvm/functions/Function3;Landroid/content/BroadcastReceiver;Landroid/content/Intent;)Lkotlin/j;

    move-result-object p1

    return-object p1
.end method
