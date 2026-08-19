.class public final Lkotlinx/coroutines/b0;
.super Lkotlinx/coroutines/x0;
.source "SourceFile"


# instance fields
.field public final f:Lkotlinx/coroutines/Z;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/x0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/b0;->f:Lkotlinx/coroutines/Z;

    .line 5
    .line 6
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
    .locals 0

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/b0;->f:Lkotlinx/coroutines/Z;

    .line 2
    .line 3
    invoke-interface {p1}, Lkotlinx/coroutines/Z;->dispose()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
