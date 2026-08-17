.class public final Lkotlinx/coroutines/y0$e;
.super Lkotlinx/coroutines/x0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final f:Lkotlinx/coroutines/selects/i;

.field public final synthetic g:Lkotlinx/coroutines/y0;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/y0;Lkotlinx/coroutines/selects/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/y0$e;->g:Lkotlinx/coroutines/y0;

    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/x0;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/coroutines/y0$e;->f:Lkotlinx/coroutines/selects/i;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public u()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/y0$e;->f:Lkotlinx/coroutines/selects/i;

    .line 2
    .line 3
    iget-object v0, p0, Lkotlinx/coroutines/y0$e;->g:Lkotlinx/coroutines/y0;

    .line 4
    .line 5
    sget-object v1, Lkotlin/j;->a:Lkotlin/j;

    .line 6
    .line 7
    invoke-interface {p1, v0, v1}, Lkotlinx/coroutines/selects/i;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
