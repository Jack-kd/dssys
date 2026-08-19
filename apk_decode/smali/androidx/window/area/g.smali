.class public final synthetic Landroidx/window/area/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/extensions/core/util/function/Consumer;


# instance fields
.field public final synthetic b:Landroidx/window/area/WindowAreaControllerImpl;

.field public final synthetic c:Lkotlinx/coroutines/channels/q;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/area/WindowAreaControllerImpl;Lkotlinx/coroutines/channels/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/area/g;->b:Landroidx/window/area/WindowAreaControllerImpl;

    iput-object p2, p0, Landroidx/window/area/g;->c:Lkotlinx/coroutines/channels/q;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/window/area/g;->b:Landroidx/window/area/WindowAreaControllerImpl;

    iget-object v1, p0, Landroidx/window/area/g;->c:Lkotlinx/coroutines/channels/q;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Landroidx/window/area/WindowAreaControllerImpl$windowAreaInfos$1;->g(Landroidx/window/area/WindowAreaControllerImpl;Lkotlinx/coroutines/channels/q;Ljava/lang/Integer;)V

    return-void
.end method
