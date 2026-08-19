.class public final synthetic Landroidx/window/embedding/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/channels/q;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/channels/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/o;->b:Lkotlinx/coroutines/channels/q;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/window/embedding/o;->b:Lkotlinx/coroutines/channels/q;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Landroidx/window/embedding/SplitController$splitInfoList$1;->f(Lkotlinx/coroutines/channels/q;Ljava/util/List;)V

    return-void
.end method
