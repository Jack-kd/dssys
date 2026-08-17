.class public interface abstract Lkotlinx/coroutines/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/i$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/u0$a;,
        Lkotlinx/coroutines/u0$b;
    }
.end annotation


# static fields
.field public static final T2:Lkotlinx/coroutines/u0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/u0$b;->b:Lkotlinx/coroutines/u0$b;

    sput-object v0, Lkotlinx/coroutines/u0;->T2:Lkotlinx/coroutines/u0$b;

    return-void
.end method


# virtual methods
.method public abstract A(Lkotlin/coroutines/e;)Ljava/lang/Object;
.end method

.method public abstract a(Ljava/util/concurrent/CancellationException;)V
.end method

.method public abstract e(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Z;
.end method

.method public abstract isActive()Z
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract isCompleted()Z
.end method

.method public abstract s(Lkotlinx/coroutines/u;)Lkotlinx/coroutines/s;
.end method

.method public abstract start()Z
.end method

.method public abstract u(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Z;
.end method

.method public abstract z()Ljava/util/concurrent/CancellationException;
.end method
